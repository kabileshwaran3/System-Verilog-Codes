class parent_class;
  bit[31:0] data;
  
  function new();
    data=200;
  endfunction;
  
  function void display();
    $display("parent class data : %0d",data);
  endfunction
  
endclass

class child_class extends parent_class;
  bit[31:0]data;
  
  function new();
    data=300;
  endfunction
  
  function void perform();
    $display("Child class value : %0d",data);
  endfunction
endclass

module ex;
  child_class c1;
  initial begin
    c1=new();
//     c1.data=100;
    c1.perform();
    
  end
endmodule

    
# Child class value : 300
