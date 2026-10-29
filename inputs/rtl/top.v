// Real-Time Transaction Risk & Velocity Enforcement Engine - top level.
module txn_risk_engine (
    input  wire        clk,
    input  wire        rst_n,
    // transaction stream
    input  wire        valid_in,
    input  wire [15:0] amount,
    input  wire [7:0]  category,
    input  wire [11:0] time_delta,
    // configuration (quasi-static)
    input  wire [11:0] window_size,
    input  wire [7:0]  count_limit,
    input  wire [23:0] spend_limit,
    input  wire [15:0] anomaly_thr,
    // result
    output wire [1:0]  decision,
    output wire [7:0]  risk_score,
    output wire        valid_out
);
    wire        v_q;
    wire [15:0] amount_q;
    wire [7:0]  cat_q;
    wire [11:0] dt_q;
    wire        new_win, rapid_rep;
    wire [7:0]  count_next;
    wire [23:0] spend_next;

    txn_if u_if (.clk(clk), .rst_n(rst_n), .valid_in(valid_in), .amount_in(amount),
                 .cat_in(category), .dt_in(time_delta),
                 .v_q(v_q), .amount_q(amount_q), .cat_q(cat_q), .dt_q(dt_q));

    window_buf u_win (.clk(clk), .rst_n(rst_n), .v(v_q), .amount(amount_q), .cat(cat_q),
                      .dt(dt_q), .window_size(window_size),
                      .new_win(new_win), .rapid_rep(rapid_rep));

    velocity_cnt u_cnt (.clk(clk), .rst_n(rst_n), .v(v_q), .new_win(new_win),
                        .count_next(count_next));

    spend_acc u_spend (.clk(clk), .rst_n(rst_n), .v(v_q), .new_win(new_win),
                       .amount(amount_q), .spend_next(spend_next));

    rule_eval u_rule (.clk(clk), .rst_n(rst_n), .v(v_q), .amount(amount_q),
                      .spend_next(spend_next), .count_next(count_next), .rapid_rep(rapid_rep),
                      .spend_limit(spend_limit), .count_limit(count_limit),
                      .anomaly_thr(anomaly_thr),
                      .decision(decision), .risk_score(risk_score), .valid_out(valid_out));
endmodule
