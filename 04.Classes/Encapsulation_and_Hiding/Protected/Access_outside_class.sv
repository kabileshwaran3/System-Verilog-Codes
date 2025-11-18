// Code your design here
class header;
  protected int value;
  bit[7:0]data;
  function void display();
    $display("Header class value = %0d data = %0d",value,data);
  endfunction
endclass

module protec;
  header h1;
  initial begin
    h1=new();
    h1.data=20;
    h1.value=80;
    h1.display();
  end
endmodule

Error-[SV-ICVA] Illegal class variable access
design.sv, 15
  Protected member 'value' of class 'header' is not visible to scope 'protec'.
  Please make sure that the above member is accessed only from its own class 
  or inherited class properties as it is declared as protected.
  Please refer to the SystemVerilog LRM (1800-2012) Section 8.18 Data hiding 
  and encapsulation.
