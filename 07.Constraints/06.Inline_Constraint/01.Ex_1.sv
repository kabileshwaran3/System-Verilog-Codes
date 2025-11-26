class inline;
  rand bit [7:0]val_1;
  rand bit[7:0]val_2;
  
  constraint c1{val_1>10;val_1<50;}
  constraint c2{val_2<100;val_2>50;}
  
  function void display();
    $display("Before using Inline constrait Val_1=%0d Val_2=%0d",val_1,val_2);
  endfunction
endclass

module ex;
  inline r1;
  initial begin
    r1=new();
    repeat(10)begin
      r1.randomize();
      r1.display();
    end
    repeat(10)begin
      r1.randomize() with {val_1 > 20;val_1 < 40;val_2 > 60;val_2 < 90; };
      $display("After using inline constraint val_1 = %0d val_2 = %0d",r1.val_1,r1.val_2);
    end
  end
endmodule

Before using Inline constrait Val_1=19 Val_2=97
Before using Inline constrait Val_1=20 Val_2=52
Before using Inline constrait Val_1=35 Val_2=86
Before using Inline constrait Val_1=40 Val_2=75
Before using Inline constrait Val_1=19 Val_2=71
Before using Inline constrait Val_1=16 Val_2=80
Before using Inline constrait Val_1=47 Val_2=97
Before using Inline constrait Val_1=20 Val_2=57
Before using Inline constrait Val_1=34 Val_2=85
Before using Inline constrait Val_1=21 Val_2=75
After using inline constraint val_1 = 39 val_2 = 69
After using inline constraint val_1 = 22 val_2 = 79
After using inline constraint val_1 = 23 val_2 = 86
After using inline constraint val_1 = 38 val_2 = 63
After using inline constraint val_1 = 26 val_2 = 88
After using inline constraint val_1 = 24 val_2 = 85
After using inline constraint val_1 = 26 val_2 = 70
After using inline constraint val_1 = 28 val_2 = 73
After using inline constraint val_1 = 36 val_2 = 87
After using inline constraint val_1 = 28 val_2 = 78
