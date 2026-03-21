int x; // Posición inicial del círculo
void setup1() {
  size(400, 400); // Tamaño del lienzo
  x = 50; // Inicializar la posición del círculo en el centro
}

void draw1() {
  background(255); // Fondo blanco
  fill(255, 0, 0); // Color rojo
  ellipse(200, 200, x, x); // Círculo en el centro
  if(x < 200) {
    x++; // Incrementar el tamaño del círculo
  } else {
    x = 50; // Reiniciar el tamaño del círculo
  }

}