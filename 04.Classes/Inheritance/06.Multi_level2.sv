class parent_class;
  string name1;
  
  function void parent_dis();
    $display("Calling parent class by child class--( %s)",name1);
  endfunction
endclass

class child_1 extends parent_class;
  string name2;
  
  function void display_chi1();
    $display("Calling child_1 by child_2 --(%s)",name2);
  endfunction
endclass

class child_2 extends child_1;
  string name3;
  
  function void display_chi2();
    $display("child_2 class is Displayed --(%s)",name3);
  endfunction
endclass

module ex;
  child_2 c1;
  initial begin
    c1=new();
    c1.name1="Parent_class";
    c1.name2="Child1_class1";
    c1.name3="Child2_class";
    c1.parent_dis();
    c1.display_chi1();
    c1.display_chi2();
  end
endmodule

# Calling parent class by child class--( Parent_class)
# Calling child_1 by child_2 --(Child1_class1)
# child_2 class is Displayed --(Child2_class)
