class parent;
  bit [31:0] data;
  
  function void parent_dis();
    $display("The data in parent class %0d",data);
  endfunction
  
endclass
  
  class child_1 extends parent;
    int data_1;
    function void display_ch1();
      $display("The data in child_1 %0d",data_1);
    endfunction
  endclass
  
  class child_2 extends child_1;
    int data_2;
    function void display_ch2();
      $display("The data in child_2 %0d",data_2);
    endfunction
  endclass
  
  class child_3 extends child_2;
    int data_3;
    function void display_ch3();
      $display("The data in child_3 %0d",data_3);
    endfunction
  endclass
  
  module ex;
    child_3 c1;
    initial begin
      c1=new();
      c1.data_3=10;
      c1.data_2=20;
      c1.data_1=30;
      c1.data=40;
      
      c1.parent_dis();
      c1.display_ch1();
      c1.display_ch2();
      c1.display_ch3();
    end
  endmodule
               

The data in parent class 40
The data in child_1 30
The data in child_2 20
The data in child_3 10
