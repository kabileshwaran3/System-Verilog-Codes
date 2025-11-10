// Code your design here
class base;
  bit[15:0]data;
  function void display();
    $display("The  base class data = %0d",data);
  endfunction
endclass

class child extends base;
  bit[15:0]data;
  function void display();
    super.data=20;
    super.display();
    $display("The child class data = %0d ",data);
  endfunction
endclass

module ex;
  child c1;
  initial begin
    c1=new();
    c1.data=50;
    c1.display();
  end
endmodule

# The  base class data = 20
# The child class data = 50
