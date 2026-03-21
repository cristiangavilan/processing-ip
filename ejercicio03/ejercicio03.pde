void setup() {
  size(500, 200); // tamaño del lienzo
  background(255); // color de base
  stroke(0); // color del trazo
  strokeWeight(2); // grosor del trazo
}

void draw() {
  // dibujar un punto
  point(50, 100);

  // dibujar una línea
  line(100, 100, 150, 100);

  // dibujar una elipse
  ellipse(210, 100, 50, 50);

  // dibujar un rectángulo
  rect(275, 75, 50, 50);

  // dibujar un triángulo
  triangle(370, 125, 398, 75, 426, 125);
}
