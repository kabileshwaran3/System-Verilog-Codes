// Declare a class BaseClass with a virtual task name inside it. Declare 6 derived classes from BaseClass. 
//Each derived class must implement task name to display a different Silicon Craft student name, and use a 
//BaseClass handle to display all names polymorphically.class base;
  virtual task name();
  endtask
endclass

class stu_1 extends base;
  virtual task name();
    $display("Name of 1 student : VIRAT ");
  endtask
endclass

class stu_2 extends base;
  virtual task name();
    $display("Name of 2 student : Dhoni");
  endtask
endclass

class stu_3 extends base;
  virtual task name ();
    $display("Name of 3 student : Rohit");
  endtask
endclass

class stu_4 extends base;
  virtual task name();
    $display("Name of 4 student: Iyer");
  endtask
endclass

module ex;
  base  b1;
  stu_1 s1;
  stu_2 s2;
  stu_3 s3;
  stu_4 s4;

  initial begin
    s1 = new();   b1 = s1;  b1.name();
    s2 = new();   b1 = s2;  b1.name();
    s3 = new();   b1 = s3;  b1.name();
    s4 = new();   b1 = s4;  b1.name();
  end
endmodule

Name of 1 student : VIRAT 
Name of 2 student : Dhoni
Name of 3 student : Rohit
Name of 4 student: Iyer
