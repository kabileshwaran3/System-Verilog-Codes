class top;
  rand bit[4:0]data;
  rand bit [5:0]value;
  
  constraint c1{ data dist{10:=3, 20:=3, 30:=3};}
  constraint c2{ value dist{15:=5, 25:=5, 5:=5};}
endclass

module ex;
  top t1;
  initial begin
    t1=new();
    repeat(10)begin
      t1.randomize();
      $display("DATA = %0d | VALUE = %0d",t1.data,t1.value);
    end
  end
endmodule

DATA = 20 | VALUE = 15
DATA = 10 | VALUE = 25
DATA = 20 | VALUE = 15
DATA = 30 | VALUE = 25
DATA = 10 | VALUE = 5
DATA = 30 | VALUE = 15
DATA = 20 | VALUE = 25
DATA = 30 | VALUE = 25
DATA = 10 | VALUE = 5
DATA = 30 | VALUE = 5
