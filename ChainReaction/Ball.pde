class Ball {

  float x, y, rad, dx, dy;
  color c;
  int state;

  Ball() {
    float d = random(256);

    c = color(d, random(256), random(256));

    x = random((width - d) + d/2);
    y = random((height - d) + d/2);

    rad = 20;

    dx = random(10) - 5;
    dy = random(10) - 5;

    state = 0; //0 is normal
  }

  void move() {
    x += dx;
    y += dy;
    bounce();
  }

  void bounce() {
    //if ball reaches top or bottom of screen, bounce
    if (x <= 0 || x >= 600) {
      dx = dx * -1;
    }
    //if ball reaches left or right of screen, bounce
    if (y <= 0 || y >= 600) {
      dy = dy * -1;
    }
  }

  void hasCollided(Ball ball) {
    if (dist(x, y, ball.x, ball.y) <= rad) {
      //change first ball variables
      dx = dy = 0;
      state = 1; // 1 is expanding

      //change second ball variables
      ball.dx = ball.dy = 0;
      ball.state = 1;
    }
  }

  void react() {
    if (state == 1){
       rad += 1; 
       if (rad > 50){
          state = 2; // 2 is shrinking 
       }
    }
    
    if (state == 2){
       rad = rad - 1; 
       if (rad == 1){
          rad = 0;
          state = 4; // "deletes" the ball
       }
    }
    
  }
  
}