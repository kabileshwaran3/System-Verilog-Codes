module mul;
  int val_a;
  int val_b;
  int result;
  
  initial begin
    val_a=5;
    val_b=5;
    mul(val_a,val_b,result);
    $display("Multiplication of two value %0d",result);
    
  end
  
  task mul(input int val_a,val_b,output int result );
    result=val_a*val_b;
  endtask
endmodule


# Multiplication of two value 25
