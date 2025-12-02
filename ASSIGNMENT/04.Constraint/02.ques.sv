// Write a constraint to generate specific values: 25, 27, 30, 36, 40, 45.

class range;
  rand int data;
  constraint c1{data inside{25,27,30,36,40,45};}
endclass

module ex;
  range r1;
  initial begin
    r1=new();
    repeat(5)begin
    r1.randomize();
    $display("DATA = %0d",r1.data);
  end
  end
  
endmodule

# DATA = 25
# DATA = 45
# DATA = 40
# DATA = 36
# DATA = 36

METHOD 2

// Write a constraint to generate specific values: 25, 27, 30, 36, 40, 45.
                
class range;
  rand int data;
endclass

module ex;
  range r1;
  initial begin
    repeat (5)begin
    r1=new();
    r1.randomize() with {data inside {25,27,30,36,40,45};};
    $display("DATA = %0d",r1.data);
  end
  end
endmodule


# DATA = 25
# DATA = 30
# DATA = 45
# DATA = 27
# DATA = 30
                        
