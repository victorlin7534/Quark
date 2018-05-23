class Ball {
 color c;
 float xpos;
 float ypos;
 float xvel;
 float yvel;
 float size;
 
 Ball() {//randomize every Ball property
   xvel = random(1,10);
   yvel = random(1,10);
   c = color((int) random(0,256),(int) random(0,256),(int) random(0,256));
   size = random(20,100);
   xpos = random(size,600-size);
   ypos = random(size,600-size);
 }
 
 void move() {
  if (xpos > 600-size/2 || xpos < size/2) xvel = -xvel;//reverse direction if reach edge
  if (ypos > 600-size/2 || ypos < size/2) yvel = -yvel;
  xpos += xvel;//change pos based on velocity to simulate movement
  ypos += yvel;
 }
}
