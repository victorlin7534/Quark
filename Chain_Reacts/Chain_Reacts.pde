Ball[] balls;
Ball[] cells = new Ball[10];
int cellSize;

void setup() {
  background(0.0);
  size(600,600);
  balls = new Ball[(int) random(25,36)];//array of Ball instances
  for (int i = 0; i < balls.length; i++) {
   balls[i] = new Ball(); //instantiate Balls
  }
}

void draw() {
  background(0.0);
  for (Ball i:balls) {//talks to each Ball
   i.move(); //tell Ball to move
   ellipse(i.xpos,i.ypos,i.size,i.size);//create Ball image
   fill(i.c);//color the Ball
  }
  if(cellSize>0){
    for(Ball j:cells){
      if (j != null) {
       j.change();
       ellipse(j.xpos,j.ypos,j.size,j.size);
       fill(j.c);
      }
    }
  }
}

void mouseClicked(){
 cellSize++;
 if(cellSize>cells.length){
   cells = (Ball[])expand(cells,cellSize);
 }
 cells[cellSize-1] = new Ball(mouseX,mouseY);
 cells[cellSize-1].state = 1;
}