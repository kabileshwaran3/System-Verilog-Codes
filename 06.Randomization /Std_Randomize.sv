
module packet;
   bit [6:0]data;
  bit[7:0]value;
  initial begin
    repeat(4)begin
      std::randomize(data);
      std::randomize(value);
      $display("The data = %0d value =%0d",data,value);
    end
  end
endmodule

# The data = 35 value =50
# The data = 10 value =29
# The data = 56 value =218
# The data = 64 value =172
