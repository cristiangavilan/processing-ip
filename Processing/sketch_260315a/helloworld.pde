void setup() {
  size(500, 200); // Tamaño del lienzo
}

void draw() {
  background(255); // Fondo blanco
  fill(0); // Color negro
    textSize(32); // Tamaño del texto
    textFont(createFont("Cascadia Code Italic", 32));
    text("¡Hola, Mundo!", 50, 100); // Mostrar el texto en la pantalla
}