class existing_class;
  int sum;
  function add_val(int a,int b);
    sum=a+b;
  endfunction
endclass

class child_1 extends existing_class;
  int sub;
  function sub_val(int a,int b);
    sub=a-b;
  endfunction
endclass

class child_2 extends child_1;
  int mul;
  function mul_val(int a, int b);
    mul=a*b;
  endfunction
endclass

class child_3 extends child_2;
  int div;
  function div_val(int a, int b);
    div=a/b;
  endfunction
endclass

module perform;
  child_3 m1;
  initial begin
    m1=new();
    m1.add_val(10,8);
    m1.sub_val(30,12);
    m1.mul_val(9,2);
    m1.div_val(36,2);
    $display("Addtion operation - %0d \n Subtraction operation - %0d \n Multiplication operation - %0d \n Division operation - %0d",m1.sum,m1.sub,m1.mul,m1.div);

   

  end
endmodule
  

# Addtion operation - 18 
#  Subtraction operation - 18 
#  Multiplication operation - 18 
#  Division operation - 18
