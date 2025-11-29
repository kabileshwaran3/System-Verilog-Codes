// Write a module that checks if a string is a palindrome (same forwards and backwards), e.g., check if "racecar" is a palindrome.

module tb;
  string s;
  int i;
  bit cor;
  int len;
  initial begin
    s="racecar";
    len=s.len();
    cor=1;
    for(i=0;i<len/2;i++)begin
      if(s[i]!=s[len-1-i])begin
        cor=0;
        break;
      end
    end
    if(cor)
      $display("PALINDROME");
  else
    $display("NOT A PALINDROME");
  end
endmodule
