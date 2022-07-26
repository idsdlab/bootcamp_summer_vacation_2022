`timescale 1ns/1ps

module testbench();

    wire in;
    wire out;

    task_not_gate_module u_task_module (
       .vector(in)
    );

    not_gate dut (
      .in(in),
      .out(out)
    );

    initial
    begin
        #5 $display("%t ns: %b - %b", $time, in, out);
        #10 $display("%t ns: %b - %b", $time, in, out);
        #10 $display("%t ns: %b - %b", $time, in, out);
        #10 $display("%t ns: %b - %b", $time, in, out);
	      #10;
        $finish;
    end

endmodule
