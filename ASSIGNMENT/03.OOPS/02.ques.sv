// Explain inheritance with code.
class base;
  string name;
  int data;
endclass

class child extends base;
  function void display();
    $display("NAME = %s \n DATA = %0d ",name,data);
  endfunction
endclass

module ex;
  child c1;
  initial begin
    c1=new();
    c1.name="Hello";
    c1.data=18;
    c1.display();
  end
endmodule

NAME = Hello 
 DATA = 18 
