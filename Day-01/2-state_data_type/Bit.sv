`timescale 1ns / 1ps
module bit_type;
bit[6:0] a;
initial begin
    $display("The Value of a =%b",a);
    a=7'b1010101;
    $display("The value of a after Initialize =%b",a);
    end    
endmodule

//output
//The Value of a =0000000
//The value of a after Initialize =1010101
