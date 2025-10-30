module union_unpacked;
  union { int data;
         longint value;}detail;

  initial begin
    detail.data=16'hfffff;
    $display("Unpacked Union detail %h",detail.data);
    detail.value=8'h7a;
    $display("Unpacked Union detail %h",detail.value);
    
    $display("Unpacked Union detail %h",detail.data);
    $display("At the end of time %p",detail);


  end
  
endmodule


# run -all
# Unpacked Union detail 0000ffff
# Unpacked Union detail 000000000000007a
# Unpacked Union detail 0000007a
# At the end of time '{data:122, value:122}
