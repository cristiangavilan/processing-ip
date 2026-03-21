class Burbuja {
  float x, y, r;
  Burbuja(float x, float y) {
    this.x = x;
    this.y = y;
    this.r = random(10, 50);
  }
  void update() {
    this.y -= 1; //flota hacia arriba
    this.x += random(-1, 1); // un poco de jitter
  }
  void display() {
    noFill();
    stroke(255);
    circle(this.x, this.y, this.r);
  }
}
