// Code your design here
class base;
  int id;
  function new(int id);
    this.id=id;
    $display("The id in base class = %0d",id);
  endfunction
endclass

class child extends base;
  int id;
  function new(int id_p,id_c);
    super.new(id_p);
    this.id=id_c;
    $display("The id in child class %0d",id);
  endfunction
endclass

module ex;
  child c1;
  initial begin
    c1=new($urandom_range(10,100),$urandom_range(100,200));
  end
endmodule

The id in base class = 54
The id in child class 141
