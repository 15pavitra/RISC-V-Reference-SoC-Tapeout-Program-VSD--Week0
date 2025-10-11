module clk_gate (
    input wire clk,
    input wire en,
    output wire gclk
);
    assign gclk = clk & en;
endmodule
