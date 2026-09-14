module alu_tb;

    logic [7:0] A;
    logic [7:0] B;
    logic [2:0] OP;
    logic [7:0] Y;

    alu dut (
        .A(A),
        .B(B),
        .OP(OP),
        .Y(Y)
    );

    initial begin

        A = 8'd5;
        B = 8'd3;

        OP = 3'b000;
        #10;
        $display("ADD: A=%d B=%d Y=%d", A, B, Y);

        OP = 3'b001;
        #10;
        $display("SUB: A=%d B=%d Y=%d", A, B, Y);

        OP = 3'b010;
        #10;
        $display("AND: A=%d B=%d Y=%d", A, B, Y);

        OP = 3'b011;
        #10;
        $display("OR : A=%d B=%d Y=%d", A, B, Y);

        OP = 3'b100;
        #10;
        $display("XOR: A=%d B=%d Y=%d", A, B, Y);

        OP = 3'b101;
        #10;
        $display("SLT: A=%d B=%d Y=%d", A, B, Y);

    end

endmodule