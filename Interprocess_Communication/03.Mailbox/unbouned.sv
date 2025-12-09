module base;
  mailbox a2d=new();
  int data;
  task perform();
    repeat(5)begin
      data=$urandom_range(50,100);
      a2d.put(data);
      $display("data=%0d",data);
    end
  endtask
  
  task display();
    int data;
    repeat(5)begin
      a2d.get(data);
      $display("MAILBOX DATA = %0d",data);
    end
  endtask
  
  initial begin
    fork
      perform();
      display();
    join
  end
endmodule


data=97
data=60
data=72
data=76
data=50
MAILBOX DATA = 97
MAILBOX DATA = 60
MAILBOX DATA = 72
MAILBOX DATA = 76
MAILBOX DATA = 50
