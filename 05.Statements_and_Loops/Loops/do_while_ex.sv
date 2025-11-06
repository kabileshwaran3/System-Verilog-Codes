module ex;
  int i;
  initial begin
    do begin
      $display("The value of i =%d",i);
      i++;
    end
    while(i<=10);
  end
endmodule

# The value of i =          0
# The value of i =          1
# The value of i =          2
# The value of i =          3
# The value of i =          4
# The value of i =          5
# The value of i =          6
# The value of i =          7
# The value of i =          8
# The value of i =          9
# The value of i =         10
