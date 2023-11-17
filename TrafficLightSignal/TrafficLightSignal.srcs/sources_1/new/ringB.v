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
        input [3:0] switch_in, //South-Left Turn, North Lane, West-Left, East Lane
        input [2:0] state_in,
        output reg [2:0] state_out,
        output reg [2:0] SL_LED, N_LED, WL_LED, E_LED
    );
    
    reg [2:0] present_state, next_state;
    
   
    localparam SL = 3'b000;
    localparam SL_wait = 3'b001;
    localparam N = 3'b010;
    localparam N_wait = 3'b011;
    localparam WL = 3'b100;
    localparam WL_wait = 3'b101;
    localparam E = 3'b110;
    localparam E_wait = 3'b111;
    
    //Prepares the next state
    always @(present_state, switch_in, state_in) begin
        case(present_state)
            SL:begin
                casex(switch_in) 
                    4'bx1xx: next_state = SL_wait;
                    default: next_state = SL;
                endcase
            end
            SL_wait:begin
                next_state = N;
            end
            
            N:begin
                if (state_in == present_state)
                    casex(switch_in) 
                        4'bxx1x: next_state = N_wait;
                        default: next_state = N;
                    endcase  
            end
            N_wait:begin
                next_state = WL;
            end
            
            WL:begin
                casex(switch_in) 
                    4'bxxx1: next_state = WL_wait;
                    default: next_state = WL;
                endcase 
            end
            WL_wait:begin
                next_state = E;
            end
            
            E:begin
                if (state_in == present_state)
                    casex(switch_in) 
                        4'b1xxx: next_state = E_wait;
                        default: next_state = E;
                    endcase
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
        case(present_state)
        
            SL:begin
                SL_LED = 3'b001; 
                N_LED = 3'b100;
                WL_LED = 3'b100;
                E_LED = 3'b100;
            end
            
            SL_wait:begin
                SL_LED = 3'b010; 
                N_LED = 3'b100;
                WL_LED = 3'b100;
                E_LED = 3'b100;
            end
            
            N:begin
                SL_LED = 3'b100; 
                N_LED = 3'b001;
                WL_LED = 3'b100;
                E_LED = 3'b100; 
            end
            
            N_wait:begin
                SL_LED = 3'b100; 
                N_LED = 3'b010;
                WL_LED = 3'b100;
                E_LED = 3'b100;
            end
            
            WL:begin
                SL_LED = 3'b100; 
                N_LED = 3'b100;
                WL_LED = 3'b001;
                E_LED = 3'b100;  
            end
            WL_wait:begin
                SL_LED = 3'b100; 
                N_LED = 3'b100;
                WL_LED = 3'b010;
                E_LED = 3'b100;
            end
            
            E:begin
                SL_LED = 3'b100; 
                N_LED = 3'b100;
                WL_LED = 3'b100;
                E_LED = 3'b001; 
            end
            E_wait:begin
                SL_LED = 3'b100; 
                N_LED = 3'b100;
                WL_LED = 3'b100;
                E_LED = 3'b010;
            end
       endcase
    end
    
endmodule

