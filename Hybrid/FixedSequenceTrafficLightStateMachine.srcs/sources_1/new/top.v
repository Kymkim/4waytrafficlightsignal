`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 02:22:50 PM
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
    input rst,
    input [7:0] sensor,
    output [2:0] N_LED,
    output [2:0] NL_LED,
    output [2:0] E_LED,
    output [2:0] EL_LED,
    output [2:0] S_LED,
    output [2:0] SL_LED,
    output [2:0] W_LED,
    output [2:0] WL_LED,
    output [5:0] state_out
);

    traffic A (
        .clk(clk),
        .rst(rst),
        .sensor(sensor),
        .N_out(NL_LED),
        .E_out(E_LED),
        .S_out(S_LED),
        .W_out(W_LED),
        .NL_out(N_LED),
        .EL_out(EL_LED),
        .SL_out(SL_LED),
        .WL_out(WL_LED),
        .state_out(state_out)
    );
    
endmodule
