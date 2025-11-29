// Write a module that reverses a given string (example: "SystemVerilog" → "goliVmetsyS").

module tb;
  string name;
  string rev;
  int i;
   initial begin
    name="systemverilog";
    rev="";
     for(i=name.len()-1; i>=0;i--)begin
       rev={rev,name[i]};
     end
     $display("Original data=%s",name);
     $display("Reversed data = %s",rev);
   end
endmodule
    
  
  Original data=systemverilog
Reversed data = golirevmetsys
