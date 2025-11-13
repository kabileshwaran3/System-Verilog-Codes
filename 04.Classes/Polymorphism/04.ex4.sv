class parent;
  virtual function void display();
    $display("Inside base Class");
  endfunction
endclass

class child_1 extends parent;
  function void display();
    $display("Inside Child class");
  endfunction
endclass 

module ex;
  parent p1;
  initial begin
    child_1 c1=new();
    
    c1=p1;
//     $cast(p1,c1);
    p1.display();
  end
endmodule

// Your code failed because you cannot assign a generic parent handle to a
// specific child handle (c1 = p1;), which is an illegal and unsafe downcast.

design.sv, 18
"c1 = p1;"
  Expression 'p1' on rhs is not a class or a compatible class and hence cannot
  be assigned to a class handle on lhs.
  Source type: class $unit::parent
  Target type: class $unit::child_1
  Please make sure that the lhs and rhs expressions are compatible.
  
