float angulo = 0;

void setup() {
  size(600, 400);
  rectMode(CENTER); // Dibujamos desde el centro del rect
}

void draw() {
  background(30);
  angulo += 0.02;

  // --- CUADRADO 1 ---
  pushMatrix(); // Guardo el origen (0,0) original
  translate(200, 200); // Muevo el (0,0) al centro del primer cuadrado
  rotate(angulo);
  fill(0, 255, 150);
  rect(0, 0, 80, 80); // Dibujo en el "nuevo" 0,0
  popMatrix(); // Vuelvo al origen real de la pantalla

  // --- CUADRADO 2 ---
  pushMatrix();
  translate(400, 200);
  rotate(-angulo * 2); // Rota al revés y más rápido
  fill(255, 100, 0);
  rect(0, 0, 50, 50);
  popMatrix();
}
