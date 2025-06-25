//testbench for the adder
`timescale 10ns/1ns
`include "adder.v"

module adder_tb;
    wire[3:0]s;
    wire cout;
    reg [3:0]a,b;
    reg cin;

    adder_16 DUT(.s(s),.cout(cout),.a(a),.b(b),.cin(cin));
    initial
        begin 
            $dumpfile("adder.vcd");
            $dumpvars(0,adder_tb);
            $monitor($time," S=%h ,Cout=%h, A=%h, B=%h, C=%h",s,cout,a,b,cin);
            #5 a=4'ha;  b=4'h1; cin=4'h0;
            #5 a=4'hf;  b=4'h2; cin=4'h0;
            #5
            $finish;
        end
endmodule
