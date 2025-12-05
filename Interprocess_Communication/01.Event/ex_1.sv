// Code your testbench here
// or browse Examples
module ex;
  event tr;
  task display_1();
    #3
    $display("$time=%0t |statement -1 is executed",$time);#4
    ->tr;#1
    $display("$time=%0t |statement -2 is executed",$time);
  endtask
  
  task display_2();
    $display("$time=%0t |process -1 is execued",$time);
    @tr;
    $display("$time=%0t | proces-2 is excuted",$time);
  endtask
  
  initial begin
    fork
      display_1();
      display_2();
    join
  end
endmodule

# 
# run -all
# $time=0 |process -1 is execued
# $time=3 |statement -1 is executed
# $time=7 | proces-2 is excuted
# $time=8 |statement -2 is executed
