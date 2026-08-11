`timescale 1ns/1ps

module bcd_counter_tb;

    reg clk;
    reg reset;
    wire [3:0] count;

    // Instantiate BCD counter
    bcd_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Initialize
        clk = 0;
        reset = 1;

        // Reset
        #10;
        reset = 0;

        // Run counter
        #120;

        // Finish simulation
        $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time = %0t | Reset = %b | BCD Count = %d | Binary = %b",
                 $time, reset, count, count);
    end

endmodule