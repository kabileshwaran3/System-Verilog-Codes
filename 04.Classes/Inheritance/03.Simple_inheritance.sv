class paraent_class;
  bit [31:0] data;
  
  function void display();
    $display("The data in the paraent class - %0d",data);
  endfunction
endclass

class child_class extends paraent_class;
  int age;
  
  function void display_child();
    $display("The age of chid_class - %0d",age);
  endfunction
endclass

module clas;
  child_class c1;
  initial begin
  c1=new();
  c1.data=200;
  c1.age=21;
  c1.display_child();
    $display("Accesing paraent class from child using externs");
  c1.display();
  end
endmodule

# The age of chid_class - 21
# Accesing paraent class from child using externs
# The data in the paraent class - 200
