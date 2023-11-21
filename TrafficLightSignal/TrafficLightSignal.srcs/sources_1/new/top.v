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
    input rst,
    input [3:0] switchA,
    input [3:0] switchB,
    output [2:0] N_LED,
    output [2:0] NL_LED,
    output [2:0] E_LED,
    output [2:0] EL_LED,
    output [2:0] S_LED,
    output [2:0] SL_LED,
    output [2:0] W_LED,
    output [2:0] WL_LED
);

    wire [2:0] ringA_state;
    wire [2:0] ringB_state;
    reg en;
    integer timer = 0;

    ringA A (
        .en(en),
        .rst(rst),
        .switch_in(switchA),
        .state_in(ringB_state),
        .state_out(ringA_state),
        .NL_LED(NL_LED),
        .S_LED(S_LED),
        .EL_LED(EL_LED),
        .W_LED(W_LED)
    );

    ringB B (
        .en(en),
        .rst(rst),
        .switch_in(switchB),
        .state_in(ringA_state),
        .state_out(ringB_state),
        .SL_LED(SL_LED),
        .N_LED(N_LED),
        .WL_LED(WL_LED),
        .E_LED(E_LED)
    );
    
    always @(posedge clk) begin
        if (timer >= 100) begin
            en = 1'b1;
            timer = 0;
        end else begin
            en = 1'b0;
            timer = timer + 1;
        end
    end
    
endmodule
