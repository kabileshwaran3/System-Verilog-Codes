class bike;
  string model;
  int cc;
  extern function void display();
    extern task display_1();
endclass
      
      function void bike :: display();
        $display("Model Name =%s, CC =%0d",model,cc);
      endfunction
      
      task bike :: display_1();
        $display("Model 2 =%s, CC=%0d",model,cc);
      endtask
      
module ex;
  bike b1,b2;
  initial begin
    b1=new();
    b2=new();
    
    b1.model="Royal Enfield";
    b1.cc=350;
    b1.display();
    
    b2.model="Bullet";
    b2.cc=650;
    b2.display_1();
  end
endmodule

Model Name =Royal Enfield, CC =350
Model 2 =Bullet, CC=650      
      
      
      
