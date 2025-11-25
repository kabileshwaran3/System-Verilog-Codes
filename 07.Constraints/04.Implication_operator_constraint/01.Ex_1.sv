// Code your design here
class member;
  randc bit [6:0] mark;
  rand enum {pass,fail}status;
  
  constraint c1{(status == fail) -> mark<35; mark<100;}
  constraint c2{(status == pass) -> mark>35;}
  
endclass

module ex;
  member m1;
  initial begin
    repeat(5)begin
    m1=new();
      m1.randomize();
      $display("status of person = %s Mark of person = %0d",m1.status.name(),m1.mark);
    end
  end
endmodule

# status of person = fail Mark of person = 23
# status of person = pass Mark of person = 73
# status of person = pass Mark of person = 87
# status of person = pass Mark of person = 87
# status of person = fail Mark of person = 26
