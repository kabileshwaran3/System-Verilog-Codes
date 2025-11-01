class transaction;
  bit[31:0]data;
  int id;
  
  task value(bit [31:0] data,int id);
    $display("Value of data %0d ,value of id %0d",data,id);
  endtask
endclass
module ex;
  transaction tr;
  initial begin
    tr=new();
    tr.value(3,9);
  end
endmodule

# Value of data 3 ,value of id 9


