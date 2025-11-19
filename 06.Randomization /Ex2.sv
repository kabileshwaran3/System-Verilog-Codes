module ex;
  int value;
  bit [7:0]id;
  
  initial begin
    repeat(5)begin
      value=$random;
        id=$urandom_range(20,30);
      $display("VALUE =%0d \n ID = %0d",value,id);
    end
  end
endmodule
  

VALUE =303379748 
 ID = 26
VALUE =-1064739199 
 ID = 26
VALUE =-2071669239 
 ID = 27
VALUE =-1309649309 
 ID = 24
VALUE =112818957 
 ID = 25
        
