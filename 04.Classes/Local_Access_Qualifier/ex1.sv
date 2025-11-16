// Code your design here
class header;
  int value;
 local  bit [7:0]data;
  function void display();
    $display("Header value = %0d data = %0d",value,data);
  endfunction
endclass

module ex;
  header h1;
  initial begin
    h1=new();
    h1.value=10;
    h1.data=20;
    h1.display();
  end
endmodule

Error-[SV-ICVA-L] Illegal class variable access
design.sv, 15
  Local member 'data' of class 'header' is not visible to scope 'ex'.
  Please make sure that the above member is accessed only from its own class 
  methods as it is declared as local.
  Please refer to the SystemVerilog LRM (1800-2012) Section 8.18 Data hiding 
  and encapsulation.
