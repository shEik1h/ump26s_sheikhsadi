// Cumulative spend accumulator per window (saturating, never wraps).
module spend_acc #(
    parameter AMT_W   = 16,
    parameter SPEND_W = 24
) (
    input  wire               clk,
    input  wire               rst_n,
    input  wire               v,
    input  wire               new_win,
    input  wire [AMT_W-1:0]   amount,
    output wire [SPEND_W-1:0] spend_next
);
    reg [SPEND_W-1:0] spend;
    wire [SPEND_W:0] sum = {1'b0, spend} + {{(SPEND_W+1-AMT_W){1'b0}}, amount};
    wire [SPEND_W-1:0] sum_sat = sum[SPEND_W] ? {SPEND_W{1'b1}} : sum[SPEND_W-1:0];
    assign spend_next = new_win ? {{(SPEND_W-AMT_W){1'b0}}, amount} : sum_sat;
    always @(posedge clk) begin
        if (!rst_n)  spend <= {SPEND_W{1'b0}};
        else if (v)  spend <= spend_next;
    end
endmodule
