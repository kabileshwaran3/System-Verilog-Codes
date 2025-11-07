class existing_class;
  bit[31:0]value;
  int id;
  
  function void display();
    $display("Parent class value= %0d id = %0d",value,id);
  endfunction
endclass

class child extends existing_class;
  bit [31:0]value;
  int id;
  
  function void display();
    $display("Child class value= %0d id = %0d",value,id);
  endfunction
endclass

module create;
  existing_class p1;
  child c1;
  initial begin
    p1=new();
    c1=new();
    
    p1.value=100;
    p1.id=18;
    
    c1.value=50;
    c1.id=07;
    
    p1.display();
    c1.display();
  end
endmodule

# Parent class value= 100 id = 18
# Child class value= 50 id = 7
