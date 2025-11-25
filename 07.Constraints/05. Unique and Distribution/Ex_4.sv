class header;
   rand int value;
  
  constraint c1{value dist{10:/2, [21:30]:/5, [50:70]:/6};}
  
  function void display();
    $display("VALUE = %0d",value);
  endfunction
endclass

module ex;
  header h1;
  initial begin
    h1=new();
    repeat(10)begin
      h1.randomize();
      h1.display();
    end
  end
endmodule


VALUE = 54
VALUE = 23
VALUE = 10
VALUE = 66
VALUE = 23
VALUE = 52
VALUE = 69
VALUE = 23
VALUE = 62
VALUE = 55
