module Logical(X,Y,Z,Out,NOut);

input [3:0] X,Y;
input [7:0] Z;
output [3:0] Out;
output [7:0] NOut;

AND A1 (X,Y,Out);
OR O1 (X,Y,Out);
EXOR E1 (X,Y,Out);

NOT N1 (Z,NOut);

endmodule



module AND(X,Y,Out);
input [3:0] X,Y;
output [3:0] Out;

AND_GATE AG0 (X[0],Y[0],Out[0]);
AND_GATE AG1 (X[1],Y[1],Out[1]);
AND_GATE AG2 (X[2],Y[2],Out[2]);
AND_GATE AG3 (X[3],Y[3],Out[3]);

endmodule

module AND_GATE(X,Y,Out);
input  X,Y;
output Out;

assign Out = X&Y;

endmodule



module OR(X,Y,Out);
input [3:0] X,Y;
output [3:0] Out;

OR_GATE OG0 (X[0],Y[0],Out[0]);
OR_GATE OG1 (X[1],Y[1],Out[1]);
OR_GATE OG2 (X[2],Y[2],Out[2]);
OR_GATE OG3 (X[3],Y[3],Out[3]);

endmodule

module OR_GATE(X,Y,Out);
input  X,Y;
output Out;

assign Out = X|Y;

endmodule



module EXOR(X,Y,Out);
input [3:0] X,Y;
output [3:0] Out;

EXOR_GATE EXG0 (X[0],Y[0],Out[0]);
EXOR_GATE EXG1 (X[1],Y[1],Out[1]);
EXOR_GATE EXG2 (X[2],Y[2],Out[2]);
EXOR_GATE EXG3 (X[3],Y[3],Out[3]);

endmodule

module EXOR_GATE(X,Y,Out);
input  X,Y;
output Out;

assign Out = X|Y;

endmodule



module NOT(Z,Out);
input [7:0] Z;
output [7:0] Out;

NOT_GATE NG0 (Z[0],Out[0]);
NOT_GATE NG1 (Z[1],Out[1]);
NOT_GATE NG2 (Z[2],Out[2]);
NOT_GATE NG3 (Z[3],Out[3]);
NOT_GATE NG4 (Z[4],Out[4]);
NOT_GATE NG5 (Z[5],Out[5]);
NOT_GATE NG6 (Z[6],Out[6]);
NOT_GATE NG7 (Z[7],Out[7]);

endmodule

module NOT_GATE(Z,Out);
input  Z;
output Out;

assign Out = ~Z;

endmodule
