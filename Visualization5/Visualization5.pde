import processing.core.PApplet;

public class Visualization5 extends PApplet {

  Ball[] balls;
  int numBalls = 2000;

  public void settings() {
    size(1000, 700);
  }

  public void setup() {
    background(255);
    frameRate(60);

    balls = new Ball[numBalls];
    for (int i = 0; i < numBalls; i++) {
      float x = random(width);
      float y = random(height);
      float speedX = random(-2, 2);
      float speedY = random(-2, 2);
      balls[i] = new Ball(x, y, speedX, speedY);
    }
  }

  public void draw() {
    background(255);
    for (Ball ball : balls) {
      ball.move();
      ball.display();
    }
  }

  class Ball {
    float x, y;
    float speedX, speedY;
    int color1, color2;

    Ball(float x, float y, float speedX, float speedY) {
      this.x = x;
      this.y = y;
      this.speedX = speedX;
      this.speedY = speedY;

      color1 = color(random(255), random(255), random(255));
      color2 = color(random(255), random(255), random(255));
    }

    void move() {
      x += speedX;
      y += speedY;

      if (x < 0 || x > width) {
        speedX *= -1;
      }
      if (y < 0 || y > height) {
        speedY *= -1;
      }
    }

    void display() {
      float gradientY = map(y, 0, height, 0, 1);
      int gradientColor = lerpColor(color1, color2, gradientY);
      fill(gradientColor);
      noStroke();
      ellipse(x, y, 20, 20);
    }
  }

  public static void main(String[] args) {
    PApplet.main("Visualization5");
  }
}
