class ex;
  int a;
  int b;
  function  display();
    $display("The value of a=%0d,The value of b=%0d",a,b);
  endfunction
endclass

module tb;
  ex m1,m2;
  initial begin
    m1=new();
    m2=new();
    m1.a=3;
    m1.b=6;
    m1.display();
    m2.a=20;
    m2.b=20;
    m2.display();
  end
endmodule


# The value of a=3,The value of b=6
# The value of a=20,The value of b=20
    
