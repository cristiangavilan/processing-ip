void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  stroke(0, 150, 255); //color del borde
  fill(0, 150, 255, 50); //color de relleno

  circle(mouseX, mouseY, 50); //dibujar circulo en la posicion del mouse
}

void mousePressed() {
  background(255); //limpiar el "DOM"
}
