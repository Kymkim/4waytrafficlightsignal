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
//  sensor layout: [NL  S   WL  E   SL  N   EL  W]
//                  7   6   5   4   3   2   1   0
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
        output reg [5:0] state_out
    );
    
    reg [5:0] present_state, next_state;
    integer timer = 0;
    integer delay = 1000000000;
    
    
    localparam S2G_6G = 6'b000000;
    localparam S2G_5R = 6'b000001;
    localparam S2G_6Y = 6'b000010;
    localparam S2Y_6Y = 6'b000011;
    localparam S1R_6G = 6'b000100;
    localparam S2Y_6G = 6'b000101;
    localparam S2G_5Y = 6'b000110;
    localparam S2G_6R = 6'b000111;
    localparam S1Y_6G = 6'b001000;
    localparam S2R_6G = 6'b001001;
    localparam S2G_5G = 6'b001010;
    localparam S2Y_5Y = 6'b001011;
    localparam S1Y_6Y = 6'b001100;
    localparam S1G_6G = 6'b001101;
    localparam S2Y_5G = 6'b001110;
    localparam S1G_5R = 6'b001111;
    localparam S1R_5G = 6'b010000;
    localparam S2R_5G = 6'b010001;
    localparam S1Y_5Y = 6'b010010;
    localparam S1G_5Y = 6'b010011;
    localparam S1G_6Y = 6'b010100;
    localparam S1Y_5G = 6'b010101;
    localparam S1G_5G = 6'b010110;
    localparam S1G_6R = 6'b010111;
    localparam S4G_8G = 6'b011000;
    localparam S4G_7R = 6'b011001;
    localparam S4G_8Y = 6'b011010;
    localparam S4Y_8Y = 6'b011011;
    localparam S3R_8G = 6'b011100;
    localparam S4Y_8G = 6'b011101;
    localparam S4G_7Y = 6'b011110;
    localparam S4G_8R = 6'b011111;
    localparam S3Y_8G = 6'b100000;
    localparam S4R_8G = 6'b100001;
    localparam S4G_7G = 6'b100010;
    localparam S4Y_7Y = 6'b100011;
    localparam S3Y_8Y = 6'b100100;
    localparam S3G_8G = 6'b100101;
    localparam S4Y_7G = 6'b100110;
    localparam S3G_7R = 6'b100111;
    localparam S3R_7G = 6'b101000;
    localparam S4R_7G = 6'b101001;
    localparam S3Y_7Y = 6'b101010;
    localparam S3G_7Y = 6'b101011;
    localparam S3G_8Y = 6'b101100;
    localparam S3Y_7G = 6'b101101;
    localparam S3G_7G = 6'b101110;
    localparam S3G_8R = 6'b101111;
    localparam AR     = 6'b111111;
    
    
 
    //Reset and next state control
    always @(posedge clk, posedge rst) begin
        timer <= timer + 1;
        if (rst == 1'b1) begin
            timer <= 0;
            present_state = AR;
        end else begin
            if (timer >= delay) begin
                timer <= 0;
                present_state = next_state;
                state_out = present_state;
            end
        end
    end
    
    //Prepares the next state
    always @(present_state, sensor) begin
        case(present_state)
            S4G_7R : next_state = S4G_8G;
            S4G_8Y : next_state = S4G_8R;
            S3R_8G : next_state = S4G_8G;
            S4Y_8G : next_state = S4R_8G;
            S4G_7Y : next_state = S4G_7R;
            S4G_8R : next_state = S4G_7G;
            S3Y_8G : next_state = S3R_8G;
            S4R_8G : next_state = S3G_8G;
            S4Y_7G : next_state = S4R_7G;
            S3G_7R : next_state = S3G_8G;
            S3R_7G : next_state = S4G_7G;
            S3Y_7G : next_state = S3R_7G;
            S3G_8R : next_state = S3G_7G;
            S3G_8Y : next_state = S3G_8R;
            S3G_7Y : next_state = S3G_7R;
            S2G_5R : next_state = S2G_6G;
            S2G_6Y : next_state = S2G_6R;
            S1R_6G : next_state = S2G_6G;
            S2Y_6G : next_state = S2R_6G;
            S2G_5Y : next_state = S2G_5R;
            S2G_6R : next_state = S2G_5G;
            S1Y_6G : next_state = S1R_6G;
            S2R_6G : next_state = S1G_6G;
            S2Y_5G : next_state = S2R_5G;
            S2R_5G : next_state = S1G_5G;
            S4R_7G : next_state = S3G_7G;
            S1G_5R : next_state = S1G_6G;
            S1R_5G : next_state = S2G_5G;
            S1Y_5G : next_state = S1R_5G;
            S1G_6R : next_state = S1G_5G;
            S1G_6Y : next_state = S1G_6R;
            S1G_5Y : next_state = S1G_5R;
            S3Y_7Y : next_state = AR;
            S4Y_7Y : next_state = AR;
            S3Y_8Y : next_state = AR;
            S4Y_8Y : next_state = AR;
            S1Y_5Y : next_state = AR;
            S2Y_5Y : next_state = AR;
            S1Y_6Y : next_state = AR;
            S2Y_6Y : next_state = AR;
            
            AR : begin
                casex(sensor)
                
                    // 1-6 1-5
                    8'b1xxxxxxx: begin
                        casex(sensor)
                            8'bxxxxx10x : next_state = S1G_5G;
                            default: next_state = S1G_6G;
                        endcase
                    end
                
                    //2-5 2-6
                    8'bx1xxxxxx : begin
                        casex(sensor)
                            8'bxxxxx10x : next_state = S2G_5G;
                            default: next_state = S2G_6G;
                        endcase
                    end
                    
                    // 3-8 3-7 
                    8'bxx1xxxxx : begin
                        casex(sensor)
                            8'bxxxxxx10 : next_state = S3G_7G;
                            default: next_state = S3G_8G;
                        endcase
                    end
                    
                    //4-7 4-8
                    8'bxxx1xxxx : begin
                        casex(sensor)
                            8'bxxxxxx10 : next_state = S4G_7G;
                            default: next_state = S4G_8G;
                        endcase
                    end
                    
                    // 1-5 2-5
                    8'bxxxx1xxx: begin
                        casex(sensor)
                            8'b10xxxxxx : next_state = S1G_5G;
                            default: next_state = S2G_5G;
                        endcase
                    end
                
                    // 1-6 2-6
                    8'bxxxxx1xx : begin
                        casex(sensor)
                            8'b10xxxxxx : next_state = S1G_6G;
                            default: next_state = S2G_6G;
                        endcase
                    end
                    
                    // 3-7 4-7 
                    8'bxxxxxx1x: begin
                        casex(sensor)
                            8'bxx10xxxx : next_state = S3G_7G;
                            default: next_state = S4G_7G;
                        endcase
                    end
                    
                    // 3-8 4-8
                    8'bxxxxxxx1: begin
                        casex(sensor)
                            8'bxx10xxxx : next_state = S3G_8G;
                            default: next_state = S4G_8G;
                        endcase
                    end
                    
                    default: next_state = AR;
    
                endcase
            end
            
            S2G_6G : begin
                casex(sensor)
                    8'bx0xxx1xx : next_state = S2Y_6G;
                    8'bx1xxx0xx : next_state = S2G_6Y;
                    default : next_state = S2Y_6Y;
                endcase
            end
            
            S2G_5G : begin
                casex(sensor)
                    8'bx1xx0xxx : next_state = S2G_5Y;
                    8'bx0xx1xxx : next_state = S2Y_5G;
                    default : next_state = S1Y_5Y;
                endcase
            end
            
            S1G_5G : begin
                casex(sensor)
                    8'b0xxx1xxx : next_state = S1Y_5G;
                    8'b1xxx0xxx : next_state = S1G_5Y;
                    default : next_state = S1Y_5Y;
                endcase
            end
            
            S1G_6G : begin
                casex(sensor)
                    8'b0xxxx1xx : next_state = S1Y_6G;
                    8'b1xxxx0xx : next_state = S1G_6Y;
                    default : next_state = S1Y_6Y;
                endcase
            end
            
            
            S4G_8G : begin
                casex(sensor)
                    8'bxxx0xxx1 : next_state = S4Y_8G;
                    8'bxxx1xxx1 : next_state = S4G_8Y;
                    default : next_state = S4Y_8Y;
                endcase
            end
            
            S4G_7G : begin
                casex(sensor)
                    8'bxxx1xx0x : next_state = S4G_7Y;
                    8'bxxx0xx1x : next_state = S4Y_7G;
                    default : next_state = S3Y_7Y;
                endcase
            end
            
            S3G_7G : begin
                casex(sensor)
                    8'bxx0xxx1x : next_state = S3Y_7G;
                    8'bxx1xxx0x : next_state = S3G_7Y;
                    default : next_state = S3Y_7Y;
                endcase
            end
            
            S3G_8G : begin
                casex(sensor)
                    8'bxx0xxxx1 : next_state = S3Y_8G;
                    8'bxx1xxxx0 : next_state = S3G_8Y;
                    default : next_state = S3Y_8Y;
                endcase
            end
              
        endcase
    end
    
    

    
    always @(posedge clk) begin
            case(present_state)
                           
                AR : begin
                    N_out <= 3'b011;
                    E_out <= 3'b011;
                    S_out <= 3'b011;
                    W_out <= 3'b011; 
                    NL_out <= 3'b011; 
                    EL_out <= 3'b011; 
                    SL_out <= 3'b011; 
                    WL_out <= 3'b011;
                end
                
                S2G_6G : begin
                    S_out <= 3'b110;
                    EL_out <= 3'b110;
                end
                
                S2G_5G : begin
                    S_out <= 3'b110;
                    SL_out <= 3'b110;
                end
                
                S1G_5G : begin
                    NL_out <= 3'b110;
                    SL_out <= 3'b110;
                end
                
                S1G_6G : begin
                    NL_out <= 3'b110;
                    N_out <= 3'b110;
                end
                
                
                S4G_8G : begin
                    E_out <= 3'b110;
                    W_out <= 3'b110;
                end
                
                S4G_7G : begin
                    E_out <= 3'b110;
                    EL_out <= 3'b110;
                end
                
                S3G_7G : begin
                    WL_out <= 3'b110;
                    EL_out <= 3'b110;
                end
                
                S3G_8G : begin
                    WL_out <= 3'b110;
                    W_out <= 3'b110;
                end
    
                S4G_7R :  begin
                    E_out <= 3'b110;
                    EL_out <= 3'b011;
                end
                
                S4G_8Y : begin
                    E_out <= 3'b110;
                    W_out <= 3'b101;
                end
                
                S3R_8G : begin
                    WL_out <= 3'b011;
                    W_out <= 3'b110;
                end
                
                S4Y_8G : begin
                    E_out <= 3'b101;
                    W_out <= 3'b110;
                end
                
                S4G_7Y :  begin
                    E_out <= 3'b110;
                    EL_out <= 3'b101;
                end
                
                S4G_8R : begin
                    E_out <= 3'b110;
                    W_out <= 3'b110;
                end
                
                S3Y_8G :  begin
                    WL_out <= 3'b101;
                    W_out <= 3'b110;
                end
                
                S4R_8G : begin
                    E_out <= 3'b011;
                    W_out <= 3'b110;
                end
                
                S4Y_7G :  begin
                    E_out <= 3'b101;
                    EL_out <= 3'b110;
                end
                
                S3G_7R : begin
                    WL_out <= 3'b110;
                    EL_out <= 3'b011;
                end
                
                S3R_7G :  begin
                    WL_out <= 3'b011;
                    EL_out <= 3'b110;
                end
                
                S3Y_7G :  begin
                    WL_out <= 3'b101;
                    EL_out <= 3'b110;
                end
                
                S3G_8R : begin
                    WL_out <= 3'b110;
                    W_out <= 3'b011;
                end
                
                S3G_8Y : begin
                    WL_out <= 3'b011;
                    W_out <= 3'b101;
                end
                
                S3G_7Y :  begin
                    WL_out <= 3'b110;
                    EL_out <= 3'b101;
                end
                
                S2G_5R :  begin
                    S_out <= 3'b110;
                    SL_out <= 3'b011;
                end
                
                S2G_6Y :  begin
                    S_out <= 3'b110;
                    N_out <= 3'b101;
                end
                
                /////
                S1R_6G :  begin
                    NL_out <= 3'b011;
                    N_out <= 3'b110;
                end
                
                S2Y_6G :  begin
                    S_out <= 3'b101;
                    N_out <= 3'b110;
                end
                
                S2G_5Y : begin
                    S_out <= 3'b110;
                    SL_out <= 3'b101;
                end
                
                S2G_6R :  begin;
                    S_out <= 3'b110;
                    N_out <= 3'b011;
                end
                
                S1Y_6G :  begin
                    NL_out <= 3'b101;
                    N_out <= 3'b110;
                end
                
                S2R_6G : begin
                    S_out <= 3'b011;
                    N_out <= 3'b110;
                end
                
                S2Y_5G :  begin
                    S_out <= 3'b101;
                    SL_out <= 3'b110;
                end
                
                S1G_5R :  begin;
                    NL_out <= 3'b110;
                    SL_out <= 3'b011;
                end
                
                S1R_5G :  begin
                    NL_out <= 3'b011;
                    SL_out <= 3'b110;
                end
                
                S1Y_5G :  begin
                    NL_out <= 3'b101;
                    SL_out <= 3'b110;
                end
                
                S1G_6R :  begin
                    NL_out <= 3'b110;
                    N_out <= 3'b011;
                end
                
                S1G_6Y : begin
                    NL_out <= 3'b110;
                    N_out <= 3'b101;
                end
                
                S1G_5Y :  begin
                    NL_out <= 3'b110;
                    SL_out <= 3'b101;
                end
                
                S3Y_7Y :  begin
                    WL_out <= 3'b101;
                    EL_out <= 3'b101;
                end
                
                S4Y_7Y : begin
                    E_out <= 3'b101;
                    EL_out <= 3'b101;
                end
                
                S3Y_8Y : begin
                    WL_out <= 3'b101;
                    W_out <= 3'b101;
                end
                
                S4Y_8Y :  begin
                    E_out <= 3'b101;
                    W_out <= 3'b101;
                end
                
                S1Y_5Y :  begin
                    NL_out <= 3'b101;
                    SL_out <= 3'b101;
                end
                
                S2Y_5Y :  begin
                    S_out <= 3'b101;
                    SL_out <= 3'b101;
                end
                
                S1Y_6Y :  begin
                    NL_out <= 3'b101;
                    N_out <= 3'b101;
                end
                
                S2Y_6Y :  begin
                    NL_out <= 3'b101;
                    N_out <= 3'b101;
                end
                
                S4R_7G : begin
                    E_out <= 3'b011;
                    EL_out <= 3'b110;
                end
                
                S2R_5G :  begin
                    S_out <= 3'b011;
                    SL_out <= 3'b110;
                end
               

            endcase
    end
    
endmodule
