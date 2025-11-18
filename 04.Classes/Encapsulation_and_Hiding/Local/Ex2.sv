class header;
  local int data;
  function void display(int a);
    data=a;
    $display("Header class data = %0d",data);
  endfunction
endclass

module ex;
  header h1;
  initial begin
    h1=new();
    h1.display(30);
  end
endmodule

Header class data = 30
