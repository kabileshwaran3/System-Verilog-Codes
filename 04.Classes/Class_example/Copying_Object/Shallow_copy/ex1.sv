class copy;
  int a;
  int b;
  
  function new();
    a=a;
    b=b;
  endfunction
  
  function void display();
    $display("Value of a %0d Value of b %0d ",a,b);
  endfunction
  
endclass

module perform;
  copy c1,c2;
  initial begin
    c1=new();
    $display("c1 object is created");
    c1.a=3;
    c1.b=5;
    c1.display();
    c2=new c1;
    $display("c2 object is created");
    c2.display();
    c2.a=4;
    c2.display();
    c1.display();
    $display("c1 copy is displayed");
    c1.a=10;
    c1.display();
    $display("c2 copy is displayed");

    c2.display();
    
    
  end
endmodule


# c1 object is created
# Value of a 3 Value of b 5 
# c2 object is created
# Value of a 3 Value of b 5 
# Value of a 4 Value of b 5 
# Value of a 3 Value of b 5 
# c1 copy is displayed
# Value of a 10 Value of b 5 
# c2 copy is displayed
# Value of a 4 Value of b 5 
