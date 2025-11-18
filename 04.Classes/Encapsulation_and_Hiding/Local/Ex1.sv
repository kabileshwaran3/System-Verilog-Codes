// Code your design here
class header;
  local int i;
  function void display();
    $display("Header class i value = %0d",i);
  endfunction
  function new();
    i=20;
  endfunction
endclass

module ex;
  header h1;
  initial begin
    h1=new();
//     h1.i=10;
    h1.display();
  end
endmodule


Header class i value = 20
