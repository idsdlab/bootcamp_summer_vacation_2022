`timescale 1ns/1ps

module testbench();

    reg in;
    wire out;

    not_gate dut (
      .in(in),
      .out(out)
    );

    task gen_vector;
        input value;

        begin
          in = value;
          #10;
        end
    endtask

    initial
    begin
      gen_vector(1'b0);
      gen_vector(1'b1);
      gen_vector(1'b0);
      gen_vector(1'b1);
    end

    initial
    begin
        #5 $display("%t ns: %b - %b", $time, in, out);
        #10 $display("%t ns: %b - %b", $time, in, out);
        #10 $display("%t ns: %b - %b", $time, in, out);
        #10 $display("%t ns: %b - %b", $time, in, out);
	      #10;
        $stop;
    end

endmodule
