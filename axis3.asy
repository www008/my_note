settings.outformat = "pdf";
settings.prc = false;
settings.render=0;
import three;
size(4cm,0);
 
draw(O--2X ^^ O--2Y ^^ O--2Z);
draw(box(O, (0.5, 1.5, 1)), blue);

/*import graph3;

size(200,0);
currentprojection=perspective(10,8,4);

real f(pair z) {return 0.5+exp(-abs(z)^2);}

draw((-1,-1,0)--(1,-1,0)--(1,1,0)--(-1,1,0)--cycle);
draw(arc(0.12Z,0.2,90,60,90,25),ArcArrow3);

surface s=surface(f,(-1,-1),(1,1),nx=5,Spline);

xaxis3("$x$",red,Arrow3);
yaxis3(Label("$y$"),red,Arrow3);
zaxis3(XYZero(extend=true),red,Arrow3);

draw(s,lightgray,meshpen=black+thick(),nolight,render(merge=true));

//Label("$O$",O,-Z+Y,red);
Label("$O$",O,red);
*/
