module base;
  int a;
  event tr;
  
  task print();
    $display("%0t | Before trigger process",$time);
    ->tr;
    $display("%0t | process -1 is executed",$time);
  endtask
  
  task print_1();
    $display("%0t | statement is executed",$time);
    wait(a&&tr.triggered);
    $display("%0t | Statement is triggered",$time);
  endtask
  
  initial begin
    a=1;
    print();
    print_1();
  end
endmodule

# 0 | Before trigger process
# 0 | process -1 is executed
# 0 | statement is executed
# 0 | Statement is triggered
