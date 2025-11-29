// Create a class A with 4 different data type variables.

class a;
  int data;
  string name;
  bit[5:0]value;
  real points;
  function new(int data,string name,bit[5:0]value,real points);
    this.data=data;
    this.name=name;
    this.value=value;
    this.points=points;
  endfunction
endclass

module ex;
  a detail;
  initial begin
    detail=new(30,"VLSI",32,99.9);
    $display("DATA = %0d \n NAME = %0s \n VALUE = %0d \n  POINTS = %2f",detail.data,
             detail.name,detail.value,detail.points);
  end
endmodule

DATA = 30 
 NAME = VLSI 
 VALUE = 32 
  POINTS = 99.900000
    
    
    
