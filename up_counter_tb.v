`timescale 1ns/1ps

module upcounter_tb;

logic clk;
logic reset;
logic [3:0] count;

upcounter dut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    reset = 1;

    #10;
    reset = 0;

    #100;

    $stop;

end

endmodule
