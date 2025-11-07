class existing_class;
  int data=200;
  function void display();
    $display("Parent class data =%0d",data);
  endfunction
endclass

class child_class extends existing_class;
  int data=100;
  function void display();
    $display("Child class data = %0d",data);
  endfunction
endclass

module perform;
  child_class c1;
  initial begin
    c1=new();
    c1.display();
  end
endmodule


Child class data = 100
