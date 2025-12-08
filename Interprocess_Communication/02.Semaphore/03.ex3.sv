module base;
  semaphore sem=new(3);
  
  task one();
    sem.get(2);
    $display("%0t process A is executed",$time);
    #4
    $display("%0t process A is completed",$time);
    sem.put(2);
  endtask
  
  task two();
    sem.get(3);
    $display("%0t process B is executed",$time);
    #5
    $display("%0t process B is completed",$time);
  endtask
  
  initial begin
    fork
      one();
      two();
    join
  end
endmodule

# 0 process A is executed
# 4 process A is completed
# 4 process B is executed
# 9 process B is completed
   
  
