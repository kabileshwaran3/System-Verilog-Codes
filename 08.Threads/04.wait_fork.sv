module base;
  initial begin
    $display("-------------------------------------------");
    fork
      begin
        $display($time," statement 1 is started");
        #10
        $display($time," statement 1  is completed");
      end
      $display("outside begin end block");
      begin
        $display($time," statement 2 is started");
        #20
        $display($time," statement 2 is completed");
      end
      
    join_any;
    wait fork;
      $display($time," outside fork join block");
      $display("------------------------------------");
  end
endmodule

 run -all
# -------------------------------------------
#                    0 statement 1 is started
# outside begin end block
#                    0 statement 2 is started
#                   10 statement 1  is completed
#                   20 statement 2 is completed
#                   20 outside fork join block
# ------------------------------------      
