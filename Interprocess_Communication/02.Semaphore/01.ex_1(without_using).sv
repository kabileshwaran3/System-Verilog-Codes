module base;
  task perform();
    $display("process -1 is exected");
    #3
    $display("process -2 is executed");
  endtask
  
  task perform_2();
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
# statement -1 is executed
# process -2 is executed
# statement -2  is executed
