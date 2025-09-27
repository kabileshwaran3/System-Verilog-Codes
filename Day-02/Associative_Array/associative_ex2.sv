module associative_ex2;
  int data[string];
  
  initial begin
    data["mahi"]=45;
    data["hit"]=70;
    data["virat"]=100;
    
    $display("The mark of mahi =%0d",data["mahi"]);
    $display("The mark of hit=%0d",data["hit"]);
    $display("The mark of virat=%0d",data["virat"]);
  end
endmodule

output
# The mark of mahi =45
# The mark of hit=70
# The mark of virat=100
