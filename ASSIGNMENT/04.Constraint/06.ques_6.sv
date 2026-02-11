// write a constraint to generate a 32-bit number where exactly one bit is high.
class exa;
  rand bit[31:0]val;
  
  constraint c1{$countones(val)==1;}
  
endclass
module ex;
  exa e1=new;
  initial begin
    e1.randomize();
    $display("VALUE = %0b",e1.val);
  end
endmodule
