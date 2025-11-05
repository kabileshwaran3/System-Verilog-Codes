// The unique statement in SystemVerilog is a keyword used to modify if or case statements to convey
//   design intent and enable stronger checking by simulation and synthesis tools.

module if_example;  
  initial begin
    int a, b;
    a = 30;
    b = 70;
    unique if(a==b)
      $display("a is greater than b");
    else if(a<70)
      $display("a is less than b");
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b");
  end
endmodule

a is less than b

Warning-[RT-MTOCMUIF] More than one condition match in statement
design.sv, 6
  More than one condition matches are found in 'unique if' statement inside 
  if_example.unnamed$$_0, at time 0ns.
