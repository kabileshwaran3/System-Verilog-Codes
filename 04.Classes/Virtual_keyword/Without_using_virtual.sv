// Code your design here
class base;
  bit [15:0] data;
  int addrs;
  
   task perform();
    $display("Perform Base class data =%0d \n addrs=%0d",data,addrs);
  endtask
endclass

class child extends base;
  bit [15:0]data;
  int addrs;
  
  task perform();
    $display("Perform Child  class data =%0d \n addrs=%0d",data,addrs);
  endtask
endclass

module ex;
  child c1;
  base b1;
  initial begin
    c1=new();
    b1=c1;
    b1.data=$urandom_range(10,100);
    b1.addrs=$urandom_range(1,20);
    b1.perform;
  end
endmodule

# Perform Base class data =28 
#  addrs=3
