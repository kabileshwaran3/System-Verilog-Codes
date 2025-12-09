module base;
  mailbox a2d=new(2);
  task perform();
    int data=18;
    string name="VIRAT";
    a2d.put(data);
    a2d.put(name);
  endtask
  
  task display;
    int data;
    string name;
    a2d.get(data);
    $display("MAILBOX DATA = %0d",data);
    a2d.get(name);
    $display("MAILBOX NAME = %s",name);
  endtask
  initial begin
    fork
      perform();
      display();
    join
  end
endmodule

MAILBOX DATA = 18
MAILBOX NAME = VIRAT
