module if_example;  
  initial begin
    int a, b;
    a = 30;
    b = 70;
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b");
  end
endmodule

# a is less than b
