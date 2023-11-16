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


module ringB(
        input clk,
        input rst,
        input [3:0] switch_in, //North-Left Turn, South Lane, East-Left, West Lane
        input [2:0] state_in,
        output reg [2:0] state_out
    );
    
    reg [2:0] present_state, next_state;
    
   
    localparam SL = 2'b000;
    localparam SL_wait = 2'b001;
    localparam N = 2'b010;
    localparam N_wait = 2'b011;
    localparam WL = 2'b100;
    localparam WL_wait = 2'b101;
    localparam E = 2'b110;
    localparam E_wait = 2'b111;
    
    //Prepares the next state
    always @(present_state, switch_in, state_in) begin
        case(present_state)
        
            SL:begin
                if(switch_in == 4'bx1xx) //If south lane switch is on
                    next_state = SL_wait;
            end
            SL_wait:begin
                next_state = N;
            end
            
            N:begin
                if(switch_in == 4'bxx1x && state_in == 2'b10) //If east-left turn switch is on and north lane is on
                    next_state = N_wait;  
            end
            N_wait:begin
                next_state = WL;
            end
            
            WL:begin
                if(switch_in == 4'bxxx1) //If west turn switch is on
                    next_state = WL_wait;  
            end
            WL_wait:begin
                next_state = E;
            end
            
            E:begin
                if(switch_in == 4'b1xxx && state_in == 2'b11) //If north-left turn switch is on and east lane is on
                    next_state = E_wait;  
            end
            E_wait:begin
                next_state = SL;
            end
            
        endcase
    end
    
    //Controls state change and reset
    always @(posedge clk, posedge rst) begin
        if (rst == 1'b1)
            present_state = SL;
        else
            present_state = next_state;
    end
    
    //Output Logic
    always @(posedge clk) begin
        state_out = present_state;
        
    end
    
endmodule

