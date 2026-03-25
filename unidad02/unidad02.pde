color blue100 = color(0, 0, 255, 100);
color blue200 = color(0, 0, 255, 200);
color red100 = color(255, 0, 0, 100);
color red200 = color(255, 0, 0, 200);
color green100 = color(0, 255, 0, 100);
color green200 = color(0, 255, 0, 200);
color yellow100 = color(255, 255, 0, 100);
color yellow200 = color(255, 255, 0, 200);

float xr11 = random(0, width);
float xr12 = random(0, width);
float yr11 = random(0, height);
float yr12 = random(0, height);


float xt1 = random(0, width);
float yt1 = random(0, height);
float xt2 = random(0, width);
float yt2 = random(0, height);
float xt3 = random(0, width);
float yt3 = random(0, height);

void settings() {
  int width = 1280;
  int height = 1024;

  size(width, height);
}

void setup() {
}

void draw() {
  background(255);
  drawRectangle5(100, 100, 200, 200, color(0), red200);
  drawRectangle5(100, 700, 200, 900, color(0), yellow200);
  drawCircle5(400, 400, 600, color(0), blue200);
  drawCircle5(1000, 400, 400, color(0), red200);
  drawCircle5(1000, 800, 200, color(0), green200);
  drawTriangle5(600, 10, 500, 250, 800, 250, color(0), green200);
  drawTriangle5(550, 550, 400, 800, 900, 900, color(0), yellow200);
  drawTriangle5(700, 900, 600, 1000, 900, 1000, color(0), blue200);
  drawLine5(50, 0, 50, height, color(0));
  drawLine5(250, 0, 250, height, color(0));
  drawLine5(500, 0, 500, height, color(0));
  drawLine5(550, 0, 550, height, color(0));
  drawLine5(700, 0, 700, height, color(0));
  drawLine5(950, 0, 950, height, color(0));
  drawLine5(1000, 0, 1000, height, color(0));
  drawLine5(1200, 0, 1200, height, color(0));
  drawLine5(0, 50, width, 50, color(0));
  drawLine5(0, 250, width, 250, color(0));
  drawLine5(0, 500, width, 500, color(0));
  drawLine5(0, 750, width, 750, color(0));
  drawLine5(0, 1000, width, 1000, color(0));
}

void keyPressed() {
  if (key == 's') {
    saveImage("formas");
  }
}
