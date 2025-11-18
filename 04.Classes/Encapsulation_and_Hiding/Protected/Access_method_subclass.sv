class header;
  protected int price;
  string brand;
  function new();
    price=200000;
    brand="AUDI";
  endfunction
  
  protected function void display_h();
    $display("BRAND = %s  PRICE = %0d",brand,price);
  endfunction
endclass

class child_1 extends header;
  int model;
  function void display();
    display_h();
    $display("MODEL = %0d",model);
  endfunction 
endclass

module protect;
  child_1 c1;
  initial begin
    c1=new();
    c1.model=2025;
    c1.display();
  end
endmodule

BRAND = AUDI  PRICE = 200000
MODEL = 2025
