// Write an associative array example and explain its functionality.

module tb;
  int data[string];
  initial begin;
    data["Apple"]=1;
    data["orange"]=2;
    data["Guva"]=3;
    
    $display("Apple rank = %0d",data["Apple"]);
    $display("Orange rank= %0d",data["orange"]);
    $display("Guva rank =%0d",data["Guva"]);
  end 
endmodule

Apple rank = 1
Orange rank= 2
Guva rank =3
