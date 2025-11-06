module example;
  int a=10;
  initial begin
    do begin
      $display("statement will excute once in do while = %0d",a);
      a++;
    end
    while(a<10);
          $display ("check the contition");

  end
endmodule

# statement will excute once in do while = 10
# check the contition
