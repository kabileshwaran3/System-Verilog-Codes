class prime;
  rand bit[7:0]no;
  
  constraint c1{no inside{[1:200]};}
  constraint c2{no>1;
                if(no%2==0)
                  no==2;
                else
                  no!=2;
                if(no%3==0)
                  no==3;
                  else
                    no!=3;
                if(no%5==0)
                  no==5;
                else
                  no!=5;
                if(no%7==0)
                  no==7;
                else
                  no!=7;}
  function void display();
    $display("PRIME NUMBER = %0d",no);
  endfunction
endclass
module ex;
  prime e1;
  initial begin
    e1=new();
    repeat(10)begin
      e1.randomize();
      e1.display();
    end
  end
endmodule

# PRIME NUMBER = 71
# PRIME NUMBER = 47
# PRIME NUMBER = 143
# PRIME NUMBER = 61
# PRIME NUMBER = 173
# PRIME NUMBER = 103
# PRIME NUMBER = 23
# PRIME NUMBER = 167
# PRIME NUMBER = 199
# PRIME NUMBER = 139

                
                
