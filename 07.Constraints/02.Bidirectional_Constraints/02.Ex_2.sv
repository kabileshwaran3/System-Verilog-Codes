class top;
  rand int unsigned a,b,c;
  constraint c1{ a<b;
                b<7;
                c == a*b;}
  function void display();
    $display("Value of a = %0d | value of b = %0d | value of c = %0d",a,b,c,);
  endfunction
endclass

module ex;
  top t1;
  initial begin
    repeat(10)begin
      t1=new();
      t1.randomize();
      t1.display();
    end
  end
endmodule

Value of a = 5 | value of b = 6 | value of c = 30 
Value of a = 0 | value of b = 1 | value of c = 0 
Value of a = 3 | value of b = 4 | value of c = 12 
Value of a = 0 | value of b = 2 | value of c = 0 
Value of a = 0 | value of b = 3 | value of c = 0 
Value of a = 4 | value of b = 6 | value of c = 24 
Value of a = 0 | value of b = 1 | value of c = 0 
Value of a = 5 | value of b = 6 | value of c = 30 
Value of a = 0 | value of b = 5 | value of c = 0 
Value of a = 2 | value of b = 3 | value of c = 6
