`timescale 1ns/1ps

module task_not_gate_module (
    output vector
);

    reg in;

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

    assign vector = in;

endmodule
