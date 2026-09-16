module tb_half_adder;
  reg a, b;
  wire sum, carry;

  tt_um_kamalesh_halfadder uut (.a(a), .b(b), .sum(sum), .carry(carry));

  initial begin
    $display("A B | SUM CARRY");
    a=0; b=0; #10 $display("%b %b | %b   %b", a, b, sum, carry);
    a=0; b=1; #10 $display("%b %b | %b   %b", a, b, sum, carry);
    a=1; b=0; #10 $display("%b %b | %b   %b", a, b, sum, carry);
    a=1; b=1; #10 $display("%b %b | %b   %b", a, b, sum, carry);
    $finish;
  end
endmodule
