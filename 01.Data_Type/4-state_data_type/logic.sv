`timescale 1ns / 1ps
module logic_ex;
 logic a;
 logic b;
 logic y;
 initial begin
  a=1;
  b=1;
  y=a&b;
  $display("Value of a=%b,Value of  b=%b, And operation y=%b",a,b,y);
  end
endmodule

//output
//Value of a=1,Value of b=1, And operation y=1
