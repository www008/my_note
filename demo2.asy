settings.outformat = "pdf";
settings.prc = false;
settings.render=0;
import graph3;
import math;

//settings.tex="xelatex";
//settings.prc=false;
//texpreamble("\usepackage{fontspec}");
//texpreamble("\setmainfont{SimSun}");

texpreamble("\usepackage{CJKutf8}");
//texpreamble("\usepackage{fontspec}");
//texpreamble("\setmainfont{CJK}{UTF8}{gbsn}");
texpreamble("\AtBeginDocument{\begin{CJK*}{UTF8}{gkai}}\AtEndDocument{\clearpage\end{CJK*}}");


//size(8cm,0);
draw((0,0)--(2cm,0),Arrow); label("$Y$", (2.5cm,7), SW);
draw((0,0)--(0,2cm),Arrow); label("$Z$", (7, 2.5cm), SW);
transform tran=rotate(-135,(0,0));
draw((0,0)--tran*(1.8cm,0),Arrow); label("$X$", tran*(1.8cm,0), SW);

draw(arc((0,0), r=4cm, angle1=270, angle2=0),arrow=Arrow(TeXHead));

pen helpline=linewidth(0.2bp)+gray(0.5);

for(int i=0; i<=8; ++i){
    real x = i*cm;
    draw((0,x)--(8cm,x), helpline);
    draw((x,0)--(x,8cm), helpline);
}

pair a=(2cm,1cm), b=(7cm,3cm), c=(3cm,7cm);
draw(a--b--c--cycle);

pair d = 0.5(a+b), e = 0.5(b+c), f = 0.5(c+a);
pair o = extension(d, rotate(90,d)*b, e, rotate(90,e)*b);

draw(circle(o, abs(o-a)), red);

draw(o--d, blue);
draw(o--e, blue);
draw(o--f, blue);

dot(o, red);

path rightangle(pair a, pair b, pair c, real size = 5bp) {
    pair ba = size*unit(a-b);
    pair bc = size*unit(c-b);
    pair bb = ba + bc;
    return shift(b) * (ba--bb--bc);
}

draw(rightangle(b,d,o), blue);
draw(rightangle(b,e,o), blue);
draw(rightangle(c,f,o), blue);

//fontsize(10);
label("$A$", a, SW);
label("$B$", b, SW);
label("$C$", c, SW);
label("$D$", d, SW);
label("$E$", e, SW);
label("$F$", f, SW);
label("$O$", o, SW);

label(minipage("$\triangle ABC的外接圆 $\ $\odot 0$.\\
    .", 2.5cm), (8.2cm, 5cm), E);

label("中文 \TeX",(1,1,1),X+Z);
axes3("$x$","$y$","$z$",Arrow3());
