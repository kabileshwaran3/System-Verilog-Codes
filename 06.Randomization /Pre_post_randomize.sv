// Code your design here
class packet;
  rand bit[4:0]data;
  randc bit[3:0]value;
  
  function void pre_randomize();
    $display("pre_randomize");
  endfunction
  
  function void post_randomize();
    $display("post_randomize");
    $display("data = %0d value = %0d",data,value);
  endfunction
endclass

module ex;
  packet p1;
  initial begin
    p1=new();
    p1.randomize();
  end
endmodule

pre_randomize
post_randomize
data = 25 value = 10
