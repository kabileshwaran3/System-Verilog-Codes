// Code your design here
//How can you generate Gray code sequences using SystemVerilog?
class ex;
  rand bit [3:0]bi;
  rand bit [3:0]gr;
  
  constraint c1{bi!=0;
                gr==((bi)^(bi>>1));}
endclass

module one;
  ex e1;
  initial begin
    e1=new();
    repeat(10)begin
      e1.randomize();
      $display("Binary=%0b | Gray =%0b",e1.bi,e1.gr);
    end
  end
endmodule
  
