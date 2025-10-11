`timescale 1ns/1ps

module vsdbabysoc_tb;

    // Signals for the top module ports
    reg clk;
    reg reset;
    reg en;
    wire [3:0] led;   // assuming led is 4-bit, adjust if different

    // Instantiate the top module
    vsdbabysoc uut (
        .clk(clk),
        .reset(reset),
        .en(en),
        .led(led)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;  // 100 MHz clock

    // Reset signal
    initial begin
        reset = 1;
        #20 reset = 0;
    end

    // Enable signal
    initial begin
        en = 0;
        #25 en = 1;
    end

    // VCD dump for GTKWave
    initial begin
        $dumpfile("post_synth_sim.vcd");
        $dumpvars(0, vsdbabysoc_tb);
        #200 $finish;  // simulation duration
    end

endmodule

