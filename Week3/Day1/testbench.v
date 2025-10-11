module testbench();
  reg clk = 0;
  reg reset = 0;
  reg en = 1;
  wire [7:0] led;

  // Instantiate top module
  vsdbabysoc uut (
    .clk(clk),
    .reset(reset),
    .en(en),
    .led(led)
  );

  // Clock generation
  always #5 clk = ~clk;

  initial begin
    reset = 1; #10;
    reset = 0; #100;
    $finish;
  end
endmodule
