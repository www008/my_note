import geometry;
import graph;


size(200,0);
pair A=(-1,-1),B=(1,-1),C=(1,1),D=(-1,1);

dot("$A$",A,SW);
dot("$B$",B,SE);
dot("$C$",C,NE);
dot("$D$",D,NW);


draw(A--B,dashdotted,Arrow);
draw(B--C,EndArrow);
draw(C--D,dotted,BeginArrow);
//draw((0,0)--(2,0),Arrows);
draw(D--A,dashed,MidArrow);

perpendicular(A,NE,A--B);
draw(arc(A,B,C,0.1),Arrow);

xaxis("$x$",Arrow);
yaxis("$y$",Arrow);