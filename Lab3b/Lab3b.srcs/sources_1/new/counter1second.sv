`timescale 1ns / 1ps
`default_nettype none

module counter1second(
    input wire clk,
    output wire [3:0] value
    );
    logic [31:0] count = 32'h0000; // Initializes count to 0
    
    always_ff @(posedge clk) begin
        count <= count + 1;
    end
    
    assign value = count[30:27]; //{clk[30], clk[29], clk[28], clk[27]};
    
endmodule
