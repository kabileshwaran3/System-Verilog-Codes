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
//     trans_2=new();
    
    if(trans_2!=null)begin
    trans_2.data=4;
    trans_2.id=6;
      $display("value of data %0d ,value of %0d",trans_2.data,trans_2.id);
    end
    else
      $display("Memory is not created");
  end
endmodule

# value of data 4 ,value of 8
# Memory is not created
