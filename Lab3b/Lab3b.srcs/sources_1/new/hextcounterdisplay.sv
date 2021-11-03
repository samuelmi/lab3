`timescale 1ns / 1ps
`default_nettype none

module hextcounterdisplay(
    input wire clk,
    output wire [7:0] digitselect,
    output wire [7:0] segments
    );
    
    wire [3:0] counter;
    
    assign digitselect = ~(8'b0000_0001);
    
    counter1second c1(clk, counter);
    hexto7seg h1(counter, segments);
    
endmodule
