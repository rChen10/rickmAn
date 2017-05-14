class Ball {

  float x, y, rad, dx, dy;
  color c;
  boolean shrinking;

  Ball() {
    float d = random(256);

    c = color(d, random(256), random(256));

    x = random((width - d) + d/2);
    y = random((height - d) + d/2);

    rad = 20;

    dx = random(10) - 5;
    dy = random(10) - 5;

    shrinking = false;
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

      //change second ball variables
      ball.dx = ball.dy = 0;
    }
  }

  void react() {
  }
}