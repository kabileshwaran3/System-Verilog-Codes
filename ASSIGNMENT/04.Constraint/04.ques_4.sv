// Create a 61-bit variable constraint such that bits 0-31 are 1 and the remaining bits are 0.
class range;
  rand  bit [60:0]val;
  
  constraint c1{val=={29'h0,31'hffff_ffff};}
  

endclass

module ex;
  range r1;
  initial begin
    r1=new();
      r1.randomize();
      $display("VALUE = %0b",r1.val);
  end
endmodule
                
