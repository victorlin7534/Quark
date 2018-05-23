Ball[] balls;

void setup() {
  background(0.0);
  size(600,600);
  balls = new Ball[(int) random(25,36)];
  for (int i = 0; i < balls.length; i++) {
   balls[i] = new Ball(); 
  }
}

void draw() {
  background(0.0);
  for (Ball i:balls) {
   i.move();
   ellipse(i.xpos,i.ypos,i.size,i.size);
   fill(i.c);
  }
}