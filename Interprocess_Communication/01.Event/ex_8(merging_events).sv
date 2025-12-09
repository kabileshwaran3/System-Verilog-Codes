module base;
  event e1,e2;
  task perform();
    e2=e1;#5
    ->e2;
    $display("process A is executed");
  endtask
  
  task display();
    $display("Before Triggering");
    @e2;
    $display("E2 is triggered");
  endtask
  
  initial begin
    fork
    perform();
    display();
    join
  end
endmodule

Before Triggering
process A is executed
E2 is triggered
