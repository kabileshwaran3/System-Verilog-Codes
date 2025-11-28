

class packet;
  rand byte data[7:0];
  constraint data_c{ foreach(data[i]) 
    data[i] > 10;}
endclass

module  test;
  packet pkt;
  initial  begin
  pkt = new();
  repeat(2) begin
    pkt.randomize();
    $display(" data={ %0p } ",pkt.data);
  end
  end
endmodule

 data={ '{86, 48, 49, 17, 119, 18, 124, 50}  } 
 data={ '{79, 57, 62, 37, 22, 124, 40, 113}  }
