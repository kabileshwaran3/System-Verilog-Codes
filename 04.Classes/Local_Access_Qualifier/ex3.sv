class top;
  int addrs;
  bit[7:0]data;
  function new();
    addrs=$urandom_range(1,10);
    data=$urandom_range(11,100);
    display();
  endfunction
  
 local function void display();
    $display("Top class addrs = %0d data = %0d ",addrs,data);
  endfunction
endclass

module ex;
  top t1;
  initial begin
    t1=new();
   
  end
endmodule

Top class addrs = 9 data = 61 
