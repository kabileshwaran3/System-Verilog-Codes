module dynamic_array;
  int data[];
  initial begin
    data=new[7];
    data='{10,20,30,40,50,60,70,80};
    
    foreach(data[i])begin
      $display("Dynamic array data [%0d]=%0d",i,data[i]);
    end
    $display("The size of an Array=%0d",data.size());
    
    data.delete();
    $display("The size of an Array=%0d",data.size());
    
  end
  
endmodule

output
# Dynamic array data [0]=10
# Dynamic array data [1]=20
# Dynamic array data [2]=30
# Dynamic array data [3]=40
# Dynamic array data [4]=50
# Dynamic array data [5]=60
# Dynamic array data [6]=70
# Dynamic array data [7]=80
# The size of an Array=8
# The size of an Array=0
