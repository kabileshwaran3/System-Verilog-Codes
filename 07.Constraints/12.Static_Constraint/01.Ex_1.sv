// Code your design here
class example;
  rand bit[7:0]id;
  rand int value;
  
  static constraint c1{value inside{10,20,30,40,50,60,70};}
  constraint c2{id dist{20:/5,[30:40]:/3,40:=5};}
  
  function void display();
    $display("ID = %0d || VALUE = %0d",id,value);
  endfunction
  
endclass

module ex;
  example e1,e2;
  initial begin
    e1=new();
    e2=new();
    repeat(3)begin
      e1.randomize();
      $display("------Display e1----");
      e1.display();
      e2.randomize();
      $display("-----Display e2-----");
      e2.display();
    end
    e2.c1.constraint_mode(0);
    $display("-----After disabling value for all----");
        repeat(3)begin
      e1.randomize();
      $display("------Display e1----");
      e1.display();
      e2.randomize();
      $display("-----Display e2-----");
      e2.display();
    end
    
  end
endmodule

------Display e1----
ID = 40 || VALUE = 10
-----Display e2-----
ID = 39 || VALUE = 40
------Display e1----
ID = 30 || VALUE = 40
-----Display e2-----
ID = 20 || VALUE = 70
------Display e1----
ID = 40 || VALUE = 60
-----Display e2-----
ID = 20 || VALUE = 70
-----After disabling value for all----
------Display e1----
ID = 20 || VALUE = 1714913804
-----Display e2-----
ID = 40 || VALUE = 887083829
------Display e1----
ID = 40 || VALUE = -453625021
-----Display e2-----
ID = 40 || VALUE = 1717527545
------Display e1----
ID = 40 || VALUE = 2092646908
-----Display e2-----
ID = 40 || VALUE = -975276030
