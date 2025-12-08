module ex;
  event e1,e2,e3;
  
  task mem_1;
    #5
    $display("Before Triggered process");
    ->e1;
    $display("e1 is triggered");
  endtask
  
  task mem_2;
    #15
    $display("Before Triggered process");
    ->e2;
    $display("e2 is triggered");
  endtask
  
  task mem_3;
    #10
    $display("Before Triggered process");
    ->e3;
    $display("e3 is triggered");
  endtask
  
  task perform();
    $display("Waiting for order execution");
    wait_order(e1,e3,e2)
          $display("Events are triggered in order");
    else
      $display("order is not executed");
  endtask
  
  initial begin
    fork 
      mem_1();
      mem_2();
      mem_3();
      perform();
    join
  end
endmodule

# Waiting for order execution
# Before Triggered process
# e1 is triggered
# Before Triggered process
# e3 is triggered
# Before Triggered process
# e2 is triggered
# Events are triggered in order
