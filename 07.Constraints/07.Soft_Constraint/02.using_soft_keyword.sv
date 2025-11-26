class example;
  rand bit[7:0]data;
  rand bit[7:0]value;
  
  constraint c1{ soft data inside{10,[20:30],35};}
  constraint c2{ soft value <50;}
endclass

module ex;
  example e1;
  initial begin
    e1=new();
    repeat(10)begin
      e1.randomize() with{data==40; value >50;};
      $display("DATA = %0d VALUE = %0d",e1.data,e1.value);
    end
  end
endmodule
      
  DATA = 40 VALUE = 118
DATA = 40 VALUE = 226
DATA = 40 VALUE = 148
DATA = 40 VALUE = 97
DATA = 40 VALUE = 155
DATA = 40 VALUE = 157
DATA = 40 VALUE = 122
DATA = 40 VALUE = 187
DATA = 40 VALUE = 126
DATA = 40 VALUE = 79
