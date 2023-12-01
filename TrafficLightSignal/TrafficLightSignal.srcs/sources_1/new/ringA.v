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
        input en,
        input rst,
        input [3:0] switch_in, //North-Left Turn, South Lane, East-Left, West Lane
        input AR_in,
        output reg AR_out,
        output reg [2:0] NL_LED, S_LED, EL_LED, W_LED //RYG
    );
    
    reg [2:0] present_state, next_state;
    integer timer = 0;
    integer timeout = 0;
    
    localparam NL = 4'b0000;
    localparam NL_wait = 4'b0001;
    localparam S = 4'b0010;
    localparam S_wait = 4'b0011;
    localparam EL = 4'b0100;
    localparam EL_wait = 3'b101;
    localparam W = 4'b0110;
    localparam W_wait = 4'b0111;
    localparam ALL_RED = 4'b1000;
    

    
    //Prepares the next state
    always @(present_state, switch_in, state_in) begin
        case(present_state)
            NL:begin
                casex(switch_in) 
                    4'bx1xx: begin 
                        next_state = NL_wait;
                    end
                    default: begin
                        next_state = NL;
                    end           
                endcase
            end
            
            NL_wait:begin
                next_state = S;
            end
            
            S:begin
                casex(switch_in) 
                    4'bxx1x : begin
                        next_state = S_wait;
                    end
                    default : begin
                        next_state = S;
                    end
                endcase
            end
            
            S_wait:begin
                next_state = ALL_RED;
            end
            
            ALL_RED : begin
                if (AR_in == 1'b1) begin
                    casex(switch_in):
                        
                        next_state = EL;
                end      
            end
            
            EL:begin
               casex(switch_in) 
                    4'bxxx1 : begin
                        next_state = EL_wait;
                        timeout = 500000000;
                    end
                    default : begin
                        next_state = NL;
                        timeout = 500000000;
                    end
                endcase
            end
            
            EL_wait:begin
                next_state = W;
                timeout = 500000000;
            end
            
            W:begin
                if (state_in == present_state)
                    casex(switch_in) 
                        4'b1xxx : begin
                            next_state = W_wait;
                            timeout = 500000000;
                        end
                        default : begin
                            next_state = W;
                            timeout = 500000000;
                        end
                    endcase
            end
            
            W_wait:begin
                next_state = NL;
                timeout = 500000000;
            end
            
        endcase
    end
    
    //Controls state change and reset
    always @(posedge en, posedge rst) begin
        if (rst == 1'b1)
            present_state = NL;
        else
            present_state = next_state;
    end
    
    //Output Logic
    always @(posedge en) begin
        timer<=timer+1;
        if (timer >= timeout) begin
            timer <= 0;
            case(present_state)
                NL:begin
                    NL_LED = ~3'b001;
                    S_LED = ~3'b100;
                    EL_LED = ~3'b100;
                    W_LED = ~3'b100;
                end
                
                NL_wait:begin
                    NL_LED = ~3'b010;
                    S_LED = ~3'b100;
                    EL_LED = ~3'b100;
                    W_LED = ~3'b100;
                end
                
                S:begin
                    NL_LED = ~3'b100;
                    S_LED = ~3'b001;
                    EL_LED = ~3'b100;
                    W_LED = ~3'b100; 
                end
                
                S_wait:begin
                    NL_LED = ~3'b100;
                    S_LED = ~3'b010;
                    EL_LED = ~3'b100;
                    W_LED = ~3'b100;
                end
            
                EL:begin
                    NL_LED = ~3'b100;
                    S_LED = ~3'b100;
                    EL_LED = ~3'b001;
                    W_LED = ~3'b100;
                end
                
                EL_wait:begin
                    NL_LED = ~3'b100;
                    S_LED = ~3'b100;
                    EL_LED = ~3'b010;
                    W_LED = ~3'b100;
                end
                
                W:begin
                    NL_LED = ~3'b100;
                    S_LED = ~3'b100;
                    EL_LED = ~3'b100;
                    W_LED = ~3'b001;
                end
                
                W_wait:begin
                    NL_LED = ~3'b100;
                    S_LED = ~3'b100;
                    EL_LED = ~3'b100;
                    W_LED = ~3'b010;
                end
            endcase
       end
    end
    
endmodule
