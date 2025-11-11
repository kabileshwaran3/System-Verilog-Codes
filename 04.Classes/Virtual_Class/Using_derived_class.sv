virtual class base;
  int data;
  bit[15:0]addrs;
  function void display();
    $display("The base class data = %0d \n addrs = %0d",data,addrs);
  endfunction
endclass

class child extends base;
endclass


module ex;
  child c1;
  initial begin
    c1=new();
    c1.data=299;
    c1.addrs=29;
    c1.display();
  end
endmodule


The base class data = 299 
 addrs = 29
