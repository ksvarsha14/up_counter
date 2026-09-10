module upcounter (
    input  logic clk,
    input  logic reset,
    output logic [3:0] count
);

always @(posedge clk) begin
    if (reset)
        count <= 4'b0000;
    else
        count <= count + 1;
end

endmodule
