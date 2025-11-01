class transaction;
  bit [31:0]data;
  int id;
endclass

module ex;
  transaction trans_1,trans_2;
  initial begin
    trans_1=new();
    trans_1.data=4;
    trans_1.id=8;
    $display("value of data %0d ,value of %0d",trans_1.data,trans_1.id);
    
    
  end
endmodule

# value of data 4 ,value of 8
