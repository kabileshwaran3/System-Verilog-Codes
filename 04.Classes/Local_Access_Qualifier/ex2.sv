// Code your design here
class header;
  int value;
 local  bit [7:0]data;
  function new();
    data=10;
    value=20;
  endfunction
  function void display();
    $display("Header value = %0d data = %0d",value,data);
  endfunction
endclass

module ex;
  header h1;
  initial begin
    h1=new();
  
    h1.display();
  end
endmodule

Header value = 20 data = 10
