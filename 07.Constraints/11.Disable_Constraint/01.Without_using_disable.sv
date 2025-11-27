// Code your design here
class range;
  rand bit[3:0]data;
  
  constraint c1{data inside{2,3,[5:10],15};}
endclass

module ex;
  range r1;
  initial begin
    repeat(5)begin
    r1=new();
    r1.randomize();
      $display("DATA = %0d",r1.data);
    end
  end
endmodule

DATA = 6
DATA = 5
DATA = 3
DATA = 2
DATA = 7
