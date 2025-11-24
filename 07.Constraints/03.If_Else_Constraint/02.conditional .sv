class contition;
  rand bit[4:0]data;
  rand int value;
  rand enum{low,high}detail;
  
  constraint c1{ data ==((detail==low)?10:20);}
  
endclass

module ex;
  contition c1;
  initial begin
    repeat(10)begin
    c1=new();
      c1.randomize();
      $display("DETAIL = %s data = %0d ",c1.detail,c1.data);
    end
  end
endmodule

DETAIL = high data = 20 
DETAIL = high data = 20 
DETAIL = high data = 20 
DETAIL = low data = 10 
DETAIL = high data = 20 
DETAIL = low data = 10 
DETAIL = high data = 20 
DETAIL = high data = 20 
DETAIL = high data = 20 
DETAIL = high data = 20 
