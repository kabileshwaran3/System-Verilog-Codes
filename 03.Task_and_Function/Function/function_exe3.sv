module fun;
  function int perform(input int a,b);
    perform=a-b;
  endfunction

  initial begin
       int result;
	   result=perform(10,5);
    $display("Subtranction 10-5 =[%0d]",result);
  end
endmodule


# Subtranction 10-5 =[5]
