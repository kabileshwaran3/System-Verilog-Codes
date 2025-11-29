// Create a class B extended from class A with 2 different data type variables.

class a;
  int data;
  string name;
  function new(int data,string name);
    this.data=data;
    this.name=name;
  endfunction
endclass

class c extends  a;
  real balance;
  bit[5:0]no;
  
  function new(int data,string name,real balance,bit[5:0]no);
    super.new(data,name);
    this.balance=balance;
    this.no=no;
  endfunction
  
  function void display();
    $display("DATA = %0d | NAMe = %0s | BALANCE = %0d | NO = %0d ",data,name,balance,no);
  endfunction
endclass
  
  module ex;
    c one;
    initial begin
      one=new(1,"VIRAT",100,18);
      one.display();
    end
  endmodule

DATA = 1 | NAMe = VIRAT | BALANCE = 100 | NO = 18 

      
   
  
  
