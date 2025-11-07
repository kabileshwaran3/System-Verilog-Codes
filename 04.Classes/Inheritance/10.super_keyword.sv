// Code your design here
class parent;
  int data;
  function new(int data);
    this.data= data;
  endfunction
endclass

class child extends parent;
  int addrs;
  function new(int data,int addrs);
    super.new(data);
    this.addrs=addrs;
  endfunction
endclass

module perform;
  initial begin
      child c1;

    c1=new($urandom_range(10,100),$urandom_range(100,200));
    $display("data= %0d,\naddrs = %0d",c1.data,c1.addrs);
  end
endmodule

# data= 28,
# addrs = 176
