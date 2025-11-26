// Code your design here
class example;
  rand bit[7:0]data;
  rand int value;
  
  constraint c1{!(data inside {[100:200]});}
  constraint c2{value<100;value>10;}
endclass

module ex;
  example e1;
  initial begin
    repeat(10)begin
    e1=new();
      e1.randomize();
      $display("DATA = %0d VALUE = %0d",e1.data,e1.value);
    end
  end
endmodule
    
 # DATA = 96 VALUE = 24
# DATA = 240 VALUE = 74
# DATA = 14 VALUE = 56
# DATA = 223 VALUE = 95
# DATA = 70 VALUE = 88
# DATA = 235 VALUE = 19
# DATA = 213 VALUE = 11
# DATA = 64 VALUE = 38
# DATA = 26 VALUE = 65
# DATA = 221 VALUE = 60
