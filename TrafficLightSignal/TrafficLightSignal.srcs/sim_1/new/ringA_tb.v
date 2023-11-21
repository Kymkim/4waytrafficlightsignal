`timescale 1ns / 1ps

module ringA_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in simulation time units
    parameter SIM_TIME = 1000; // Simulation time in time units

    // Signals
    reg en;
    reg rst;
    reg [3:0] switch_in;
    reg [2:0] state_in;
    wire [2:0] state_out;
    wire [2:0] NL_LED, S_LED, EL_LED, W_LED;

    // Instantiate the module
    ringA uut (
        .en(en),
        .rst(rst),
        .switch_in(switch_in),
        .state_in(state_in),
        .state_out(state_out),
        .NL_LED(NL_LED),
        .S_LED(S_LED),
        .EL_LED(EL_LED),
        .W_LED(W_LED)
    );
    
    integer i, j;

    // Clock generation
    initial begin
        en = 0;
        forever #((CLK_PERIOD / 2)) en = ~en;
    end

    // Test procedure
    initial begin
        // Initialize inputs
        rst = 1;
        switch_in = 4'b0000;
        state_in = 3'b000;

        // Apply reset
        #20 rst = 0;

        // Exhaustive input test
        for (i = 0; i < 16; i = i + 1) begin //Every single combination for switch_in
           for (j = 0; j < 8; j = j + 1) begin //Every single combination for state_in
               switch_in = i;
               state_in = j;
               #10;
               // Check states \throws an error if test fails. 
               case (state_out)
                   3'b000: if (NL_LED != 3'b001)$fatal("Invalid out"); 
                   3'b001: if (NL_LED != 3'b010)$fatal("Invalid out");
                   3'b010: if (S_LED  != 3'b001)$fatal("Invalid out");
                   3'b011: if (S_LED  != 3'b010)$fatal("Invalid out");
                   3'b100: if (EL_LED != 3'b001)$fatal("Invalid out");
                   3'b101: if (EL_LED != 3'b010)$fatal("Invalid out");
                   3'b110: if (W_LED  != 3'b001)$fatal("Invalid out");
                   3'b111: if (W_LED  != 3'b010)$fatal("Invalid out");
               default: $fatal("Invalid state_out");
               endcase
            end
            #10;
        end
    end

endmodule