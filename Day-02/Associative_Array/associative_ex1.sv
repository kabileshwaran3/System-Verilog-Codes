module associative_ex ();

int data[*];  
string data2[string];  
  initial begin
    data = '{ 1 : 20 , 10 : 30 , 30 : 50};

    data2 = '{ "fruits" : "pineapple","vegetables" : "cucumber" , "season" : "monsoon"};
    $display("The data which are in  = %p",data);
    $display("The string which are in  = %p",data2);
 
  end

endmodule

output
# The data which are in  = '{1:20, 10:30, 30:50 }
# The string which are in  = '{"fruits":"pineapple", "season":"monsoon", "vegetables":"cucumber" }
