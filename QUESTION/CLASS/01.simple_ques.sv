module test;
  
 class abc;
function void display(input int a, input int b=0);
  $display ("value of a = %0d, b = %0d", a,b);
endfunction
endclass
 
initial begin
abc obj;
obj = new();
obj.display(3);
end
  
endmodule

# value of a = 3, b = 0
