module base;
  initial begin
    $display($time ," process 1 is executed");
    #20
    $display($time, " process 2 is executed");
    fork
      begin
        $display($time, " statement 1 is executed");
        #30
        $display($time ," statement 1 is completed");
      end
      begin
        $display($time, " statement 2 is executed");
        #30
        $display($time ," statement 2 is completed");
      end
    join_none;
    wait fork;
    $display($time, " outside fork _none block");
    #20
    $display("--------------------------");
  end
endmodule#          
      
#                    0 process 1 is executed
#                   20 process 2 is executed
#                   20 statement 1 is executed
#                   20 statement 2 is executed
#                   50 statement 1 is completed
#                   50 statement 2 is completed
#                   50 outside fork _none block
# --------------------------



      
