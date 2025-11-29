// Write code for queue built-in methods: size, insert (at n/2, at n, delete n‑1), pop_front, pop_back, push_front, push_back.

module tb;
  int a[$];
  int n;
  initial begin
    a='{10,20,30,40,50};
    $display("Initial q= %0p", a);
    n=a.size();
    $display("Initial q= %0p", a);
    a.insert(n/2,50);
    $display("Initial q= %0p", a);
    a.insert(n,100);
    $display("Initial q= %0p", a);
    n=a.size();
    a.delete(n-1);
    $display("remainig data=%0p",a);
    a.pop_front();
    $display("pop_front data =%p",a);
    a.pop_back();
    $display("pop_back data = %0p",a);
    a.push_front(11);
    $display("push_front data=%0p",a);
    a.push_back(51);
    $display("push_back data =%0p",a);
        
  end
endmodule

# Initial q= 10 20 30 40 50
# Initial q= 10 20 30 40 50
# Initial q= 10 20 50 30 40 50
# Initial q= 10 20 50 30 40 100 50
# remainig data=10 20 50 30 40 100
# pop_front data ='{20, 50, 30, 40, 100}
# pop_back data = 20 50 30 40
# push_front data=11 20 50 30 40
# push_back data =11 20 50 30 40 51
