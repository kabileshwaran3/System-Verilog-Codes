module base;
  event e1;
  task display();
    $display("statement -1 is executed");
    ->>e1;
    $display("statement -2 is executed");
  endtask
  
  task display_1();
    $display("process - 1 is executed");
    @e1;
    $display("e1 is triggered");
  endtask
  initial begin
    display();
    display_1();
  end
endmodule

# statement -1 is executed
# statement -2 is executed
# process - 1 is executed
# e1 is triggered
