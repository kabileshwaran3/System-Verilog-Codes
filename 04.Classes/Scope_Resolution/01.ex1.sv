class shop;
  static string biscuit;
  int rate;
  
  static function void display();
    $display("The biscuit available in the shop :%s ",biscuit);
  endfunction
endclass

module ex;
  shop s1;
  initial begin
    s1=new();
    shop :: biscuit="Marie Gold";
    shop :: display();
    
    shop ::biscuit="GOOD DAY";
    shop :: display();
  end
endmodule

# The biscuit available in the shop :Marie Gold 
# The biscuit available in the shop :GOOD DAY
