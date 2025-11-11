virtual class base;
  int data;
  bit[15:0]addrs;
  function void display();
    $display("The base class data = %0d \n addrs = %0d",data,addrs);
  endfunction
endclass

module ex;
  base b1;
  initial begin
    b1=new();
    b1.data=299;
    b1.addrs=29;
    b1.display();
  end
endmodule

Error-[SV-ACCNBI] An abstract class cannot be instantiated
design.sv, 12
ex, "b1 = new();"
  Instantiation of the object 'b1' can not be done because its type 'base' is 
  an abstract base class.
  Perhaps there is a derived class that should be used.

1 error
