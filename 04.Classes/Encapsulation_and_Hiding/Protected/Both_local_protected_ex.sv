// Code your design here
class base;
  local int data;
  protected int value;
  function new();
    data=30;
    value =value;
//     display();
  endfunction
 protected function void display();
    $display("DATA = %0d || VALUE = %0d",data,value);
  endfunction
endclass

class child_1 extends base;
  function new();
    value=30;
    display();
  endfunction
  function void display_1();
    $display("VALUE = %0d",value);
  endfunction
endclass

  
  module ex;
    child_1 c1;
    initial begin
      c1=new();
//        c1.display();
      c1.display_1();
    end
  endmodule
  
