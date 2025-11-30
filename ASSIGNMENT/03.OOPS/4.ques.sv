// What is the use of typedef for a class in SystemVerilog? How does it simplify code?//


typedef class Packet;    
typedef class Driver;    

class Packet;
  int    id;
  Driver drv_h;          
  function new(int id = 0);
    this.id = id;
  endfunction
endclass

class Driver;
  Packet pkt_h;          
  function void send();
    $display("Sending packet id = %0d", pkt_h.id);
  endfunction
endclass


module tb;
  Driver d;
  Packet p;

  initial begin
    d = new();
    p = new(10);

    d.pkt_h = p;         
    d.send();            
  end
endmodule
  
  # Sending packet id = 10

