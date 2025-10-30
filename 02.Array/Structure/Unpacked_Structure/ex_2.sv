
module student_record;
  typedef struct {
    int id;      
    string name;       
    real cgpa;          
    bit passed;        
} student;

  student s1 = '{8'h18, "virat", 7.91, 1'b1};
  student s2= '{8'h2A,"Rohit",6.91,1'b1};

    initial begin
    $display("Student ID: %0h", s1.id);
        $display("Student Name: %s", s1.name);
      $display("Student CGPA: %0.2f", s1.cgpa);
        $display("Passed: %b", s1.passed);
      $display("Student ID: %0h", s2.id);
      $display("Student Name: %s", s2.name);
      $display("Student CGPA: %0.2f", s2.cgpa);
      $display("Passed: %b", s2.passed);
      
      $display("Student Details S1 =%p",s1);
      $display("Student Details S2 =%p",s2);
      
    end

endmodule

# Student ID: 18
# Student Name: virat
# Student CGPA: 7.91
# Passed: 1
# Student ID: 2a
# Student Name: Rohit
# Student CGPA: 6.91
# Passed: 1
# Student Details S1 ='{id:24, name:"virat", cgpa:7.91, passed:1}
# Student Details S2 ='{id:42, name:"Rohit", cgpa:6.91, passed:1}


