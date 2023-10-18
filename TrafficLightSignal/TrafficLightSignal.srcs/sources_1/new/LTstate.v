`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 09:49:31 AM
// Design Name: 
// Module Name: LTstate
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
    input reset,
    input [4:0] in_sw,
    input [2:0] state_in,
    output [2:0] state_out
    );
    
    localparam s0 = 3'b00;
    localparam s1 = 3'b01;
    localparam s2 = 3'b10;
    localparam s3 = 3'b11;
    
    reg [2:0] present_state;
    
    always @(posedge clk, posedge reset) begin
        if(reset) begin
            present_state <= s0; //RED LED
        end
            case(present_state)
                s0: begin
                    
                end
                s1: begin
                
                end
                s2: begin
                
                end
                s3: begin
                
                end
            endcase
    end
    
endmodule
