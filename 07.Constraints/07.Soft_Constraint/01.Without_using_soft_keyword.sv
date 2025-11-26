class example;
  rand bit[7:0]data;
  rand bit[7:0]value;
  
  constraint c1{data inside{10,[20:30],35};}
  constraint c2{value <50;}
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
      

Error-[CNST-CIF] Constraints inconsistency failure
design.sv, 14
  Constraints are inconsistent and cannot be solved.
  Please check the inconsistent constraints being printed above and rewrite 
  them.
