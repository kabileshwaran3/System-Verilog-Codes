class station;
  rand bit[4:0]bus1;
  randc bit[4:0]bus2;
  
  function void pre_randomize();
    $display("Value in pre_randomize bus1=%0d bus2=%0d",bus1,bus2);
  endfunction
  
  function void post_randomize();
    $display("value in post_randomize bus1 = %0d bus2=%0d",bus1,bus2);
  endfunction
endclass

module stop;
  station s1;
  initial begin
    s1=new();
    repeat(2)begin
    s1.randomize();
      $display("-----------------------------------------");
    end
    $display("Disable randomize");
    s1.rand_mode(0);
    s1.bus1=22;
    s1.bus2=23;
    repeat(2)begin
          s1.randomize();

      $display("value in  bus1 = %0d bus2=%0d",s1.bus1,s1.bus2);
          $display("--------------------------------------");

    end
    s1.rand_mode(1);
    repeat(5)begin
          s1.randomize();
    end

  end
endmodule

# Value in pre_randomize bus1=0 bus2=0
# value in post_randomize bus1 = 6 bus2=25
# -----------------------------------------
# Value in pre_randomize bus1=6 bus2=25
# value in post_randomize bus1 = 28 bus2=28
# -----------------------------------------
# Disable randomize
# Value in pre_randomize bus1=22 bus2=23
# value in post_randomize bus1 = 22 bus2=23
# value in  bus1 = 22 bus2=23
# --------------------------------------
# Value in pre_randomize bus1=22 bus2=23
# value in post_randomize bus1 = 22 bus2=23
# value in  bus1 = 22 bus2=23
# --------------------------------------
# Value in pre_randomize bus1=22 bus2=23
# value in post_randomize bus1 = 17 bus2=10
# Value in pre_randomize bus1=17 bus2=10
# value in post_randomize bus1 = 6 bus2=2
# Value in pre_randomize bus1=6 bus2=2
# value in post_randomize bus1 = 16 bus2=14
# Value in pre_randomize bus1=16 bus2=14
# value in post_randomize bus1 = 22 bus2=3
# Value in pre_randomize bus1=22 bus2=3
# value in post_randomize bus1 = 31 bus2=27
