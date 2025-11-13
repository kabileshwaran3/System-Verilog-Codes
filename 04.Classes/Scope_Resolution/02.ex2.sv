class base;
  static int data;
  bit[7:0]value;
  
  static function void display();
    $display("The base class data = %0d",data);
  endfunction
  
  function void print();
    $display("The base class value =%0d",value);
  endfunction
endclass

module ex;
  base b1;
  initial begin
    b1=new();
    base :: data=$urandom_range(100,200);
    base :: display();
  end
endmodule

# The base class data = 143
