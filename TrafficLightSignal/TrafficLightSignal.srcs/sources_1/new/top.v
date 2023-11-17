`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 09:55:10 AM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clk,
    input reset,
    input [3:0] switchA,
    input [3:0] switchB,
    output [3:0] GreenLEDs, 
    output [3:0] YellowLEDs,
    output [3:0] RedLEDs
    );
    
    reg [3:0] ringA_state;
    reg [3:0] ringB_state;
    
    ringA A(.clk(clk), .rst(reset), .switch_in(switchA), .state_in(ringB_state), .state_out(ringA_state));
    ringB B(.clk(clk), .rst(reset), .switch_in(switchB), .state_in(ringA_state), .state_out(ringB_state));
    
    
endmodule
