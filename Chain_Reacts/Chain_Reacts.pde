import java.util.ArrayList;
ArrayList<Ball> balls;

void setup() {
  background(0.0);
  size(600,600);
  balls = new ArrayList<Ball>();//List of Ball instances
  int numBalls = (int) random(25,36);
  for (int i = 0; i < numBalls; i++) {
   balls.add(new Ball()); //instantiate Balls
  }
}

void draw() {
  background(0.0);
  for (int i = balls.size()-1; i >= 0; i--) {//talks to each Ball
   Ball current = balls.get(i);
   if (current.state == 3) {balls.remove(i); continue;} //Remove Ball if dead
   current.change(); //tell Ball to change
   fill(current.c); //color the Ball
   ellipse(current.xpos,current.ypos,current.size,current.size);//create Ball image
   if (current.state == 0) {//If moving, check to see if touching other balls
     for (Ball other:balls) {
      if (other.state == 2 || other.state == 1) {//If touching a expanding/shrinking ball, expand
        if (current.touching(other)) current.state = 1;
      }
     }
   }
  }
}

void mouseClicked(){
 balls.add(new Ball(mouseX,mouseY)); //Add new ball
 balls.get(balls.size()-1).state = 1; //Set state to expanding
}
