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
  int width = 800;
  int height = 600;

  size(width, height);
}

void setup() {
}

void draw() {
  background(255);
  drawRectangle5(200, 200, 200, 200, color(0), yellow200);
  drawRectangle5(100, 100, 200, 200, color(0), red200);
  //   drawLine5(0, 400, width, 400, color(0));
  drawCircle5(400, 400, 200, color(0), blue200);
  //   drawTriangle5(xt1, yt1, xt2, yt2, xt3, yt3, color(0), yellow200);
}
