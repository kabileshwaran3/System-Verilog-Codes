class range;
  rand int data;
  
  constraint data_range{data dist{ 10:=3 , [31:40]:=2 , [60:70]:=2};}
  
  function void display();
    $display("DATA RANGE = %0d",data);
  endfunction
endclass

module ex;
  range r1;
  initial begin
    repeat(15)begin
      r1=new();
      r1.randomize();
      r1.display();
    end
  end
endmodule

DATA RANGE = 34
DATA RANGE = 62
DATA RANGE = 32
DATA RANGE = 38
DATA RANGE = 10
DATA RANGE = 37
DATA RANGE = 66
DATA RANGE = 66
DATA RANGE = 68
DATA RANGE = 70
DATA RANGE = 62
DATA RANGE = 60
DATA RANGE = 70
DATA RANGE = 10
DATA RANGE = 36
