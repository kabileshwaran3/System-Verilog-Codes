// Demonstrate use of the scope resolution operator to access a static method from a class in SystemVerilog.

class base;
  static int data;
  static function void display();
    data++;
    $display("DATA = %0d",data);
  endfunction
endclass

module ex;
  base b1;
  initial begin
  base::display();
  base::display();
  b1=new();
  base::display();
  
  $display("DATA in final = %0d",base::data);
  end
endmodule 

# DATA = 1
# DATA = 2
# DATA = 3
# DATA in final = 3
