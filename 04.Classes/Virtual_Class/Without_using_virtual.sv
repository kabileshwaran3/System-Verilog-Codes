class base;
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

The base class data = 299 
 addrs = 29
