// Code your design here
module sim_fun;
  int res;
  
  initial begin
   res= perform(10,10);
    $display("call By Function %0d ",res);
  end
             
  function int perform(int var_1,var_2);
    return var_1*var_2;
  endfunction
endmodule

# call By Function 100 

