module packed_union;
  typedef union packed{ reg[7:0]roll_num;
                       logic[7:0]sub_mark;
                       reg[7:0]total_mark;}student_detail;
  initial begin
    student_detail m1,m2;
    m1.roll_num=3;
    m1.sub_mark=50;
    m1.total_mark=75;
    $display("Packed Student-1 Detail=%p",m1);
    m2.roll_num=6;
    m2.sub_mark=40;
    m2.total_mark=55;
    $display("Packed Student-2 Detail=%p",m2);

  end
endmodule

# run -all
# Packed Student-1 Detail='{roll_num:75, sub_mark:75, total_mark:75}
# Packed Student-2 Detail='{roll_num:55, sub_mark:55, total_mark:55}
