// Code your design here
class packet;
  int a;
  int b;
  string name;
endclass

module ex;
  packet pct1,pct2;
  initial begin
  pct1=new();
  pct1.a=4;
  pct1.b=4;
  pct1.name="Virat";
    $display("The value of a %0d, The value of b %0d, The name is %s", pct1.a, pct1.b, pct1.name);
    pct2=pct1;
    pct2.a=10;
    $display("The value of a %0d, The value of b %0d, The name is %s", pct2.a, pct2.b, pct2.name);
    pct2.name="Rohit";
        $display("The value of a %0d, The value of b %0d, The name is %s", pct2.a, pct2.b, pct2.name);
        $display("The value of a %0d, The value of b %0d, The name is %s", pct1.a, pct1.b, pct1.name);


    

    
  end
endmodule
  

# The value of a 4, The value of b 4, The name is Virat
# The value of a 10, The value of b 4, The name is Virat
# The value of a 10, The value of b 4, The name is Rohit
# The value of a 10, The value of b 4, The name is Rohit
