module mux8to1 (
    input [7:0] data_in,       // 8 input data lines
    input [2:0] select,        // 3-bit select lines
    output reg data_out        // Single output
);

    integer i; // Loop variable

    always @(*) begin
        data_out = 1'b0; // Default value
        for (i = 0; i < 8; i = i + 1) begin
            if (select == i) begin
                data_out = data_in[i];
            end
        end
    end

endmodule
