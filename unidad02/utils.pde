void saveImage(String filname) {
  String date = year() + nf(month(), 2) + nf(day(), 2) + "_" + nf(hour(), 2) + nf(minute(), 2) + nf(second(), 2);
  String filename = "outputs/" + filname + "_" + date + ".png";
  saveFrame(filename);
}

void drawLine5(float x1, float y1, float x2, float y2, color s) {
  stroke(s);
  strokeWeight(5);
  line(x1, y1, x2, y2);
}

void drawRectangle5(float x, float y, float w, float h, color s, color f) {
  stroke(s);
  strokeWeight(5);
  fill(f);
  rect(x, y, w, h);
}

void drawCircle5(float x, float y, float r, color s, color f) {
  stroke(s);
  strokeWeight(5);
  fill(f);
  ellipse(x, y, r, r);
}

void drawTriangle5(float x1, float y1, float x2, float y2, float x3, float y3, color s, color f) {
  stroke(s);
  strokeWeight(5);
  fill(f);
  triangle(x1, y1, x2, y2, x3, y3);
}
