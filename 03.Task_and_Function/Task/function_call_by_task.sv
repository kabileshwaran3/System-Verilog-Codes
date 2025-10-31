// Code your design here
module fun_task;
  int a;
  int b;
  int result;
  initial begin
    a=30;
    b=20;
    
    add(a,b,result);
    $display("Function call by Task[%0d]",result);
  end
  
  task add(input int i,input int j,output int res);
    res=add_f(i,j);
  endtask
  
  function int  add_f(input int a,b);
    add_f=a+b;
  
  endfunction
endmodule


# Function call by Task[50]



    
