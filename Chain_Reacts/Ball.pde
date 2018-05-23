class Ball {
 color c;
 float xpos;
 float ypos;
 float xvel;
 float yvel;
 
 Ball() {
   xpos = random(0,600);
   ypos = random(0,600);
   xvel = random(1,10);
   yvel = random(1,10);
   c = color((int) random(0,256),(int) random(0,256),(int) random(0,256));
 }
 
 void move() {
  if (xpos > 600 || xpos < 0) xvel = -xvel;
  if (ypos > 600 || ypos < 0) yvel = -yvel;
  xpos += xvel;
  ypos += yvel;
 }
}