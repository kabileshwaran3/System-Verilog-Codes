module fun;
  function void display(input int var_1,var_2);
    $display("The value of var_1 : %0d var_2 : %0d",var_1,var_2);
  endfunction
  int a;
  int b;
  initial begin
    display(3,5);
     a=9;
     b=8;
    display(a,b);
  end
endmodule


# The value of var_1 : 3 var_2 : 5
# The value of var_1 : 9 var_2 : 8
