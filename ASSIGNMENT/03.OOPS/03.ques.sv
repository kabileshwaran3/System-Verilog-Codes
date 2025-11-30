// Explain polymorphism with code.
class base;
  virtual function void  display();
    $display("Inside Base Class");
  endfunction
endclass

class child_1 extends base;
  function void display();
    $display("Inside Child_1 class");
  endfunction
endclass

class child_2 extends base;
  function void display();
    $display("Inside child_2 class");
  endfunction
endclass

module ex;
  base b1;
  initial begin
    child_1 c1=new();
    child_2 c2=new();
    b1=c1;
    b1.display();
    b1=c2;
    b1.display();
  end
endmodule

Inside Child_1 class
Inside child_2 class
