module automatic_task;
  int a; //static 
  task automatic perform();
    int b; //dynamic
    
     a=a+1;
     b=b+1;
    
    $display("The value of a %0d",a);
    $display("The value of b %0d",b);
  endtask
  
  initial begin
    int a=1;
    int b=1;
    perform();
    perform();
    perform();
  end
endmodule

# The value of a 1
# The value of b 1
# The value of a 2
# The value of b 1
# The value of a 3
# The value of b 1
