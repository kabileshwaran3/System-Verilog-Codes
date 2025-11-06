// Code your design here
class ex;
  bit[31:0]data;
  int value;
  
  function new(bit [31:0]data,int value);
   this.data=data;
    this.value=value;
  endfunction
endclass

module assi;
  ex p1;
  initial begin
    p1=new(150,30);
  
  $display("The data =%0d,The value =%0d",p1.data,p1.value);
  end
endmodule

# The data =150,The value =30
