`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 08:11:00 PM
// Design Name: 
// Module Name: traffic
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
//  sensor layout: [NL  S   WL  E   SL  N   EL]
//                  7   6   5   4   3   2   1
//
// States Nonation:
// 1 = North Left Lane
// 2 = South Bound Lane
// 3 = West Left Lane
// 4 = East Bound Lane
// 5 = South Left Lane
// 6 = North Bound Lane
// 7 = East Left Lane
// 8 = West Bound Lane
// G = Green
// Y = Yellow
// R = Red
// AR = All Red
//
// For example:
//  S2G_6G would be South Bound Lane and North Bound Lane to Green
//  S2G_5R would be South Bound Lane Green and South Left Lane to be Red
//////////////////////////////////////////////////////////////////////////////////


module traffic(
        input clk,
        input rst,
        input [7:0] sensor, //[1 2 3 4 5 6 7 8]
        output reg [2:0] N_out, E_out, S_out, W_out, NL_out, EL_out, SL_out, WL_out,
        output reg [3:0] state_out
    );
    
    reg [4:0] present_state, next_state;
    integer timer = 0;
    
    
    localparam AR       =   4'b0000;
    localparam S1_5G    =   4'b0001;
    localparam S1_5Y    =   4'b0010;
    localparam S2_6G    =   4'b0011;
    localparam S2_6Y    =   4'b0100;
    localparam S4_8G    =   4'b0101;
    localparam S4_8Y    =   4'b0110;
    localparam S3_7G    =   4'b0111;
    localparam S3_7Y    =   4'b1000;
    
    
    //Prepares the next state
    always @(present_state) begin
        case(present_state)
            
            S1_5Y : next_state = AR;
            S2_6Y : next_state = AR;
            S3_7Y : next_state = AR;
            S4_8Y : next_state = AR;
            
            AR : begin
                casex(sensor)
                    8'b00000001 : begin
                        next_state = S4_8G;
                    end
                    8'b0000001x : begin
                        next_state = S3_7G;
                    end
                    8'b000001xx : begin
                        next_state = S2_6G;
                    end
                    8'b00001xxx : begin
                        next_state = S1_5G;
                    end
                    8'b0001xxxx : begin
                        next_state = S4_8G;
                    end
                    8'b001xxxxx : begin
                        next_state = S3_7G;
                    end
                    8'b01xxxxxx : begin
                        next_state = S2_6G;
                    end
                    8'b1xxxxxxx : begin
                        next_state = S1_5G;
                    end
                    default :  begin
                        next_state = AR;
                    end
                endcase 
            end
            
            S1_5G : begin
                casex(sensor)
                    8'b0xxx0xxx : begin 
                        next_state = S1_5Y;
                    end
                    default : begin
                        next_state = S1_5G;
                    end
                endcase
            end
            
            S2_6G : begin
                casex(sensor)
                    8'bx0xxx0xx : begin 
                        next_state = S2_6Y;
                    end
                    default : begin
                        next_state = S2_6G;
                    end
                endcase
            end
            
            S3_7G : begin
                casex(sensor)
                    8'bxx0xx0x : begin 
                        next_state = S3_7Y;
                    end
                    default : begin
                        next_state = S3_7G;
                    end
                endcase
            end
            
            S4_8G : begin
                casex(sensor)
                    8'bxxx0xxx0 : begin 
                        next_state = S4_8Y;
                    end
                    default : begin
                        next_state = S4_8G;
                    end
                endcase
            end
            
            
            
        endcase
    end
    
    
    //Reset and next state control
    always @(posedge clk, posedge rst) begin
        timer <= timer + 1;
        if (rst == 1'b1) begin
            present_state = AR;
            timer <= 0;
        end else begin
            if (timer >= 100000000) begin
                timer <= 0;
                present_state = next_state;
                state_out = present_state;
            end
        end
    end
    
    always @(posedge clk) begin
            case(present_state)
                           
                AR : begin
                    N_out = 3'b011;
                    E_out = 3'b011;
                    S_out = 3'b011;
                    W_out = 3'b011; 
                    NL_out = 3'b011; 
                    EL_out = 3'b011; 
                    SL_out = 3'b011; 
                    WL_out = 3'b011;
                end
                
                S1_5G : begin
                    N_out = 3'b011;
                    E_out = 3'b011;
                    S_out = 3'b011;
                    W_out = 3'b011; 
                    NL_out = 3'b110; 
                    EL_out = 3'b011; 
                    SL_out = 3'b110; 
                    WL_out = 3'b011;
                end
                
                S2_6G : begin
                    N_out = 3'b110;
                    E_out = 3'b011;
                    S_out = 3'b110;
                    W_out = 3'b011; 
                    NL_out = 3'b011; 
                    EL_out = 3'b011; 
                    SL_out = 3'b011; 
                    WL_out = 3'b011;
                end
                
                S3_7G : begin
                    N_out = 3'b011;
                    E_out = 3'b011;
                    S_out = 3'b011;
                    W_out = 3'b011; 
                    NL_out = 3'b011; 
                    EL_out = 3'b110; 
                    SL_out = 3'b011; 
                    WL_out = 3'b110;
                end
                
                S4_8G : begin
                    N_out = 3'b011;
                    E_out = 3'b110;
                    S_out = 3'b011;
                    W_out = 3'b110; 
                    NL_out = 3'b011; 
                    EL_out = 3'b011; 
                    SL_out = 3'b011; 
                    WL_out = 3'b011;
                end
                
                S1_5Y : begin
                    N_out = 3'b011;
                    E_out = 3'b011;
                    S_out = 3'b011;
                    W_out = 3'b011; 
                    NL_out = 3'b110; 
                    EL_out = 3'b101; 
                    SL_out = 3'b110; 
                    WL_out = 3'b101;
                end
                
                S2_6Y : begin
                    N_out = 3'b110;
                    E_out = 3'b101;
                    S_out = 3'b110;
                    W_out = 3'b101; 
                    NL_out = 3'b011; 
                    EL_out = 3'b011; 
                    SL_out = 3'b011; 
                    WL_out = 3'b011;
                end
                
                S3_7Y : begin
                    N_out = 3'b011;
                    E_out = 3'b011;
                    S_out = 3'b011;
                    W_out = 3'b011; 
                    NL_out = 3'b011; 
                    EL_out = 3'b101; 
                    SL_out = 3'b011; 
                    WL_out = 3'b101;
                end
                
                S4_8Y : begin
                    N_out = 3'b011;
                    E_out = 3'b101;
                    S_out = 3'b011;
                    W_out = 3'b101; 
                    NL_out = 3'b011; 
                    EL_out = 3'b011; 
                    SL_out = 3'b011; 
                    WL_out = 3'b011;
                end
            
            endcase
    end
    
endmodule
