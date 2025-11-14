typedef emp;
class transaction;
  int data;
  bit[7:0]addrs;
  emp e1=new();
  function void display();
    $display("Ttansaction data =%0d addrs =%0d",data,addrs);
    $display("EMP class value =%0h",e1.value);
  endfunction
endclass

class emp;
  int value;
endclass

module ex;
  transaction t1;
  initial begin
  t1=new();
  t1.data=$urandom_range(1,100);
  t1.addrs=$urandom_range(31,40);
  t1.e1.value=18;
  t1.display();
  end
endmodule
    
  # Ttansaction data =72 addrs =33
# EMP class value =12
