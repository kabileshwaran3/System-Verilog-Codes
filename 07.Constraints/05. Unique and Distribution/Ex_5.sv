class example;
  rand bit[7:0]value;
  rand bit[2:0]shift;
  
  constraint c1 {value==1 <<shift;}
  
endclass

module ex;
  example e1;
  initial begin
    e1=new();
    repeat(10) begin
      e1.randomize();
      $display("VALUE = %0b shift =%0d",e1.value,e1.shift);
    end
  end
endmodule

VALUE = 100 shift =2
VALUE = 10000000 shift =7
VALUE = 1000 shift =3
VALUE = 1000000 shift =6
VALUE = 1000000 shift =6
VALUE = 10000000 shift =7
VALUE = 10000 shift =4
VALUE = 10000000 shift =7
VALUE = 100000 shift =5
VALUE = 10 shift =1
