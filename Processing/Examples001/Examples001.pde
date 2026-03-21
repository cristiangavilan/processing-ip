int canvasWidth = 1024;
int canvasHeight = 768;
int axisX = 100;
float axisY = 100;
boolean isDown = true;
float easing = 1.05;

public void settings() {
  size(1024, 768);
}

void setup() {
}

void draw() {
  background(255); // Fondo blanco
  stroke(0); //
  strokeWeight(40);
  strokeCap(ROUND);
//   fill(255, 0, 0); // Color rojo
//   ellipse(canvasWidth / 2, canvasHeight / 2, 50, 50); // Círculo en el centro
//   line(150, 100, 250, 100); // Línea horizontal desde (150, 100) hasta (250, 100)
//   triangle(400, 50, 350, 50, 250, 50); // Triángulo con vértices en (300, 5), (350, 50) y (250, 50)
    point(axisX, axisY * easing); // Punto en la posición (100, 100)

    if(isDown) {
        if(axisY >= 250) {
            axisY += 0.5; // Aumentar la velocidad de movimiento hacia abajo
        }else {
            axisY += 1.5; // Mover el punto hacia la abajo
        }
    } else {
        if(axisY <= 150) {
            axisY -= 0.5; // Aumentar la velocidad de movimiento hacia arriba
        } else {
            axisY -= 1.5; // Mover el punto hacia la arriba
        }
    }
    if (axisY >= 300) {
      isDown = false; // Cambiar dirección a arriba
    } else if (axisY <= 100) {
      isDown = true; // Cambiar dirección a derecha
    }

}