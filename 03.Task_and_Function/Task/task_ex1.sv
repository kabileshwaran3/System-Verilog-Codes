// Code your design here
module static_task;
  int counter_increment;
  
  task perform();
    counter_increment=counter_increment+1;
  endtask
  
  initial begin
    perform();
    $display("Value after First  perform =%0d",counter_increment);

    perform();
    
    $display("Value after secound  perform =%0d",counter_increment);
  end
endmodule


# Value after First  perform =1
# Value after secound  perform =2
