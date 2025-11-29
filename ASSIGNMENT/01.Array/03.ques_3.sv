//Write code for a dynamic array: assign values using foreach, display size, and shuffle elements.

module tb;
  int data[];
  initial begin
    data=new[5];
    foreach(data[i])begin
      data[i]=(i+1)*5;
    end
      $display("Size of an array = %0p",data.size);
    $display("Data =%0p",data);
      data.shuffle();
      $display("shuffle data=%p",data);
  
  end
endmodule
    
