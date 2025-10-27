//Bouncing Ball
Ball[] balls = new Ball[2];

void setup()
{
  size(500, 500);
  
  // Instantiating the balls
  balls[0] = new Ball(10, 10, 5, 5);
  balls[1] = new Ball(40, 40, -5, -5);

}

void draw()
{
  background(200);
  // Updating all balls
  for (Ball b : balls){
   b.Update(); 
  }
}
