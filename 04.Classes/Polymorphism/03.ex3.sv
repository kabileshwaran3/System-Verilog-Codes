class base;
  int data;
  bit[7:0]addrs;
  
 virtual function void display();
    $display("Base class data = %0d, addrs =%0d",data,addrs);
  endfunction
endclass

class child_1 extends base;
  byte value;
  function void display();
    $display("Child_1 value = %0d data =%0d  addrs =%0d",value,data,addrs);
  endfunction
endclass

class child_2 extends base;
  function void display();
    $display("child_2 class data = %0d, addrs =%0d",data,addrs);
  endfunction
endclass

module ex;
  base b1,b2;
  initial begin
    child_1 c1;
    child_2 c2;
    c1=new();
    c2=new();
    
    $cast(b1,c1);
    $cast(b2,c2);
  

    c1.value=$urandom_range(1,10);
    c1.data=$urandom_range(11,100);
    c1.addrs=$urandom_range(21,30);
    b1.display();
   
    c2.data=$urandom_range(11,100);
    c2.addrs=$urandom_range(21,30);
    b2.display();
  end
endmodule

    

# Child_1 value = 2 data =13  addrs =27
# child_2 class data = 56, addrs =29
