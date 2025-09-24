module three_dimension;
  int data[2:0][2:0][3:0];
  initial begin
    foreach(data[i])begin
      foreach(data[j])begin
        foreach(data[k])begin
          data[i][j][k]=$urandom_range(0,100);
          $display("Three Dimension Array[%0d][%0d][%0d]=%0d",i,j,k,data[i][j][k]);
        end
      end
    end
  end
endmodule


output
# Three Dimension Array[2][2][2]=43
# Three Dimension Array[2][2][1]=76
# Three Dimension Array[2][2][0]=37
# Three Dimension Array[2][1][2]=14
# Three Dimension Array[2][1][1]=87
# Three Dimension Array[2][1][0]=98
# Three Dimension Array[2][0][2]=91
# Three Dimension Array[2][0][1]=33
# Three Dimension Array[2][0][0]=91
# Three Dimension Array[1][2][2]=68
# Three Dimension Array[1][2][1]=50
# Three Dimension Array[1][2][0]=69
# Three Dimension Array[1][1][2]=86
# Three Dimension Array[1][1][1]=72
# Three Dimension Array[1][1][0]=10
# Three Dimension Array[1][0][2]=66
# Three Dimension Array[1][0][1]=3
# Three Dimension Array[1][0][0]=31
# Three Dimension Array[0][2][2]=82
# Three Dimension Array[0][2][1]=16
# Three Dimension Array[0][2][0]=7
# Three Dimension Array[0][1][2]=33
# Three Dimension Array[0][1][1]=4
# Three Dimension Array[0][1][0]=22
# Three Dimension Array[0][0][2]=55
# Three Dimension Array[0][0][1]=86
# Three Dimension Array[0][0][0]=45
