// Arithmetic Logic Unit

module alu (
  input [1:0] aluctrl,
  input data_in_1,
  input data_in_2,
  output reg data_out,
  output zero_flag
);

assign zero_flag = (data_out == 0) ? 1'b1 : 1'b0;

always @(*)
begin
  case(aluctrl)
    2'b00:  data_out = data_in_1 & data_in_2;
    2'b01:  data_out = data_in_1 | data_in_2;
    2'b10:  data_out = data_in_1 ^ data_in_2;
    2'b11:  data_out = !(data_in_1 ^ data_in_2); 
    default: data_out = 1'bx;
  endcase
end

endmodule
