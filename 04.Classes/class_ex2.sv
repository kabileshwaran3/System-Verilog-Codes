//write a class book properties tittlt,author,and price.create a 2 object and print the detail.


class book;
  string tittle;
  string author;
  int price;
  function  display();
    $display("The tittle of the book %s and the author %s and the price of the book %0d",tittle,author,price);
  endfunction
endclass

module tb;
  book b1,b2;
  initial begin
      b1=new();
  b2=new();
  b1.tittle="Money";
  b1.author="Virat";
  b1.price=499;
  b1.display();
  b2.tittle="psychology of money";
  b2.author="Morgan";
  b2.price=799;
  b2.display();
  end
endmodule


# The tittle of the book [Money] and the author [Virat] and the price of the book [499]
# The tittle of the book [psychology of money] and the author [Morgan] and the price of the book [799]
