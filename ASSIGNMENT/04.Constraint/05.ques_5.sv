// Write a constraint for a 16-bit variable such that no two consecutive 1's are generated.

class con;
  rand bit[15:0]val;
  
  constraint c1{foreach(val[i])
    if(i<15)
      !(val[i] && val[i+1]);}
endclass

module ex;
  con c1;
  initial begin
    c1=new();
    c1.randomize();
    $display("VALUE = %0b",c1.val);
  end
endmodule
    
