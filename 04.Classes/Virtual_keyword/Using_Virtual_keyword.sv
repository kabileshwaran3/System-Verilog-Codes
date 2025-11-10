class parent;
  bit[15:0] id;
  int addrs;
  
  virtual function void display();
    $display("Display from Base class \n id =%0h \n addrs = %0d",id,addrs);
  endfunction 
endclass

class child extends parent;
  
  function void display();
    $display("Display from Child class \n id =%0h \n addrs = %0d",id,addrs);
  endfunction
endclass

module ex;
  parent p1;
  child c1;
  initial begin
    c1=new();
    p1=c1;
    p1.id=36;
    p1.addrs=166;
    p1.display();
  end
endmodule


Display from Child class 
 id =24 
 addrs = 166
