ArrayList<Burbuja> burbujas = new ArrayList<Burbuja>();

void setup() {
  size(800, 600);
}

void draw() {
  background(20);
  for (Burbuja b : burbujas) {
    b.update();
    b.display();
  }
}

void mousePressed() {
  burbujas.add(new Burbuja(mouseX, mouseY));
}
