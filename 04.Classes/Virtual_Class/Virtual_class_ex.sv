virtual class base;
  int data;
  bit [7:0]addrs;
  function void display();
    $display("Base class data : %0d addrs : %0d",data,addrs);
  endfunction 
endclass

virtual class child_1 extends base;
  function void display();
   $display("Displaying base data by using child_1");
  endfunction
endclass

class child_2 extends child_1;
  function void display();
   $display("Displaying base data by using child_2");
    $display("data = %0d , addrs = %0d",data,addrs);
  endfunction

endclass

module ex;
  child_2 c2;
  initial begin
    c2=new();
    c2.data=199;
    c2.addrs=19;
    c2.display();
  end
endmodule


# Displaying base data by using child_2
# data = 199 , addrs = 19
