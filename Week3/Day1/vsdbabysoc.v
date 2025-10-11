module vsdbabysoc (
    input wire clk,
    input wire reset,
    input wire en,
    output wire [7:0] led
);

    wire gclk;

    // Instantiate clock gate
    clk_gate u_clk_gate (
        .clk(clk),
        .en(en),
        .gclk(gclk)
    );

    // Instantiate RISC-V core (placeholder)
    rvmyth u_rvmyth (
        .clk(gclk),
        .reset(reset),
        .led(led)
    );

endmodule
