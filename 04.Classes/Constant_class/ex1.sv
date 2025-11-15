// Code your design here
class header;
  int data =30;
  const bit [7:0]addrs=19;
  function void display();
    $display("Header class data=%0d addrs=%0d",data,addrs);
  endfunction
endclass

module ex;
  header h1;
  initial begin
    h1=new();
    h1.data=50;
    h1.addrs=20;
    h1.display();
  end
endmodule

Error-[IUCV] Invalid use of 'const'
design.sv, 15
  'const' variable is either driven or connected to a non-const variable.
  Variable 'addrs' declared as 'const' cannot be used in this context
  Source info: h1.addrs = 20;

1 error
