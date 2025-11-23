// Code your design here
class top;
  rand bit  [7:0]a,b;
  constraint c1{a+b==100;}
  function void display();
    $display("Constraint value of a = %0d b = %0d",a,b);
  endfunction
endclass

module ex;
  top t1;
  initial begin
    repeat(5)begin
    t1=new();
    t1.randomize();
    t1.display();
    end
  end
endmodule

Constraint value of a = 31 b = 69
Constraint value of a = 66 b = 34
Constraint value of a = 34 b = 66
Constraint value of a = 64 b = 36
Constraint value of a = 0 b = 100
