module for_each;
  int array[5];
  initial begin
    int array[5]='{10,20,30,40,50};
    foreach(array[i])begin
      $display("arrya[%0d]=%0d",i,array[i]);
    end
  end
endmodule


# arrya[0]=10
# arrya[1]=20
# arrya[2]=30
# arrya[3]=40
# arrya[4]=50
