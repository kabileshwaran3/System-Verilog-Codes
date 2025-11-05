module priorityex;
  int a;
  int b;
  initial begin
    a=30;
    b=40;
    priority if(a==b)
      $display("a is  equal to b");
    else if(a>b)
      $display("a is greater b");
    else if (a<40)
      $display("a is less than 40");
    else if(a<b)
      $display("a is less than b");
    else
      $display("None of statment");
  end
endmodule

# a is less than 40

priority is a SystemVerilog keyword used with if and case statements to indicate that conditions
  should be evaluated in sequential order and 
  that all legal cases have been listed
