class top;
  int data;
 const bit [7:0]id=20;
  function void display();
    $display("Data in top = %0d, id = %0d" ,data, id);
  endfunction
endclass

module ex;
  top t1;
  initial begin
    t1=new();
    t1.data=40;
    t1.display();
  end
endmodule

Data in top = 40, id = 20
