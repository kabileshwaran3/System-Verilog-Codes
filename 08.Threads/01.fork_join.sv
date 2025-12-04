// Code your design here
class base;
  task run();
    $display("-----------------------------------");
    fork begin
      $display("$time=%0t ||statement 1 is executed",$time);
      #5;
      $display("$time=%0t ||statement 1 is completed",$time);
    end
      begin
        $display("$time=%0t ||statement 2 is excuted",$time);
        #10;
        $display("$time=%0t ||statement 2 is completed",$time);
      end
    join
    $display($time,"----------------------------------");
  endtask
endclass

module ex;
  base b1;
  initial begin
    b1=new();
    b1.run();
  end
endmodule

# -----------------------------------
# $time=0 ||statement 1 is executed
# $time=0 ||statement 2 is excuted
# $time=5 ||statement 1 is completed
# $time=10 ||statement 2 is completed
#                   10----------------------------------
# exit
