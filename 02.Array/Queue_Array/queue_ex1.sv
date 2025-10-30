// Code your design here
module queue;
  int data[$];
  string data2[$];
  
  initial begin
    data='{10,20,30,40,50};
    $display("queue data =%p",data);
    data.insert(2,25);
    $display("After inserting data=%p",data);
    data.push_front(1);
    $display("push front data=%p",data);
    data.push_back(100);
    $display("push back data=%p",data);
    data.delete(4);
    $display("After delete remain data=%p",data);
    data.pop_front();
    $display("pop front data=%p",data);
    data.pop_back();
    $display("pop back data=%p",data);
    data.delete();
    $display("After delete=%p",data);
    data2='{"red","yellow","green","pink"};
    $display("string data =%p",data2);
    data2.pop_front();
    $display("pop front data=%p",data2);
    data2.delete(1);
    $display("After delete=%p",data2);
    data2.delete();
    $display("To make empty=%p",data2);
  end
endmodule


output
# queue data ='{10, 20, 30, 40, 50}
# After inserting data='{10, 20, 25, 30, 40, 50}
# push front data='{1, 10, 20, 25, 30, 40, 50}
# push back data='{1, 10, 20, 25, 30, 40, 50, 100}
# After delete remain data='{1, 10, 20, 25, 40, 50, 100}
# pop front data='{10, 20, 25, 40, 50, 100}
# pop back data='{10, 20, 25, 40, 50}
# After delete='{}
# string data ='{"red", "yellow", "green", "pink"}
# pop front data='{"yellow", "green", "pink"}
# After delete='{"yellow", "pink"}
# To make empty='{}
