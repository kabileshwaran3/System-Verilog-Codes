class range;
  rand bit[20:0]data;
  
  constraint c1{foreach (data[i])
  { if (i>=0 && i<=10)
    data[i]==1'b1;
   else if (i>=11 && i<=20) 
     data[i]==1'b0;}}
  
  function void display();
    $display("DATA in range = %0d || %0b",data,data);
  endfunction
endclass

module ex;
  range r1;
  initial begin
    r1=new();
       r1.randomize();
      r1.display();
    end
  
endmodule

# DATA in range = 2047 || 11111111111
                
