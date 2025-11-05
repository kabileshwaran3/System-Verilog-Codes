module unique0_ex;
  int a;
  initial begin
    a=10;
     unique0 if(a>20)
      $display("a is greater than 20");
    else if(a==40)
      $display("a is equal to 20");
    else if (a<10)
      $display("a is less 10");
  end
endmodule

//no error or warning
