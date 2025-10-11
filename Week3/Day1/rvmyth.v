module rvmyth (
    input wire clk,
    input wire reset,
    output reg [7:0] led
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            led <= 8'h00;
        else
            led <= led + 1;
    end
endmodule
