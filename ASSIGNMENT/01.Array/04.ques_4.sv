// Write code for a queue with 4 elements: insert 1 at index 1, delete element at index 3, insert 9 as 
//last element, then shuffle and reverse.

module ex;
  int data[$];
  initial begin
    data='{10,20,30,40};
    data.insert(1,1);
    $display("Insert 1 =%0p",data);
    data.delete(3);
    $display("Delete index 3= %0p",data);
     data.push_back(9);
    $display("Insert last index =%0p",data);
    data.shuffle();
    $display("Shuffle data = %0p",data);
    data.reverse();
    $display("reverse data =%0p",data);
  end
endmodule
             
    
