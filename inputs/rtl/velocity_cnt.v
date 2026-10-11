// Transaction counter per window (saturating).
module velocity_cnt #(
    parameter CNT_W = 8
) (
    input  wire             clk,
    input  wire             rst_n,
    input  wire             v,
    input  wire             new_win,
    output wire [CNT_W-1:0] count_next
);
    reg [CNT_W-1:0] count;
    wire sat = &count;
    assign count_next = new_win ? {{(CNT_W-1){1'b0}}, 1'b1} :
                        (sat ? count : count + 1'b1);
    always @(posedge clk) begin
        if (!rst_n)  count <= {CNT_W{1'b0}};
        else if (v)  count <= count_next;
    end
endmodule
