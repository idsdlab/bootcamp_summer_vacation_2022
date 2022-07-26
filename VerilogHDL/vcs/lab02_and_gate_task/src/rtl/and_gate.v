`timescale 1ns/1ps

module and_gate (
    in1,
    in2,
    out
);

  input in1;
  input in2;
  output out;

  assign out = in1 & in2;

endmodule
