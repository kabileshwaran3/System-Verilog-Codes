// Declare a dynamic array to store string values 
// a) size of the array must be allocated at the run time, size=5 
// b) store different string values to the five memory location 
// c) resize the array to 15, it must have the previous 5 elements inside it 
// d) and thaen delete the entire array 
// e) display the size of the array each time 


module ex;
  int a[];
  initial begin
    a=new[5];
    a={"NAME","AGE","PH_NO","ADDRS","NATIVE"};
    $display("SIZE OF A = %0d",a.size());
    a=new[10](a);
    $display("SIZE OF A = %0d",a.size());
    a.delete();
    $display("SIZE OF A = %0d",a.size());
     
    
  end
endmodule

  # SIZE OF A = 5
# SIZE OF A = 10
# SIZE OF A = 0
