class Ball {
 final static int MOVING = 0;
 final static int GROWING = 1;
 final static int SHRINKING = 2;
 final static int DEAD = 3;
 
 final float CHANGE_FACTOR = .25;
 final float MAX_RADIUS = 50;
  
 color c;
 float xpos;
 float ypos;
 float xvel;
 float yvel;
 float size;
 int state;
 
 Ball() {//randomize every Ball property
   xvel = random(1,10);
   yvel = random(1,10);
   c = color((int) random(0,256),(int) random(0,256),(int) random(0,256));
   size = 20;
   xpos = random(size,600-size);
   ypos = random(size,600-size);
 }
 
 Ball(float mxpos, float mypos){
    this();
    size = 0;
    xpos = mxpos;
    ypos = mypos;
 }
 
 void move() {
   if (xpos > 600-size/2 || xpos < size/2) xvel = -xvel;//reverse direction if reach edge
   if (ypos > 600-size/2 || ypos < size/2) yvel = -yvel;
   xpos += xvel;//change pos based on velocity to simulate movement
   ypos += yvel;
 }
 
 void change() {//Changes based on state
   if (state == MOVING) move();
   else if (state == DEAD) return;
   else if (state == GROWING) size += CHANGE_FACTOR;
   else if (state == SHRINKING) size -= CHANGE_FACTOR;
   if (size < 0) state = DEAD;
   if (size > MAX_RADIUS) state = SHRINKING;
 }
 
 boolean touching(Ball other) {//Returns true if balls are touching
    return (Math.pow(Math.pow(other.xpos-xpos,2) + Math.pow(other.ypos-ypos,2),.5) <
            (other.size + size) / 2);
 }
}
