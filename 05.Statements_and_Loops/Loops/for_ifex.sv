
module ex;
  int i;
  initial begin
    for ( ; ;)begin
      $display("Value of i %0d",i);
      if(i==5)break;
      i++;
    end
  end
endmodule


# Value of i 0
# Value of i 1
# Value of i 2
# Value of i 3
# Value of i 4
# Value of i 5
