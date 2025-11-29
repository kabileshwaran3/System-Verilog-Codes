// Create a class G extended from class F. Add a class constructor to assign the value for the class F variable.

class f;
  int data;
  string name;
  function new(int data,string name);
    this.data=data;
    this.name=name;
  endfunction
  
endclass

class g extends f;
  function new(int data,string name);
    super.new(data,name);
  endfunction
  function void display();
     $display("DATA = %0d | NAME = %s ",data,name);
  endfunction
    
endclass

module ex;
  g detail;
  initial begin
    detail=new(10,"SUCCESS");
    detail.display();
  end
endmodule

DATA = 10 | NAME = SUCCESS 

  
    
