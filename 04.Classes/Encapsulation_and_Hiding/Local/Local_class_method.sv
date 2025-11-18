class header;
  int data;
  bit [7:0]value;
  
  function new();
    data=20;
    value=59;
    display();
  endfunction
  
  local function void display();
    $display("Header data = %0d \n value = %0d",data,value);
  endfunction
endclass

module ex;
  header h1;
  initial begin
    h1=new();
  end
endmodule

Header data = 20 
 value = 59
