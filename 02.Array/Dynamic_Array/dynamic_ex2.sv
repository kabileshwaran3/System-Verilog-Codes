// Code your design here
module dynamic_array;
  int data[];
  initial begin
    data='{34,64,67,23,98,85,22,75,25,1,88,94};
      foreach(data[i])begin
        $display("Dynamic Array Data [%0d]=%0d",i,data[i]);
      end
    $display("size of an array=%0d",data.size());
    data.reverse();
    $display(data);
    data.sort();
    $display(data);
    data.rsort();
    $display(data);
    data.shuffle();
    $display(data);
    data.delete();
    $display("size of data after delete %0d",data.size());
    
    
    end
    endmodule

output
# Dynamic Array Data [0]=34
# Dynamic Array Data [1]=64
# Dynamic Array Data [2]=67
# Dynamic Array Data [3]=23
# Dynamic Array Data [4]=98
# Dynamic Array Data [5]=85
# Dynamic Array Data [6]=22
# Dynamic Array Data [7]=75
# Dynamic Array Data [8]=25
# Dynamic Array Data [9]=1
# Dynamic Array Data [10]=88
# Dynamic Array Data [11]=94
# size of an array=12
# 94 88 1 25 75 22 85 98 23 67 64 34
# 1 22 23 25 34 64 67 75 85 88 94 98
# 98 94 88 85 75 67 64 34 25 23 22 1
# 67 98 22 64 88 75 94 23 34 1 85 25
# size of data after delete 0
