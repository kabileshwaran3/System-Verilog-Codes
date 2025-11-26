class top;
  rand bit x;
  rand bit [7:0]data;
  
  constraint c2{solve x before data;}
  constraint c1{if (x==1)
                data==0;}
  function void display();
    $display("TOP class x = %0d | data = %0d",x,data);
  endfunction
endclass

module ex;
  top t1;
  initial begin
    t1=new();
    repeat(10)begin
    t1.randomize();
    t1.display();
    end
  end
endmodule

# TOP class x = 0 | data = 198
# TOP class x = 0 | data = 137
# TOP class x = 0 | data = 101
# TOP class x = 0 | data = 16
# TOP class x = 1 | data = 0
# TOP class x = 0 | data = 103
# TOP class x = 1 | data = 0
# TOP class x = 1 | data = 0
# TOP class x = 1 | data = 0
# TOP class x = 1 | data = 0
