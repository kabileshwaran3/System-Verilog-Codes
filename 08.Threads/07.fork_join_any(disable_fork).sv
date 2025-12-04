module base;
  initial begin
    $display("--------------------------------------------");
    fork 
      begin : block;
        $display("statement 1 is executed");
        #30
        $display("statement 1 is completed");
      end
      begin
        $display(" statement 2 is executed");
        #30
        $display("statement 2 is completed");
      end
    join_any;
    disable fork;
      $display("---------------------------------------");
      $display("------Disable fork join ----------------");
      $display("---------------------------------------");
      end
      endmodule

      # --------------------------------------------
# statement 1 is executed
#  statement 2 is executed
# statement 1 is completed
# ---------------------------------------
# ------Disable fork join ----------------
# ---------------------------------------
