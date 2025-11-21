class even;
  rand bit[7:0] data;
  constraint c1{data%2==0;}
  function void display();
    $display("Displaying even number= %0d",data);
  endfunction
endclass

class odd;
  rand bit[7:0] data_2;
  constraint c2{data_2%2!=0;}
  function void display();
    $display("Display odd numbers =%0d",data_2);
  endfunction
endclass

module ex;
  even e1;
  odd o1;
  initial begin
    repeat (5)begin
      e1=new();
      e1.randomize();
      e1.display();
    end
    repeat(5)begin
      o1=new();
      o1.randomize();
      o1.display();
    end
  end
endmodule

# Displaying even number= 6
# Displaying even number= 208
# Displaying even number= 174
# Displaying even number= 60
# Displaying even number= 98
# Display odd numbers =145
# Display odd numbers =97
# Display odd numbers =73
# Display odd numbers =117
# Display odd numbers =167
