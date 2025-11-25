class odd;
  rand int data;
  constraint c1{ data inside{[1:200]};
                data%2!=0;
                unique{data};}
endclass

module ex;
  odd n1;
  initial begin
    n1=new();
    repeat(10)begin
      n1.randomize();
      $display("ODD NUMBERS =%0d",n1.data);
    end
  end
endmodule

# ODD NUMBERS =159
# ODD NUMBERS =155
# ODD NUMBERS =191
# ODD NUMBERS =183
# ODD NUMBERS =101
# ODD NUMBERS =121
# ODD NUMBERS =93
# ODD NUMBERS =153
# ODD NUMBERS =111
# ODD NUMBERS =135
