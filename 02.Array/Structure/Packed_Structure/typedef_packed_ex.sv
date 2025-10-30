// Code your design here
module packed_struct;
  typedef struct packed{bit[3:0]emp_id;
                        logic[4:0]seat_no;
                        reg[2:0]add_id;}details;
  
  initial begin
    details emp1,emp2;
    emp1.emp_id=4'b1111;
    emp1.seat_no=3'b101;
    emp1.add_id=2'b10;
    
    $display ("First employee detail emp1 =[%p]",emp1);
    
    emp2='{12,8,4};
    $display ("second employee detailemp2=[%p]",emp2);
    
  end
endmodule

# First employee detail emp1 =['{emp_id:15, seat_no:5, add_id:2}]
# second employee detailemp2=['{emp_id:12, seat_no:8, add_id:4}]
