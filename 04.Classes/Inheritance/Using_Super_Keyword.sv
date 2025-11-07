// Code your design here
class existing;
  int id;
  function void display();
    $display("Existing class id =%0d",id);
  endfunction
endclass

class derived_class extends existing;
  function void display();
      super.display();

    $display("Display Child Class");
  endfunction
endclass

module perform;
  derived_class obj;
  initial begin
    obj=new();
    obj.id=$urandom_range(30,50);
    obj.display();
  end
endmodule

# Existing class id =34
 # Display Child Class 
