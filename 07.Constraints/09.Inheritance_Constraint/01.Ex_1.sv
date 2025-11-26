class parent;
  rand bit[7:0]data;
  rand int value;
  constraint c1{data inside {10,20,[30:50]};}
  constraint c2{value <200;value>20;}
  
  function void print();
    $display("DATA = %0d | VALUE = %0d",data,value);
  endfunction  
endclass

class child extends parent;
  constraint c1{data <50;data>20;}
  constraint c2{value inside {[1:50]};}
  
  function void display();
    $display("Child class DATA = %0d | VALUE = %0d",data,value);
  endfunction
endclass

module ex;
 initial begin
   parent p1=new();
   child c1=new();
   repeat(10)begin
     p1.randomize();
     p1.print();
   end
   $display("-------------------------");
   repeat(10)begin
     c1.randomize();
     c1.display();
   end
 end
endmodule

# DATA = 33 | VALUE = 83
# DATA = 37 | VALUE = 114
# DATA = 49 | VALUE = 172
# DATA = 44 | VALUE = 36
# DATA = 43 | VALUE = 122
# DATA = 45 | VALUE = 107
# DATA = 42 | VALUE = 143
# DATA = 45 | VALUE = 94
# DATA = 50 | VALUE = 38
# DATA = 50 | VALUE = 170
# -------------------------
# Child class DATA = 45 | VALUE = 8
# Child class DATA = 30 | VALUE = 22
# Child class DATA = 40 | VALUE = 38
# Child class DATA = 48 | VALUE = 30
# Child class DATA = 42 | VALUE = 4
# Child class DATA = 29 | VALUE = 17
# Child class DATA = 44 | VALUE = 16
# Child class DATA = 29 | VALUE = 14
# Child class DATA = 48 | VALUE = 29
# Child class DATA = 25 | VALUE = 13
  


