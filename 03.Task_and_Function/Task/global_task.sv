// Code your design here
task perform(input int a,input int b,output int y);
  y=a+b;
endtask
module mod_1;
  int i;
  int j;
  int result;
  initial begin
     i=10;
     j=5;
    perform(i,j,result);
    $display(" First module task [%0d]",result);
  end
endmodule

module mod_2;
  int result;
  initial begin
    perform(20,20,result);
    $display("secound module task [%0d]",result);
  end
endmodule


# Global tassk [15]
# Global task [40]
