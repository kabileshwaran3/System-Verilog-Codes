class base;
  virtual function void display();
    $display("Inside Base Class");
  endfunction
endclass

class child_1 extends base;
  function void display();
    $display("Inside Child_1 Class");
  endfunction
endclass

class child_2 extends base;
  function void display();
    $display("Inside Child_2 Class");
  endfunction
endclass

class child_3 extends base;
  function void display();
    $display("Inside Child_3 Class");
  endfunction
endclass

module ex;
  base b1,b2,b3;
  initial begin
    child_1 c1;
    child_2 c2;
    child_3 c3;
    
    c1=new();
    c2=new();
    c3=new();
    
    b1=c1;
    b2=c2;
    b3=c3;
    
    b1.display();
    b2.display();
    b3.display();
  end
endmodule

# Inside Child_1 Class
# Inside Child_2 Class
# Inside Child_3 Class
