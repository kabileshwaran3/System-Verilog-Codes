`timescale 1ns / 1ps

module bit_example;
 bit[7:0] a; //unsigned data
 byte b; //signed data
 initial begin
    a=-1;
    $display("Value of a=%b",a);
    b=7;
    $display("value of b=%d",b);
    end
endmodule
// output
// Value of a=11111111
// value of b=   7
