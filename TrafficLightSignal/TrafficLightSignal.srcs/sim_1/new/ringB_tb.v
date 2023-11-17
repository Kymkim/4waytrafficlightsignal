`timescale 1ns / 1ps

module ringB_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in simulation time units
    parameter SIM_TIME = 1000; // Simulation time in time units

    // Signals
    reg clk;
    reg rst;
    reg [3:0] switch_in;
    reg [2:0] state_in;
    wire [2:0] state_out;
    wire [2:0] SL_LED, N_LED, WL_LED, E_LED;

    // Instantiate the module
    ringB uut (
        .clk(clk),
        .rst(rst),
        .switch_in(switch_in),
        .state_in(state_in),
        .state_out(state_out),
        .SL_LED(SL_LED),
        .N_LED(N_LED),
        .WL_LED(WL_LED),
        .E_LED(E_LED)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #((CLK_PERIOD / 2)) clk = ~clk;
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
        for (integer i = 0; i < 16; i = i + 1) begin // Every single combination for switch_in
            for (integer j = 0; j < 8; j = j + 1) begin // Every single combination for state_in
                switch_in = i;
                state_in = j;
                #10;

                // Check states \throws an error if the test fails.
                case (state_out)
                    3'b000: if (SL_LED != 3'b001) $fatal("Invalid out");
                    3'b001: if (SL_LED != 3'b010) $fatal("Invalid out");
                    3'b010: if (N_LED != 3'b001) $fatal("Invalid out");
                    3'b011: if (N_LED != 3'b010) $fatal("Invalid out");
                    3'b100: if (WL_LED != 3'b001) $fatal("Invalid out");
                    3'b101: if (WL_LED != 3'b010) $fatal("Invalid out");
                    3'b110: if (E_LED != 3'b001) $fatal("Invalid out");
                    3'b111: if (E_LED != 3'b010) $fatal("Invalid out");
                    default: $fatal("Invalid state_out");
                endcase
            end
            #10;
        end

        // End simulation
        #10;
    end

endmodule