module automat_fun;
  function automatic perform();
    int y;
    y=y+1;
    $display("The value %0d",y);
  endfunction
  initial begin
    perform();
    perform();
    perform();
  end
endmodule


# The value 1
# The value 1
# The value 1
