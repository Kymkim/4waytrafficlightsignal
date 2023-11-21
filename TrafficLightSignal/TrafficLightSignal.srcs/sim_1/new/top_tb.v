`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 02:07:37 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb();

    // Parameters
    parameter SIM_TIME = 1000; // Simulation time in time units
    parameter CLK_PERIOD = 10; // Clock period in simulation time units
    

    reg clk, rst;
    reg [3:0] switchA, switchB;
    wire [2:0] N_LED, NL_LED, E_LED, EL_LED, S_LED, SL_LED, W_LED, WL_LED;
    top uut(
        .clk(clk),
        .rst(rst),
        .switchA(switchA),
        .switchB(switchB),
        .N_LED(N_LED),
        .NL_LED(NL_LED),
        .E_LED(E_LED),
        .EL_LED(EL_LED),
        .S_LED(S_LED),
        .SL_LED(SL_LED),
        .W_LED(W_LED),
        .WL_LED(WL_LED)
        );
        
    //Switch A: NL, S, EL, W
    //Switch B: SL, N, WL, E
        
    // Clock generation
    initial begin
        clk = 0;
        forever #((CLK_PERIOD / 2)) clk = ~clk;
    end
    
    initial begin
        rst = 1;
        switchA = 4'b0000;
        switchB = 4'b0000;
        #1000;
        rst = 0;
        #1000;
        switchA = 4'b0010;
        #1000;
        switchB = 4'b0110;
    end
endmodule
