module one_array;
  logic [3:0]data;
  initial begin
    data='{1,0,1,0};
    foreach(data[i])begin
      $display("data[%0d]=%b",i,data[i]);
    end
  end
endmodule

// output
// # data[3]=1
// # data[2]=0
// # data[1]=1
// # data[0]=0
