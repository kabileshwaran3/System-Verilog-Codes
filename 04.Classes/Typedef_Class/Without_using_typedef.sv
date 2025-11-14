// Code your design here
class transaction;
  int data;
  int value;
  trans t1 =new();
  function void display();
    $display("Transaction Data =%0d Value = %0d addrs=%0h",data,value,t1.addrs);
  endfunction
endclass

class trans;
  int addrs=32;
endclass

module ex;
  transaction t2;
  initial begin
    t2=new();
    t2.data=$random;
    t2.value=$random;
    t2.display();
  end
endmodule

