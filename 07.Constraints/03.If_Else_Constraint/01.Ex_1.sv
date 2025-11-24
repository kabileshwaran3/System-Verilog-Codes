class if_else;
  rand bit [7:0]id;
  rand bit [5:0]value;
  rand enum{one,two,three}data;
  constraint c1{ if(data == one){id<20;value>20;}
    else{id<40; value<id;}}
      endclass
      
    
 module ex;
  if_else e1;
  initial begin
    repeat(10)begin
    e1=new();
      e1.randomize();
      $display("DATA=%s ID = %0d VALUE = %0d",e1.data,e1.id,e1.value);
    end
  end
endmodule

DATA=two ID = 26 VALUE = 20
DATA=three ID = 39 VALUE = 11
DATA=one ID = 16 VALUE = 43
DATA=three ID = 39 VALUE = 13
DATA=two ID = 38 VALUE = 36
DATA=three ID = 18 VALUE = 7
DATA=two ID = 36 VALUE = 34
DATA=one ID = 7 VALUE = 38
DATA=two ID = 39 VALUE = 12
DATA=two ID = 30 VALUE = 20                
