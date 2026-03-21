void setup() {
  size(600, 600);
}

void draw() {
  float red = map(mouseX, 0, width, 0, 255);
  float blue = map(mouseY, 0, height, 0, 255);
  background(red, 50, blue);

  float diameter = map(mouseY, 0, height, 10, 200);
  fill(255);
  circle(width/2, height/2, diameter);
}
