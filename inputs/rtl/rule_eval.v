// Rule evaluation + decision output (2 pipeline stages).
//  Stage A: four fraud-rule flags.   Stage B: risk score + 3-way decision.
//  decision: 2'b00 approve, 2'b01 flag for review, 2'b11 decline.
module rule_eval #(
    parameter AMT_W   = 16,
    parameter SPEND_W = 24,
    parameter CNT_W   = 8,
    parameter [7:0] W_OVER  = 8'd100,
    parameter [7:0] W_VEL   = 8'd60,
    parameter [7:0] W_RAPID = 8'd40,
    parameter [7:0] W_ANOM  = 8'd50,
    parameter [7:0] FLAG_THR = 8'd40,
    parameter [7:0] DECL_THR = 8'd100
) (
    input  wire               clk,
    input  wire               rst_n,
    input  wire               v,
    input  wire [AMT_W-1:0]   amount,
    input  wire [SPEND_W-1:0] spend_next,
    input  wire [CNT_W-1:0]   count_next,
    input  wire               rapid_rep,
    input  wire [SPEND_W-1:0] spend_limit,
    input  wire [CNT_W-1:0]   count_limit,
    input  wire [AMT_W-1:0]   anomaly_thr,
    output reg  [1:0]         decision,
    output reg  [7:0]         risk_score,
    output reg                valid_out
);
    // Stage A
    reg a_v, f_over, f_vel, f_rapid, f_anom;
    always @(posedge clk) begin
        if (!rst_n) begin
            a_v <= 1'b0; f_over <= 1'b0; f_vel <= 1'b0; f_rapid <= 1'b0; f_anom <= 1'b0;
        end else begin
            a_v     <= v;
            f_over  <= v && (spend_next > spend_limit);
            f_vel   <= v && (count_next > count_limit);
            f_rapid <= v && rapid_rep;
            f_anom  <= v && (amount > anomaly_thr);
        end
    end

    // Stage B
    wire [9:0] raw = (f_over  ? {2'b0, W_OVER}  : 10'd0)
                   + (f_vel   ? {2'b0, W_VEL}   : 10'd0)
                   + (f_rapid ? {2'b0, W_RAPID} : 10'd0)
                   + (f_anom  ? {2'b0, W_ANOM}  : 10'd0);
    wire [7:0] score = (raw > 10'd255) ? 8'd255 : raw[7:0];
    wire [1:0] dec   = (score >= DECL_THR) ? 2'b11 :
                       (score >= FLAG_THR) ? 2'b01 : 2'b00;
    always @(posedge clk) begin
        if (!rst_n) begin
            valid_out <= 1'b0; decision <= 2'b00; risk_score <= 8'd0;
        end else begin
            valid_out <= a_v;
            if (a_v) begin
                decision   <= dec;
                risk_score <= score;
            end
        end
    end
endmodule
