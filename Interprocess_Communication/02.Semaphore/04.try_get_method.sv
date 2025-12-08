module ex;
  semaphore sem=new(3);
  
  task perform();
    if(sem.try_get(1))
      $display("%0t process -1 is started",$time);
    else
      $display("%0t key is not created",$time);
    #3;
    $display("%0t process -1 is completed",$time);
    sem.put();
  endtask
  
  
  task perform_1();
    if(sem.try_get(2))
      $display("%0t process -2 is started",$time);
    else
      $display("%0t key is not created",$time);
    #5
    $display("%0t process-2 is completed",$time);
  endtask
  
  initial begin
    fork
      perform();
      perform_1();
    join
  end
endmodule

# 0 process -1 is started
# 0 process -2 is started
# 3 process -1 is completed
# 5 process-2 is completed
