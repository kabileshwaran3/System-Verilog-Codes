class disable_con;
  rand int value;
  rand bit[7:0]data;
  
  constraint c1{value inside{10,20,30,40,50,60};}
  constraint c2{data dist {11:=3,21:=3,31:=3};}
  
  function void display();
    $display("VALUE = %0d || data = %0d",value,data);
  endfunction
  
endclass

module ex;
  disable_con c1;
  initial begin
    c1=new();
    repeat(3)begin
      c1.randomize();
      c1.display();
    end
    $display(" After using Disable constraint in  c2");
    c1.c2.constraint_mode(0);
    repeat(3)begin
      c1.randomize();
      c1.display();
    end
    $display("Disable Constraint");
    c1.constraint_mode(0);
    repeat(3)begin
      c1.randomize();
      c1.display();
    end
  end
endmodule
  

VALUE = 60 || data = 31
VALUE = 20 || data = 11
VALUE = 30 || data = 11
 After using Disable constraint in  c2
VALUE = 60 || data = 169
VALUE = 20 || data = 103
VALUE = 40 || data = 106
Disable Constraint
VALUE = -944207871 || data = 190
VALUE = -7312957 || data = 4
VALUE = 1451670936 || data = 162
