module three_array;
  logic[1:0][2:0][7:0]data;
  initial begin
    foreach(data[i])begin
      foreach(data[i][j])begin
        foreach(data[i][j][k])begin
          data[i][j][k] = $random;
          $display("Three Dimension Packed Array=[%0d][%0d][%0d]=%b",i,j,k,data[i][j][k]);
    end
  end
    end
  end
endmodule

output
# Three Dimension Packed Array=[1][2][7]=0
# Three Dimension Packed Array=[1][2][6]=1
# Three Dimension Packed Array=[1][2][5]=1
# Three Dimension Packed Array=[1][2][4]=1
# Three Dimension Packed Array=[1][2][3]=1
# Three Dimension Packed Array=[1][2][2]=1
# Three Dimension Packed Array=[1][2][1]=1
# Three Dimension Packed Array=[1][2][0]=0
# Three Dimension Packed Array=[1][1][7]=1
# Three Dimension Packed Array=[1][1][6]=1
# Three Dimension Packed Array=[1][1][5]=0
# Three Dimension Packed Array=[1][1][4]=1
# Three Dimension Packed Array=[1][1][3]=1
# Three Dimension Packed Array=[1][1][2]=0
# Three Dimension Packed Array=[1][1][1]=1
# Three Dimension Packed Array=[1][1][0]=0
# Three Dimension Packed Array=[1][0][7]=1
# Three Dimension Packed Array=[1][0][6]=0
# Three Dimension Packed Array=[1][0][5]=1
# Three Dimension Packed Array=[1][0][4]=1
# Three Dimension Packed Array=[1][0][3]=0
# Three Dimension Packed Array=[1][0][2]=1
# Three Dimension Packed Array=[1][0][1]=0
# Three Dimension Packed Array=[1][0][0]=0
# Three Dimension Packed Array=[0][2][7]=0
# Three Dimension Packed Array=[0][2][6]=1
# Three Dimension Packed Array=[0][2][5]=0
# Three Dimension Packed Array=[0][2][4]=1
# Three Dimension Packed Array=[0][2][3]=1
# Three Dimension Packed Array=[0][2][2]=1
# Three Dimension Packed Array=[0][2][1]=1
# Three Dimension Packed Array=[0][2][0]=0
# Three Dimension Packed Array=[0][1][7]=0
# Three Dimension Packed Array=[0][1][6]=0
# Three Dimension Packed Array=[0][1][5]=0
# Three Dimension Packed Array=[0][1][4]=1
# Three Dimension Packed Array=[0][1][3]=0
# Three Dimension Packed Array=[0][1][2]=1
# Three Dimension Packed Array=[0][1][1]=1
# Three Dimension Packed Array=[0][1][0]=1
# Three Dimension Packed Array=[0][0][7]=1
# Three Dimension Packed Array=[0][0][6]=1
# Three Dimension Packed Array=[0][0][5]=0
# Three Dimension Packed Array=[0][0][4]=0
# Three Dimension Packed Array=[0][0][3]=1
# Three Dimension Packed Array=[0][0][2]=1
# Three Dimension Packed Array=[0][0][1]=1
# Three Dimension Packed Array=[0][0][0]=0
