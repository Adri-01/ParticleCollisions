class Ball{
  // Class variables
  float x, y, speedX, speedY;
  int size=10;
  
  // Constructer
  Ball(float x, float y, float dx, float dy){
    this.x=x;
    this.y=y;
    this.speedX=dx;
    this.speedY=dy;
    
    Render();
  }
  
  public void Update(){
     x+=speedX;
     y+=speedY;
     //speedY += 9.8/60; // Gravity
     WallCollisions();
     SpriteCollisions();
     Render();
  }
  
  private void WallCollisions(){
    if (x<= size/2 || x>= width - size/2){
      speedX = speedX * -1;
    }
    if (y<= size/2 || y>= height - size/2){
      speedY = speedY * -1;
    }
  }
  
  private boolean SpriteCollisions(){
    for (Ball other : balls){
      if (this != other) {
        if((dist(this.x, this.y, other.x, other.y)<size)){
          println("There was a collision.");
          return true;
        }
      }
    }
    return false;
  }
  
  private void Render(){
    ellipse(x,y, size,size); 
  }
}
