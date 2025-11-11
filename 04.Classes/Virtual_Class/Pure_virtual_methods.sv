 virtual class base;
  int addrs;
  bit[15:0]data;
  
  pure virtual function void display();
    
endclass

class child extends base;
  function void display();
    $display("Inside child class \n addrs = %0d \n data = %0d",addrs,data);
  endfunction
endclass

module ex;
  base b1;
  child c1;
  initial begin
    c1=new();
    b1=c1;
    b1.addrs=$urandom_range(10,100);
    b1.data=$urandom_range(21,30);
    b1.display();
  end
endmodule

Inside child class 
 addrs = 54 
 data = 21
    
