`timescale 1ns/1ps

module vsdbabysoc_tb;

    reg clk;
    reg reset;
    reg en;
    wire [3:0] led;

    // Instantiate the module
    vsdbabysoc uut (
        .clk(clk),
        .reset(reset),
        .en(en),
        .led(led)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;  // 10 ns period

    // Reset and enable signals
    initial begin
        reset = 1;
        en = 0;
        #20 reset = 0;
        #10 en = 1;           // enable after 30 ns
        #200 en = 0;          // optional toggle
        #50 en = 1;           // optional toggle
    end

    // VCD dump
    initial begin
        $dumpfile("post_synth_sim.vcd");
        $dumpvars(0, vsdbabysoc_tb);
        #300 $finish;         // run long enough to see activity
    end

endmodule

