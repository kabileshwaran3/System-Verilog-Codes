class items;
  typedef enum{ball,bat,stump,glove}criket;
endclass

class play extends items;
  function void display();
    $display("criket items= %s",items :: bat);
  endfunction
endclass

module ex;
  play p1;
  initial begin
    p1=new();
    p1.display();
  end
endmodule

# criket items= bat
