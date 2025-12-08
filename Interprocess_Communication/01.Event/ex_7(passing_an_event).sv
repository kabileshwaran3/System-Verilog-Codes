class base;
  event tr;
    function new(event td);
    tr=td;
  endfunction
  
  task mask_1();
    #5;
    $display(" %0t Waiting for event triggered",$time);
    ->tr;
    $display(" %0t Event is executed",$time);
  endtask
  
  task mask_2();
    wait(tr.triggered);
    $display(" %0t tr is triggered",$time);
  endtask
endclass

module ex;
  base b1;
  event td;
  
  initial begin
    b1=new(td);
    fork 
      b1.mask_1();
      b1.mask_2();
    join
  end
endmodule
    

#  5 Waiting for event triggered
#  5 Event is executed
#  5 tr is triggered
