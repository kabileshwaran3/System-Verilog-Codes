class parent;
  bit[31:0]data;
  int id;
  
  function void display();
    $display("The parent data = %0d , id =%0d",data,id);
  endfunction 
endclass

class child extends parent;
  int value;
  bit [7:0] addrs;
  function void display();
    $display("The Child value =%0d, addrs=%0d",value,addrs);
  endfunction
endclass

module perform;
  child c1;
  parent p1;
  
  initial begin
    c1=new();
    c1.value=$urandom_range(1,100);
    c1.addrs=$urandom_range(10,15);
    c1.display();
    p1=c1;
    p1.data=$urandom_range(100,200);
    p1.id=$urandom_range(10,15);
    p1.display();
  end
endmodule

# The Child value =72, addrs=12
# The parent data = 137 , id =13

    
    
