// Code your design here
class header;
  local int i;
  function void display();
    $display("Header class i value = %0d",i);
  endfunction
endclass

module ex;
  header h1;
  initial begin
    h1=new();
    h1.i=10;
    h1.display();
  end
endmodule

Error-[SV-ICVA-L] Illegal class variable access
design.sv, 13
  Local member 'i' of class 'header' is not visible to scope 'ex'.
  Please make sure that the above member is accessed only from its own class 
  methods as it is declared as local.
  Please refer to the SystemVerilog LRM (1800-2012) Section 8.18 Data hiding 
  and encapsulation.
