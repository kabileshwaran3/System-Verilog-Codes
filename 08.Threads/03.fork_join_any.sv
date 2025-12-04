module base;
  initial begin
    $display("____________________________________");
    fork begin   
      $display("$time = %0t ||statement 1 is executed",$time);
      #30
      $display("$time=%0t ||statement 1 is completed",$time);
    end
      begin
        $display("$time = %0t ||statement 2 is executed",$time);
        #40;
        $display("$time =%0t ||statement 2 is completed",$time);
      end
    join_any
    $display("$time = %0t ||outside fork join_any",$time);
   
  end
endmodule

# ____________________________________
# $time = 0 ||statement 1 is executed
# $time = 0 ||statement 2 is executed
# $time=30 ||statement 1 is completed
# $time = 30 ||outside fork join_any
# $time =40 ||statement 2 is completed
