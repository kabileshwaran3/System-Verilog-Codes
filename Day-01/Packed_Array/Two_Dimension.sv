module two_array;
  logic [3:0][7:0]data;
  initial begin
    data=32'hffff_ffff;
    foreach(data[i])begin
      foreach(data[i][j])begin
        $display("Two Dimension Packed Array=[%0d][%0d]=%b",i,j,data[i][j]);
    end
  end
  end
endmodule


output

# Two Dimension Packed Array=[3][7]=1
# Two Dimension Packed Array=[3][6]=1
# Two Dimension Packed Array=[3][5]=1
# Two Dimension Packed Array=[3][4]=1
# Two Dimension Packed Array=[3][3]=1
# Two Dimension Packed Array=[3][2]=1
# Two Dimension Packed Array=[3][1]=1
# Two Dimension Packed Array=[3][0]=1
# Two Dimension Packed Array=[2][7]=1
# Two Dimension Packed Array=[2][6]=1
# Two Dimension Packed Array=[2][5]=1
# Two Dimension Packed Array=[2][4]=1
# Two Dimension Packed Array=[2][3]=1
# Two Dimension Packed Array=[2][2]=1
# Two Dimension Packed Array=[2][1]=1
# Two Dimension Packed Array=[2][0]=1
# Two Dimension Packed Array=[1][7]=1
# Two Dimension Packed Array=[1][6]=1
# Two Dimension Packed Array=[1][5]=1
# Two Dimension Packed Array=[1][4]=1
# Two Dimension Packed Array=[1][3]=1
# Two Dimension Packed Array=[1][2]=1
# Two Dimension Packed Array=[1][1]=1
# Two Dimension Packed Array=[1][0]=1
# Two Dimension Packed Array=[0][7]=1
# Two Dimension Packed Array=[0][6]=1
# Two Dimension Packed Array=[0][5]=1
# Two Dimension Packed Array=[0][4]=1
# Two Dimension Packed Array=[0][3]=1
# Two Dimension Packed Array=[0][2]=1
# Two Dimension Packed Array=[0][1]=1
# Two Dimension Packed Array=[0][0]=1
