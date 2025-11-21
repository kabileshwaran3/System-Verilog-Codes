class header;
  rand bit[7:0]data;
  randc int value;
  
  constraint one{value >10;
                value<50;}

endclass

module ex;
  header h1;
  initial begin
    repeat(5)begin
    h1=new();
    h1.randomize();
      $display("DATA = %0d value = %0d",h1.data,h1.value);
    end
  end
endmodule

DATA = 185 value = 24
DATA = 7 value = 29
DATA = 107 value = 20
DATA = 86 value = 32
DATA = 73 value = 14
