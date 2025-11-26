// Code your testbench here
// or browse Examples
class example;
  rand int value;
  rand bit[7:0] id;
  rand int addrs;
  int max=150;
  int min=50;
  
  constraint c1{value inside{[100:200]};}
  constraint c2{id inside{10,20,30,40,50};}
  constraint c3{addrs inside{[1:10],[min:max]};}
  
  function void display();
    $display("VALUE = %0d || ID = %0d || ADDRS = %0d",value,id,addrs);
  endfunction
endclass

module main;
  example e1;
  initial begin
    e1=new();
    repeat(10)begin
      e1.randomize();
      e1.display();
    end
  end
endmodule

# VALUE = 113 || ID = 50 || ADDRS = 134
# VALUE = 107 || ID = 20 || ADDRS = 82
# VALUE = 141 || ID = 50 || ADDRS = 126
# VALUE = 143 || ID = 10 || ADDRS = 113
# VALUE = 138 || ID = 10 || ADDRS = 98
# VALUE = 133 || ID = 10 || ADDRS = 63
# VALUE = 182 || ID = 20 || ADDRS = 60
# VALUE = 184 || ID = 40 || ADDRS = 102
# VALUE = 144 || ID = 40 || ADDRS = 9
# VALUE = 156 || ID = 50 || ADDRS = 78
