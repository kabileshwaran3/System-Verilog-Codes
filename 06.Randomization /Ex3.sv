// Code your testbench here
// or browse Examples
class header;
  rand  int data;
  randc bit[7:0]value;
endclass

module example;
  header h1;
  initial begin
    h1=new();
    repeat(5)begin
    h1.randomize();
      $display("Heder class data = %0d , value =%0d",h1.data,h1.value);
    end
  end
endmodule

Heder class data = -384116807 , value =161
Heder class data = 1637914715 , value =73
Heder class data = 397247290 , value =195
Heder class data = -407577593 , value =173
Heder class data = -1298805792 , value =190
