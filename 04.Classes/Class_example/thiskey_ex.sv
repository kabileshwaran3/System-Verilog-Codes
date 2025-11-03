-----------------Without using this keyword-------------------

class ex;
  int a;
  int b;
  
  function new(int a,int b);
    a=a;
    b=b;
  endfunction
endclass

module tr;
  ex m1;
  initial begin
    m1=new(3,4);

  $display("value of a %0b,value of b %0b",m1.a,m1.b);
  end
endmodule

# value of a 0,value of b 0

-------using this keyword---------

class ex;
  int a;
  int b;
  
  function new(int a,int b);
   this.a=a;
    this.b=b;
  endfunction
endclass

module tr;
  ex m1;
  initial begin
    m1=new(3,4);

    $display("value of a %0d,value of b %0d",m1.a,m1.b);
  end
endmodule

# value of a 3,value of b 4
