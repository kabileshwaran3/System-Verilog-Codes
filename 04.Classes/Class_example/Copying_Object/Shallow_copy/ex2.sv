// Code your design here
class transaction;
    int data2;
    int addrs2;
    function new();
      data2=10;
      addrs2=20;
    endfunction
  endclass


class packet;
  int data;
  int addrs;
   transaction pck;
  function new();
    data=30;
    addrs=40;
    pck=new();
    
  endfunction
  
  function void display();
    $display("packet data %0d",data);
    $display("packet addrs %0d",addrs);
    $display("packet2 data2 %0d",pck.data2);
    $display("packet2 addrs2 %0d",pck.addrs2);
  endfunction
endclass             
             
module ex;
  packet pck1,pck2;
  initial begin
    pck1=new();
    $display("-----Display packet1------");
    pck1.display();
    pck2=new pck1;
    $display("-------Display packet2----------");
    pck2.display();
    $display("-------------After changing packet pck 1 data-----------------------");
    pck1.data=60;
    pck1.pck.data2=70;

    pck1.display();
    $display("---------------Display pck 2 data--------------------------");

    pck2.display();
    
    
             
  end
endmodule

# -----Display packet1------
# packet data 30
# packet addrs 40
# packet2 data2 10
# packet2 addrs2 20
# -------Display packet2----------
# packet data 30
# packet addrs 40
# packet2 data2 10
# packet2 addrs2 20
# -------------After changing packet pck 1 data-----------------------
# packet data 60
# packet addrs 40
# packet2 data2 70
# packet2 addrs2 20
# ---------------Display pck 2 data--------------------------
# packet data 30
# packet addrs 40
# packet2 data2 70
# packet2 addrs2 20

