class Ball {
 color c;
 float xpos;
 float ypos;
 float xvel;
 float yvel;
 float size;
 
 Ball() {
   xvel = random(1,10);
   yvel = random(1,10);
   c = color((int) random(0,256),(int) random(0,256),(int) random(0,256));
   size = random(5,150);
   xpos = random(size,600-size);
   ypos = random(size,600-size);
 }
 
 void move() {
  if (xpos > 600-size || xpos < size) xvel = -xvel;
  if (ypos > 600-size || ypos < size) yvel = -yvel;
  xpos += xvel;
  ypos += yvel;
 }
}