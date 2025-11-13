// Code your design here
class station;
  string name;
  int seat_no;
  
  extern function void display();
    extern task screen(string name,int seat_no);

      endclass
      
      function void station :: display();
        $display("Train name =%s seat_no=%0d",name,seat_no);
      endfunction
      
      task station ::screen(string name,int seat_no);
        this.name=name;
        this.seat_no=seat_no;
        $display("Train name=%s,seat_no=%0d",name,seat_no);
      endtask
      
      
module ex;
  station s1,s2;
  initial begin
    s1=new();
    s1.name="Kovai_sf_express";
    s1.seat_no=49;
    s1.display();
    
    s2=new();
    s2.screen("salem SF express",12);
  end
endmodule

# Train name =Kovai_sf_express seat_no=49
# Train name=salem SF express,seat_no=12      
    
      
