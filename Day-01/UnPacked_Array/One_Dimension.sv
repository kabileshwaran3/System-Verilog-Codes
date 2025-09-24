module one_dimension;
  int data[3:0];
  initial begin
    foreach(data[i])begin
      data[i]=$random;
      $display("one dimension array[%0d]=%0d",i,data[i]);
    end
  end
endmodule

output
# one dimension array[3]=303379748
# one dimension array[2]=-1064739199
# one dimension array[1]=-2071669239
# one dimension array[0]=-1309649309
