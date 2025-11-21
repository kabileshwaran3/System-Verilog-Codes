class store1;
  rand bit[7:0]data;
  randc int value;
  constraint data_range{ data==10;
                        value<50;
                        value>10;}
endclass

class store2 extends store1;
  constraint data_range{ data>20;
                   data<100;
                   value >50;
                   value<100;}
endclass

module ex;
  store1 s1;
  store2 s2;
  initial begin
    repeat(5)begin
    s1=new();
      s1.randomize();
      $display("Store1 data = %0d value =%0d",s1.data,s1.value);
    end
    $display("---------------------------------");
    repeat(5)begin
       s2=new();
      s2.randomize();
      $display("Store2 data = %0d va;ue =%0d",s2.data,s2.value);
    end
  end
endmodule

Store1 data = 10 value =48
Store1 data = 10 value =16
Store1 data = 10 value =14
Store1 data = 10 value =21
Store1 data = 10 value =29
---------------------------------
Store2 data = 81 va;ue =72
Store2 data = 31 va;ue =61
Store2 data = 50 va;ue =70
Store2 data = 83 va;ue =90
Store2 data = 32 va;ue =67
