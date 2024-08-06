`timescale 1ns/1ps

module modulo_cont_tb;

    logic clk;
    logic rst;
    logic [5:0] count_o;

    modulo_cont # (10) COUNTER (
        .clk (clk),
        .rst (rst),
        .count_o (count_o)
    );

    initial begin

        clk = 0;
        rst= 1;

        #30;

        rst = 0;

        #30;

        rst = 1;

        #300000;
        $finish;
    end

    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        $dumpfile("modulo_cont_tb.vcd");
        $dumpvars(0, modulo_cont_tb);
    end

endmodule