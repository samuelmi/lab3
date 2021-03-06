`timescale 1ns / 1ps
`default_nettype none

module CounterMod7Enable(
    input wire clock,
    input wire reset,
    input wire enable,
    output logic [2:0] value
    );
    
    always_ff @(posedge clock) begin
        value <= reset? 0 : (enable == 0) ? value : (value == 6) ? 0 : (value + 1);
    end
    
endmodule
