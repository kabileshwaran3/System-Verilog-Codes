
`timescale 1ns / 1ps
module integer_ex;
    integer count;
    initial begin
        count =5;
     repeat (count) begin
            $display("count = %0d", count);
            count =count -1;
        end
    end
endmodule

//output
//count = 5
//count = 4
//count = 3
//count = 2
//count = 1
