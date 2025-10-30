module student_record;
  typedef struct {
   int  id;      
    string name;       
    real gpa;          
    bit passed;        
} Student;

  Student s1 = '{8'h1A, "virat", 7.91, 1'b1};

    initial begin
        $display("Student ID: %0h", s1.id);
        $display("Student Name: %s", s1.name);
      $display("Student CGPA: %0.2f", s1.gpa);
        $display("Passed: %b", s1.passed);
    end

endmodule

# run -all
# Student ID: 1a
# Student Name: virat
# Student CGPA: 7.91
# Passed: 1
