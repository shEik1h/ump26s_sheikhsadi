// Rolling-window buffer + session FSM.
//  - Session FSM: S_IDLE (no session) / S_ACTIVE (window running).
//  - elapsed time accumulates time_delta; when it exceeds window_size (or no
//    session exists) a new window starts (session timeout / reset of state).
//  - Keeps the last 4 (amount, category) records for the rapid-repeat check.
module window_buf #(
    parameter AMT_W = 16,
    parameter CAT_W = 8,
    parameter DT_W  = 12,
    parameter RAPID_DT = 8          // time-delta below this = "rapid"
) (
    input  wire             clk,
    input  wire             rst_n,
    input  wire             v,
    input  wire [AMT_W-1:0] amount,
    input  wire [CAT_W-1:0] cat,
    input  wire [DT_W-1:0]  dt,
    input  wire [DT_W-1:0]  window_size,
    output wire             new_win,   // this record starts a new window
    output wire             rapid_rep  // rapid repeat of a recent record
);
    localparam S_IDLE = 1'b0, S_ACTIVE = 1'b1;
    reg state;
    reg [DT_W-1:0] elapsed;

    reg [AMT_W-1:0] h_amt0, h_amt1, h_amt2, h_amt3;
    reg [CAT_W-1:0] h_cat0, h_cat1, h_cat2, h_cat3;
    reg [3:0]       h_val;

    wire [DT_W:0] elapsed_sum = {1'b0, elapsed} + {1'b0, dt};
    wire expired = (state == S_IDLE) || (elapsed_sum > {1'b0, window_size});
    assign new_win = v && expired;

    wire m0 = h_val[0] && (h_amt0 == amount) && (h_cat0 == cat);
    wire m1 = h_val[1] && (h_amt1 == amount) && (h_cat1 == cat);
    wire m2 = h_val[2] && (h_amt2 == amount) && (h_cat2 == cat);
    wire m3 = h_val[3] && (h_amt3 == amount) && (h_cat3 == cat);
    assign rapid_rep = v && !expired && (dt < RAPID_DT) && (m0 | m1 | m2 | m3);

    always @(posedge clk) begin
        if (!rst_n) begin
            state   <= S_IDLE;
            elapsed <= {DT_W{1'b0}};
            h_val   <= 4'b0000;
            h_amt0 <= 0; h_amt1 <= 0; h_amt2 <= 0; h_amt3 <= 0;
            h_cat0 <= 0; h_cat1 <= 0; h_cat2 <= 0; h_cat3 <= 0;
        end else if (v) begin
            state <= S_ACTIVE;
            // shift history
            h_amt3 <= h_amt2; h_amt2 <= h_amt1; h_amt1 <= h_amt0; h_amt0 <= amount;
            h_cat3 <= h_cat2; h_cat2 <= h_cat1; h_cat1 <= h_cat0; h_cat0 <= cat;
            if (expired) begin
                elapsed <= {DT_W{1'b0}};
                h_val   <= 4'b0001;
            end else begin
                elapsed <= elapsed_sum[DT_W-1:0];
                h_val   <= {h_val[2:0], 1'b1};
            end
        end
    end
endmodule
