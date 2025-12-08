module base;
  semaphore sem=new(1);
  task perform();
    sem.get();
    $display("process -1 is exected");
    #3
    $display("process -2 is executed");
  endtask
  
  task perform_2();
    sem.get();
    $display("statement -1 is executed");
    #5
    $display("statement -2  is executed");
  endtask
  
  initial begin
    fork
    perform();
    perform_2();
    join
  end
endmodule

# process -1 is exected
# process -2 is executed
