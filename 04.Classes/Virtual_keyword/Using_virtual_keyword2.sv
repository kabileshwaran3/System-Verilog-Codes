class base;
  int data;
  bit[15:0]addrs;
  virtual function void display();
    $display("Display from Base class");
    $display("Data = %0d , Addrs =%0d",data,addrs);
  endfunction
endclass

class child_1 extends base;
 // virtual
  function void display();
    $display("Display from first Child class");
    $display("Data = %0d , Addrs =%0d",data,addrs);    
  endfunction
endclass

class child_2 extends child_1;
  function void display();
    $display("Display from Secound Child class");
    $display("Data = %0d , Addrs =%0d",data,addrs);
  endfunction
endclass

module ex;
  base p1;
  child_1 c1;
  child_2 c2;
  initial begin
    c1=new();
    c2=new();
    
    p1=c1;
    p1.data=21;
    p1.addrs=199;
    p1.display();
    c1=c2;
    c1.data=31;
    c1.addrs=299;
    c1.display();
    
  end
endmodule
    
# Display from first Child class
# Data = 21 , Addrs =199
# Display from Secound Child class
# Data = 31 , Addrs =299
