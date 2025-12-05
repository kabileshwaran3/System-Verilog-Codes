module base;
  event tr;
  task print();
    $display("$time=%0t | process-1 is executed",$time);#3
    ->tr;
    $display("@%0t | process-2 is executed",$time);
  endtask
  
  task display();
    $display("@%0t | statement 1 is executed ",$time);
    wait(tr.triggered);
    $display("@%0t | statement 2 is executed",$time);
  endtask
  
  initial begin
    fork 
      print();
      display();
    join 
  end
endmodule

# $time=0 | process-1 is executed
# @0 | statement 1 is executed 
# 3 | process-2 is executed
# @3 | statement 2 is executed
