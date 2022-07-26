`timescale 1ns/1ps

module testbench();

    reg in1, in2;
    wire out;

    and_gate dut (
      .in1(in1),
      .in2(in2),
      .out(out)
    );

    task gen_vector;
        input value1;
        input value2;

        begin
          #10 in1 = value1; in2 = value2;
        end

    endtask

    initial
    begin
      gen_vector(1'b0, 1'b0);
      gen_vector(1'b0, 1'b1);
      gen_vector(1'b1, 1'b0);
      gen_vector(1'b1, 1'b1);
    end

    initial
    begin
        #10 $display("%t ns: %b, %b - %b", $time, in1, in2, out);
        #10 $display("%t ns: %b, %b - %b", $time, in1, in2, out);
        #10 $display("%t ns: %b, %b - %b", $time, in1, in2, out);
        #10 $display("%t ns: %b, %b - %b", $time, in1, in2, out);
	      #10;
        $stop;
    end

endmodule
