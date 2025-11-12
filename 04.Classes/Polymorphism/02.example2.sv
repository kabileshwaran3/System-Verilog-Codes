class showroom;
  virtual function name();
    $display("Brand");
  endfunction
  
  virtual task feature();
    $display("petrol,cc");
  endtask
endclass

class bike1 extends showroom;
  function name();
    $display("Royal enfiled");
  endfunction
  
  task feature();
    $display("Petrol Engine,350cc");
  endtask
endclass

class bike2 extends showroom;
  function name();
    $display("Java");
  endfunction
  task feature();
    $display("Petrol,250cc");
  endtask
endclass

class scooty extends bike2;
  function name();
    $display("Yamaha Dio");
  endfunction
  
  task feature();
    $display("petrol,100cc");
  endtask
endclass

module ex;
  showroom s[1:0];
  initial begin
    bike1 b1;
    bike2 b2;
    scooty b3;
    
    b1=new();
    b2=new();
    b3=new();
    s[0]=b1;
    s[1]=b2;
    b2=b3;
    
    s[0].name();
    s[0].feature();
    
    s[1].name();
    s[1].feature();
    
    b2.name();
    b2.feature();
  end
endmodule

# Royal enfiled
# Petrol Engine,350cc
# Java
# Petrol,250cc
# Yamaha Dio
# petrol,100cc
