Ball[] balls;
boolean reactionStarted = false;

void setup() {
  size(600, 600);
  background(0);
  reactionStarted = false;
  balls = new Ball[25];
  for (int i = 0; i < 25; i ++)
    balls[i] = new Ball();
}

void drawBalls() {
  background(0);
  for (Ball b : balls) {
    fill(b.c);
    ellipse(b.x, b.y, b.rad, b.rad);
  }
}

void moveBalls() {
  for (Ball b: balls) {
     b.move(); 
  }
}

void draw() {
  drawBalls();
  moveBalls();
  
  if (mousePressed && reactionStarted == false) {
     reactionStarted = true;
  }
}