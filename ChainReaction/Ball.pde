class Ball {

  float x, y, rad, dx, dy;
  color c;
  int state;

  Ball() {
    float d = random(256);

    c = color(d, random(256), random(256));

    x = random((width - d) + d/2);
    y = random((height - d) + d/2);

    rad = 10;

    dx = random(10) - 5;
    dy = random(10) - 5;

    state = 0;
  }

  void move() {
    x += dx;
    y += dy;
    bounce();
  }

  void bounce() {
    if (x <= 0 || x >= 600) {
      dx = dx * -1;
    }
    if (y <= 0 || y >= 600) {
      dy = dy * -1;
    }
  }

  void checkCollision(Ball ball) {
    float collisionPoint = rad + ball.rad;
    
  }

  void react() {
    if (state == 1) {
      rad += 2;
    }
    if (state == 2) {
      rad -= 2;
    }
  }
}