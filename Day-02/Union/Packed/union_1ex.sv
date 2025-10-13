module union_packed;
  union {reg[7:0]room_no;
               logic[7:0]seat_no;
               reg[7:0]key_no;}client;
  initial begin
    client.room_no=5;
    $display(" After room no assigned Packed Union Client Detail =%d %d %d",client.room_no,client.seat_no,client.key_no);
    client.seat_no=10;
    $display(" After seat assigned Packed Union Client Detail =%d %d %d",client.room_no,client.seat_no,client.key_no);
    client.key_no=35;
    $display("After key assigned Packed Union Client Detail =%d %d %d",client.room_no,client.seat_no,client.key_no);
    $display("Packed Union Client Detail =%p",client);
  end
endmodule


#  After room no assigned Packed Union Client Detail =  5   5   5
#  After seat assigned Packed Union Client Detail = 10  10  10
# After key assigned Packed Union Client Detail = 35  35  35
# Packed Union Client Detail ='{room_no:35, seat_no:35, key_no:35}
