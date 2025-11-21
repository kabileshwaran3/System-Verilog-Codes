class lab;
  rand bit[7:0]id;
  randc int value;
  constraint id_range;
  constraint value_range;
  
endclass
constraint lab :: id_range{ id>10;
                           id<50;}
constraint lab :: value_range{ value > 50;
                              value<100;}

module ex;
  lab l1;
  initial begin
    repeat(5) begin
    l1=new();
    l1.randomize();
      $display ("ID = %0d VALUE = %0d",l1.id,l1.value);
    end
  end
endmodule

ID = 19 VALUE = 98
ID = 13 VALUE = 58
ID = 11 VALUE = 55
ID = 15 VALUE = 64
ID = 29 VALUE = 74
