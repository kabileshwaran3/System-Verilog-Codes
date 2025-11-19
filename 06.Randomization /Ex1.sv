// Code your testbench here
// or browse Examples
module example;
   int data;
   bit[7:0]addrs;
  initial begin
    repeat(5)begin
    data=$random;
    addrs=$unsigned($random);
    $display("DATA = %0d  \n ADDRS = %0d" ,data,addrs);
    end
  end
endmodule

# DATA = 303379748  
#  ADDRS = 129
# DATA = -2071669239  
#  ADDRS = 99
# DATA = 112818957  
#  ADDRS = 141
# DATA = -1295874971  
#  ADDRS = 18
# DATA = 15983361  
#  ADDRS = 13
