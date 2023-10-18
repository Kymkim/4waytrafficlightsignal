`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 10:51:01 AM
// Design Name: 
// Module Name: ringA
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


module ringA(
        input clk,
        input rst,
        input [3:0] switch_in, //North-Left Turn, South Lane, East-Left, West Lane
        input [2:0] state_in,
        output reg [2:0] state_out
    );
    
    reg [2:0] present_state, next_state;
    
    localparam NL = 2'b000;
    localparam NL_wait = 2'b001;
    localparam S = 2'b010;
    localparam S_wait = 2'b011;
    localparam EL = 2'b100;
    localparam EL_wait = 2'b101;
    localparam W = 2'b110;
    localparam W_wait = 2'b111;
    
    //Prepares the next state
    always @(present_state, switch_in, state_in) begin
        case(present_state)
        
            NL:begin
                if(switch_in == 4'bx1xx) //If south lane switch is on
                    next_state = NL_wait;
            end
            NL_wait:begin
                next_state = S;
            end
            
            S:begin
                if(switch_in == 4'bxx1x && state_in == 2'b10) //If east-left turn switch is on and north lane is on
                    next_state = S_wait;  
            end
            S_wait:begin
                next_state = EL;
            end
            
            EL:begin
                if(switch_in == 4'bxxx1) //If west turn switch is on
                    next_state = EL_wait;  
            end
            EL_wait:begin
                next_state = W;
            end
            
            W:begin
                if(switch_in == 4'b1xxx && state_in == 2'b11) //If north-left turn switch is on and east lane is on
                    next_state = W_wait;  
            end
            W_wait:begin
                next_state = NL;
            end
            
        endcase
    end
    
    //Controls state change and reset
    always @(posedge clk, posedge rst) begin
        if (rst == 1'b1)
            present_state = NL;
        else
            present_state = next_state;
    end
    
    //Output Logic
    always @(posedge clk) begin
        state_out = present_state;
    end
    
endmodule
