// Create an object for the class and invoke display function. Convert display as pure virtual method and invoke the method.

virtual class base;
  int data;
  string name;
  
  pure virtual function void display();
    endclass
    
    class child extends base;
      function new(int data,string name);
        this.data=data;
        this.name=name;
      endfunction
      
      function void display();
        $display("DATA = %0d | NAME = %0s" ,data,name);
      endfunction
    endclass
    
    module ex;
      child c1;
      initial begin
        c1=new(18,"SILICON");
        c1.display();
      end
    endmodule
    
    DATA = 18 | NAME = SILICON
