module mul_ex;
  int array[10];
    
  initial begin
     for (int i = 0; i < $size(array); i++) begin
            array[i] = i*i;
       $display("array[%0d] = %0d", i, array[i]);
    end
  end
endmodule

# array[0] = 0
# array[1] = 1
# array[2] = 4
# array[3] = 9
# array[4] = 16
# array[5] = 25
# array[6] = 36
# array[7] = 49
# array[8] = 64
# array[9] = 81
