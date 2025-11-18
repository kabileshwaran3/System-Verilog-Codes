// Code your design here
class header;
  protected int value;
  bit[7:0]data;
  function void display();
    $display("Header class value = %0d data = %0d",value,data);
  endfunction
endclass

class child_1 extends header;
  int value=80;
  function void display();
      $display("Header class value = %0d data = %0d",value,data);
  endfunction
endclass
  

module protec;
  child_1 c1;
  initial begin
    c1=new();
    c1.data=20;
    c1.display();
  end
endmodule

Header class value = 80 data = 20
