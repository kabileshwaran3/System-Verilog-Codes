module base;
  event tr;
    task display();
      $display("$time =%0t |process -1 is executed",$time);
      ->tr;
      $display("$time=%0t | process -2 is executed",$time);
    endtask
    
    task display_2();
      #10
      $display("$time=%0t | statement -1 is executed",$time);
      @tr;
      $display("$time=%0t | statement -2 is executed",$time);
    endtask
  initial begin
    fork
      display();
      display_2();
    join
    
  end
endmodule

# $time =0 |process -1 is executed
# $time=0 | process -2 is executed
# $time=10 | statement -1 is executed
