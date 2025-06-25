//16 bit adder using 4-4bit adders

`timescale 10ns/1ns
module full_adder(s,car,a,b,c);
    output s,car;
    input a,b,c;
    assign s=a^b^c;
    assign car=(a&b)|(b&c)|(c&a);
endmodule

module adder_16(s,cout,a,b,cin);
    output[3:0]s;
    output cout;
    input[3:0]a;
    input [3:0]b;
    input cin;
    wire c1,c2,c3;

    full_adder f1(s[0],c1,a[0],b[0],cin);
    full_adder f2(s[1],c2,a[1],b[1],c1);
    full_adder f3(s[2],c3,a[2],b[2],c2);
    full_adder f4(s[3],cout,a[3],b[3],c3);
endmodule


