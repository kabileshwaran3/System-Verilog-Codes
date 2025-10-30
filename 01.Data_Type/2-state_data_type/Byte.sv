module byte_type2;
 byte a;
 byte b;
 byte c;
 byte result;
 initial begin
    $display("The value of a,b,c=%d",a,b,c);
    a=8'd10;
    b=8'd30;
    c=8'd20;
    $display("The value of a,b,c=%d",a,b,c);
    result=a+b+c;
    $display("The value of result=%d",result);
    end

endmodule

//output
//The value of a,b,c=   0   0   0
//The value of a,b,c=  10  30  20
//The value of result=  60
