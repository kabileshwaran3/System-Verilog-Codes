// Write a constraint for a 32-bit variable such that exactly 12 non-consecutive 1's are generated.

class ex;
  rand bit[31:0]data;
    constraint exact_12 {
    $countones(data) == 12;  
  }
  constraint c1{foreach (data[i]){
    if(i<31)
      (data[i]&&data[i+1])==1'b0;}}
  function void display();
    $display("DATA = %b",data);
  endfunction
endclass

module perform;
  ex e1;
  initial begin
    repeat(3)begin
    e1=new();
    e1.randomize();
    e1.display();
    end
  end
endmodule
             
                
DATA = 10010100100010000100101010100101
DATA = 10101010101010100100010001000100
DATA = 10010100101001000100100101010010                
                
    
      
  
  
