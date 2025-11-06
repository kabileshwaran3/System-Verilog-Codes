module ex;
  initial begin
    int array[10] = '{10{5}};  
    for(int i=0; i<$size(array); i++) begin
      if(i == 6) break;  
      $display("array[%0d]=%0d", i, array[i]);
    end
    $display("--------------------");
    for(int i=0; i<$size(array); i++)begin
      if(i==6)continue;
      $display("array[%0d]=%0d",i,array[i]);
    end
  end
endmodule

# array[0]=5
# array[1]=5
# array[2]=5
# array[3]=5
# array[4]=5
# array[5]=5
# --------------------
# array[0]=5
# array[1]=5
# array[2]=5
# array[3]=5
# array[4]=5
# array[5]=5
# array[7]=5
# array[8]=5
# array[9]=5
