
// Code your design here
// Code your design here
class lower;
  int a;
  int b;
  function new();
    a=30;
    b=40;
  endfunction
endclass


class header;
  int value;
  int data;
  lower l1;
  function new();
    l1=new();
    value =10;
    data=20;
  endfunction

  function copy(header c1);
    this.value=c1.value;
    this.data=c1.data;
    this.l1.a=c1.l1.a;
    this.l1.b=c1.l1.b;
  endfunction
  
  function void display();
    $display ("value of header %0d",value);
    $display("data in header %0d",data);
    $display("value of a in lower %0d",l1.a);
    $display("value of b in lower %0d",l1.b);
  endfunction
  
endclass

module ex;
  header h1,h2;
  initial begin
    h1=new();
    $display("-------h1 object is created --------------------");
    h1.display();
    h2=new();
    h2.copy(h1);
    $display("--------------h2 object is created-------------------");
    h2.display();
    $display("-------changing object in h1 ---------------");
    h1.data=70;
    h1.l1.a=80;
    h1.display();
    $display("------------------displaying h2 after changing an object in h1-----------------");
    h2.display();
    h2.l1.a=120;
    $display("-------------------------------");
    h2.display();
    h1.display();
  
  end
endmodule


-------h1 object is created --------------------
value of header 10
data in header 20
value of a in lower 30
value of b in lower 40
--------------h2 object is created-------------------
value of header 10
data in header 20
value of a in lower 30
value of b in lower 40
-------changing object in h1 ---------------
value of header 10
data in header 70
value of a in lower 80
value of b in lower 40
------------------displaying h2 after changing an object in h1-----------------
value of header 10
data in header 20
value of a in lower 30
value of b in lower 40
-------------------------------
value of header 10
data in header 20
value of a in lower 120
value of b in lower 40
value of header 10
data in header 70
value of a in lower 80
value of b in lower 40
