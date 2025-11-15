// Code your design here
class header;
  int data ;
  const bit [7:0]addrs;
  
  function new();
    addrs=$urandom_range(31,40);
  endfunction
  
  function void display();
    $display("Header class data=%0d addrs=%0d",data,addrs);
  endfunction
endclass

module ex;
  header h1;
  initial begin
    h1=new();
    h1.data=$urandom_range(1,100);
    h1.display();
  end
endmodule


Header class data=61 addrs=39




