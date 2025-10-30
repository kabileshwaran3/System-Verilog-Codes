module structure_pack;
  struct packed{bit[2:0]data;
                logic [2:0]value;
                reg[2:0]store;}detail;
  initial begin
    detail.data=1'b1;
    detail.value=3;
    detail.store=6;
    $display("structure packed details=%p",detail);
  end
  
  
endmodule

# structure packed details='{data:1, value:3, store:6}
