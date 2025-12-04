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
    join_none
    disable fork;
      $display("---------------------------------------");
      $display("------Disable fork join ----------------");
      $display("---------------------------------------");
      end
      endmodule

      # --------------------------------------------
# ---------------------------------------
# ------Disable fork join ----------------
# ---------------------------------------
