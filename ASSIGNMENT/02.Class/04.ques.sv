// Create a class H with a static variable and a static function and increment the value of the static variable.

class stable;
  static int data;
  
  static  function void display();
    data++;
  endfunction
endclass


module ex;
  stable s1;
  initial begin
    s1=new();
    s1.display();
   $display("DATA = %0d",s1.data);
    s1.display();
    $display("DATA = %0d",s1.data);
  end
endmodule
      

DATA = 1
DATA = 2
