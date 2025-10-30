module two_dimension;
  int data[3:0][2:0];
  initial begin
    foreach(data[i])begin
      foreach(data[i] [j])begin
        data[i][j]=$random;
        $display("Two dimension array[%0d][%0d]=%0d",i,j,data[i][j]);
      end
    end
  end
endmodule


output
# Two dimension array[3][2]=303379748
# Two dimension array[3][1]=-1064739199
# Two dimension array[3][0]=-2071669239
# Two dimension array[2][2]=-1309649309
# Two dimension array[2][1]=112818957
# Two dimension array[2][0]=1189058957
# Two dimension array[1][2]=-1295874971
# Two dimension array[1][1]=-1992863214
# Two dimension array[1][0]=15983361
# Two dimension array[0][2]=114806029
# Two dimension array[0][1]=992211318
# Two dimension array[0][0]=512609597
