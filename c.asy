settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");
texpreamble("\setCJKmainfont{Microsoft YaHei}");

size(200);
pair O=(0,0);
draw(Label("东1",EndPoint),O--E,Arrow);
draw(Label("北",EndPoint),O--N,Arrow);
draw(Label("西",EndPoint),O--W,Arrow);
draw(Label("南",EndPoint),O--S,Arrow);
draw(Label("东北",EndPoint),O--NE,Arrow);
draw(Label("西北",EndPoint),O--NW,Arrow);
draw(Label("东南",EndPoint),O--SE,Arrow);
draw(Label("西南",EndPoint),O--SW,Arrow);

/*settings.tex="xelatex";
//settings.prc=false;
texpreamble("\usepackage{xeCJK}");
texpreamble("\setCJKmainfont{SimSun}");
//texpreamble("\setCJKmainfont{Adobe Song Std}");
import three;
size(200);
draw(unitbox,red);
label("顶点$A$",(1,1,1),2Z);
*/