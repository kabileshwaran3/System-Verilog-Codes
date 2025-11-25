class executive;
  rand bit[5:0]data;
  
  constraint c1{foreach(data[i]){if(data[i]==1 &&i<5)data[i+1]==0;}}
    
    function void display();
                $display("DATA = %0b",data);
                endfunction
                endclass
                

                
module ex;
  executive e1;
  initial begin
    repeat(10)begin
      e1=new();
      e1.randomize();
      e1.display();
    end
  end
endmodule

DATA = 100101
DATA = 10101
DATA = 100100
DATA = 10101
DATA = 101001
DATA = 10
DATA = 101010
DATA = 100101
DATA = 10001
DATA = 10101                
