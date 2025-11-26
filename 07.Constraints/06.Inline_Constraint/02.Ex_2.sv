// Code your design here
class example;
  rand bit[7:0]data;
  rand bit[6:0]value;
endclass

module ex;
  example e1;
  initial begin
    repeat(10)begin
    e1=new();
      e1.randomize() with {data <50; value >50; value<100;};
    $display("DATA =%0d VALUE = %0d",e1.data,e1.value);
  end
  end
endmodule

# DATA =32 VALUE = 95
# DATA =11 VALUE = 73
# DATA =14 VALUE = 98
# DATA =40 VALUE = 62
# DATA =6 VALUE = 93
# DATA =20 VALUE = 67
# DATA =44 VALUE = 82
# DATA =34 VALUE = 80
# DATA =26 VALUE = 97
# DATA =30 VALUE = 73
