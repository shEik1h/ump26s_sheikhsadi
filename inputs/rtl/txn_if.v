// Transaction input interface: registers one record per cycle when valid_in is high.
module txn_if #(
    parameter AMT_W = 16,
    parameter CAT_W = 8,
    parameter DT_W  = 12
) (
    input  wire             clk,
    input  wire             rst_n,
    input  wire             valid_in,
    input  wire [AMT_W-1:0] amount_in,
    input  wire [CAT_W-1:0] cat_in,
    input  wire [DT_W-1:0]  dt_in,
    output reg              v_q,
    output reg  [AMT_W-1:0] amount_q,
    output reg  [CAT_W-1:0] cat_q,
    output reg  [DT_W-1:0]  dt_q
);
    always @(posedge clk) begin
        if (!rst_n) begin
            v_q      <= 1'b0;
            amount_q <= {AMT_W{1'b0}};
            cat_q    <= {CAT_W{1'b0}};
            dt_q     <= {DT_W{1'b0}};
        end else begin
            v_q <= valid_in;
            if (valid_in) begin
                amount_q <= amount_in;
                cat_q    <= cat_in;
                dt_q     <= dt_in;
            end
        end
    end
endmodule
