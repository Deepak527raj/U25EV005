
module full_adder_3bit_behavioral(a,b,cin,s,cout);

input a,b,cin;
output reg s,cout;
always@ (a,b,cin)
begin
s = a^b^cin ;
cout=(a&b)|(cin&b)|(a&cin);
end
endmodule
