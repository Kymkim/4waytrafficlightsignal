`timescale 1ns/1ns

module traffic_tb;

    reg clk;
    reg rst;
    reg [7:0] sensor;
    wire [2:0] N_out, E_out, S_out, W_out, NL_out, EL_out, SL_out, WL_out;
    wire [5:0] state_out;
    
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

    top uut (
        .clk(clk),
        .rst(rst),
        .sensor(sensor),
        .N_LED(N_out),
        .E_LED(E_out),
        .S_LED(S_out),
        .W_LED(W_out),
        .NL_LED(NL_out),
        .EL_LED(EL_out),
        .SL_LED(SL_out),
        .WL_LED(WL_out),
        .state_out(state_out)
    );

    initial begin
        clk = 0;
        rst = 1;
        sensor = 8'b00000000;

        // Apply reset
        #10 rst = 0;
        
        //NOTE: In order to properly work: Change the delay value in the traffic.v to 1
        
        repeat(100) begin
            #10 
            sensor = $random;
            clk = ~clk;
            case(state_out)      
                    AR : if (N_out != 3'b011 || E_out != 3'b011 || S_out != 3'b011 || W_out != 3'b011 || NL_out != 3'b011 || EL_out != 3'b011 || SL_out != 3'b011 || WL_out != 3'b011) $fatal("Error Found!");    
                    S2G_6G : if (S_out != 3'b110 || EL_out != 3'b110) $fatal("Error Found!");    
                    S2G_5G : if (S_out != 3'b110 || SL_out != 3'b110) $fatal("Error Found!");
                    S1G_5G : if (NL_out != 3'b110 || SL_out != 3'b110) $fatal("Error Found!");
                    S1G_6G : if (NL_out != 3'b110 || N_out != 3'b110) $fatal("Error Found!");
                    S4G_8G : if (E_out != 3'b110 || W_out != 3'b110) $fatal("Error Found!");
                    S4G_7G : if (E_out != 3'b110 || EL_out != 3'b110) $fatal("Error Found!");
                    S3G_7G : if (WL_out != 3'b110 || EL_out != 3'b110) $fatal("Error Found!");
                    S3G_8G : if (WL_out != 3'b110 || W_out != 3'b110) $fatal("Error Found!");
                    S4G_7R : if (E_out != 3'b110 || EL_out != 3'b011) $fatal("Error Found!");
                    S4G_8Y : if (E_out != 3'b110 || W_out != 3'b10) $fatal("Error Found!"); 
                    S3R_8G : if (WL_out != 3'b011 || W_out != 3'b110) $fatal("Error Found!");
                    S4Y_8G : if (E_out != 3'b101 || W_out != 3'b110) $fatal("Error Found!");
                    S4G_7Y : if (E_out != 3'b110 || EL_out != 3'b101) $fatal("Error Found!");
                    S4G_8R : if (E_out != 3'b110 || W_out != 3'b110) $fatal("Error Found!");
                    S3Y_8G : if (WL_out != 3'b101 || W_out != 3'b110) $fatal("Error Found!");
                    S4R_8G : if (E_out != 3'b011 || W_out != 3'b110) $fatal("Error Found!");
                    S4Y_7G : if (E_out != 3'b101 || EL_out != 3'b110) $fatal("Error Found!");
                    S3G_7R : if (WL_out != 3'b110 || EL_out != 3'b011) $fatal("Error Found!");
                    S3R_7G : if (WL_out != 3'b011 || EL_out != 3'b110) $fatal("Error Found!");
                    S3Y_7G : if (WL_out != 3'b101 || EL_out != 3'b110) $fatal("Error Found!");
                    S3G_8R : if (WL_out != 3'b11 || W_out != 3'b011) $fatal("Error Found!");
                    S3G_8Y : if (WL_out != 3'b011 || W_out != 3'b101) $fatal("Error Found!");
                    S3G_7Y : if (WL_out != 3'b110 || EL_out != 3'b101) $fatal("Error Found!");
                    S2G_5R : if (S_out != 3'b110 || SL_out != 3'b011) $fatal("Error Found!");
                    S2G_6Y : if (S_out != 3'b110 || N_out != 3'b101) $fatal("Error Found!");
                    S1R_6G : if (NL_out != 3'b011 || N_out != 3'b110) $fatal("Error Found!");
                    S2Y_6G : if (S_out != 3'b101 || N_out != 3'b110) $fatal("Error Found!");
                    S2G_5Y : if (S_out != 3'b110 || SL_out != 3'b101) $fatal("Error Found!");
                    S2G_6R : if (S_out != 3'b110 || N_out != 3'b011) $fatal("Error Found!");
                    S1Y_6G : if (NL_out != 3'b101 || N_out != 3'b110) $fatal("Error Found!");
                    S2R_6G : if (S_out != 3'b011 || N_out != 3'b110) $fatal("Error Found!");
                    S2Y_5G : if (S_out != 3'b101 || SL_out != 3'b110) $fatal("Error Found!");
                    S1G_5R : if (NL_out != 3'b110 || SL_out != 3'b011) $fatal("Error Found!");
                    S1R_5G : if (NL_out != 3'b011 || SL_out != 3'b110) $fatal("Error Found!");
                    S1Y_5G : if (NL_out != 3'b101 || SL_out != 3'b110) $fatal("Error Found!");
                    S1G_6R : if (NL_out != 3'b110 || N_out != 3'b011) $fatal("Error Found!");
                    S1G_6Y : if (NL_out != 3'b110 || N_out != 3'b101) $fatal("Error Found!");
                    S1G_5Y : if (NL_out != 3'b110 || SL_out != 3'b101) $fatal("Error Found!");
                    S3Y_7Y : if (WL_out != 3'b101 || EL_out != 3'b101) $fatal("Error Found!");
                    S4Y_7Y : if (E_out != 3'b101 || EL_out != 3'b101) $fatal("Error Found!");
                    S3Y_8Y : if (WL_out != 3'b101 || W_out != 3'b101) $fatal("Error Found!");
                    S4Y_8Y : if (E_out != 3'b101 || W_out != 3'b101) $fatal("Error Found!");
                    S1Y_5Y : if (NL_out != 3'b101 || SL_out != 3'b101) $fatal("Error Found!");
                    S2Y_5Y : if (S_out != 3'b101 || SL_out != 3'b101) $fatal("Error Found!");
                    S1Y_6Y : if (NL_out != 3'b101 || N_out != 3'b101) $fatal("Error Found!");
                    S2Y_6Y : if (NL_out != 3'b101 || N_out != 3'b101) $fatal("Error Found!");
                    S4R_7G : if (E_out != 3'b011 || EL_out != 3'b110) $fatal("Error Found!");
                    S2R_5G : if (S_out != 3'b011 || SL_out != 3'b110) $fatal("Error Found!");
                endcase
            end
        $stop;
    end

    

endmodule