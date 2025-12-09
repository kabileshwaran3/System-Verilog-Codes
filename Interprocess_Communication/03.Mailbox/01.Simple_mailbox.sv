class base;
  mailbox a2d;
  int data;
  
 function new(mailbox a2d);
    this.a2d=a2d;
  endfunction
  
  task display();
    data=56;
    a2d.put(data);
    $display("PARENT CLASS DATA : %0d",data);
  endtask
endclass

class child;
  mailbox d2a;
  int data;
  function new(mailbox d2a);
    this.d2a=d2a;
  endfunction
  
  task display();
    d2a.get(data);
    $display("CHILD CLASS DATA :%0d",data);
  endtask
endclass

module ex;
  base b1;
  child c1;
  mailbox m1;
  initial begin
    m1=new();
    b1=new(m1);
    c1=new(m1); 
    
    b1.display();
    c1.display();
  end
endmodule
    
PARENT CLASS DATA : 56
CHILD CLASS DATA :56
