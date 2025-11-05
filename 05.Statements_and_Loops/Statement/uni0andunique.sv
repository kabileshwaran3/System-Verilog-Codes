// Unique 0 example
module unique0_ex;
  int a;
  initial begin
    a=10;
     unique0 if(a>20)
      $display("a is greater than 20");
    else if(a==40)
      $display("a is equal to 20");
    else if (a<10)
      $display("a is less 10");
  end
endmodule

//no error

unique: Reports violations when (1) multiple conditions are true simultaneously, OR (2) no conditions match and there's no else clause

unique0: Reports violations ONLY when multiple conditions are true simultaneously; does NOT report violations if none of the conditions match

//unique ex
module unique_ex;
  int a;
  initial begin
    a=10;
     unique if(a>20)
      $display("a is greater than 20");
    else if(a==40)
      $display("a is equal to 20");
    else if (a<10)
      $display("a is less 10");
  end
endmodule


Warning-[RT-NCMUIF] No condition matches in statement
design.sv, 5
  No condition matches in 'unique if' statement. 'else' statement is missing 
  for the last 'else if' block, inside unique0_ex, at time 0ns.

