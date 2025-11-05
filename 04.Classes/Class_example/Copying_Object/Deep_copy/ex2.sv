
class address;
  int start_addrs;
  int end_addrs;
  function new();
    start_addrs=20;
    end_addrs=40;
  endfunction
  
  function address copy();
    copy=new();
    copy.start_addrs=this.start_addrs;
    copy.end_addrs=this.end_addrs;
  endfunction
    
endclass

class header;
  int value;
  int data;
  
  address a1;
  
  function new();
    a1=new();
    value =50;
    data=60;
  endfunction
  
  function header copy();
    copy=new();
    copy.value=this.value;
    copy.data=this.data;
    copy.a1=a1.copy;
    
  endfunction
  
  
  function void display();
    $display("The value in header %0d",value);
    $display("The data in header %0d",data);
    $display("The start addrs %0d",a1.start_addrs);
    $display("The end addrs %0d",a1.end_addrs);
  endfunction
endclass

module packet;
  header pkt1,pkt2;
  initial begin
    pkt1=new();
    $display("---------------pkt1 is created-------------");
    pkt1.display();
    pkt2=new();
    pkt2.copy(pkt1);
    $display("---------------pkt2 is created-------------");
    pkt2.display();
    pkt1.value=55;
    pkt1.data=65;
    pkt1.a1.start_addrs=85;
    $display("---------changing values in pkt1-------------");
    pkt1.display();
    $display("------------display pkt2 -------------------");
    pkt2.display();
    pkt2.data=45;
    pkt2.a1.end_addrs=75;
    $display("------------changing vlaues in pkt2----------");
    pkt2.display();
    $display("---------------display pkt1 --------------------");
    pkt1.display();
    
  end
endmodule

# ---------------pkt1 is created-------------
# The value in header 50
# The data in header 60
# The start addrs 20
# The end addrs 40
# ---------------pkt2 is created-------------
# The value in header 50
# The data in header 60
# The start addrs 20
# The end addrs 40
# ---------changing values in pkt1-------------
# The value in header 55
# The data in header 65
# The start addrs 85
# The end addrs 40
# ------------display pkt2 -------------------
# The value in header 50
# The data in header 60
# The start addrs 20
# The end addrs 40
# ------------changing vlaues in pkt2----------
# The value in header 50
# The data in header 45
# The start addrs 20
# The end addrs 75
# ---------------display pkt1 --------------------
# The value in header 55
# The data in header 65
# The start addrs 85
# The end addrs 40
