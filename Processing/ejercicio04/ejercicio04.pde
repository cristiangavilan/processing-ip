float x = 0;
float y = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(240);

  // lerp(valorActual, valorObjetivo, porcentajeDeAcercamiento)
  // 0.05 significa que cada frame se mueve un 5% hacia el destino
  x = lerp(x, mouseX, 0.05);
  y = lerp(y, mouseY, 0.05);

  fill(255, 0, 100);
  circle(x, y, 40);
}
