// Variables para el movimiento suave (Lerp)
float suaveX = 0;
float suaveY = 0;

// Variable para la rotación continua
float anguloBase = 0;

void setup() {
  size(800, 800);
  surface.setTitle("Visualizador Reactivo Simulado"); // Título de la ventana
  // surface.setIcon(loadImage("tu_icono.png")); // ¡Incluso podrías ponerle tu propio icono si tienes una imagen!

  // Como desarrollador Fullstack, aprecia la limpieza:
  // rectMode(CENTER) hace que las coordenadas x,y de rect sean su centro, no su esquina.
  rectMode(CENTER);
  smooth(); // Antialiasing activado
}

void draw() {
  // --- 1. FONDO DINÁMICO (Uso de map) ---
  // Mapeamos el mouseX al color de fondo (de azul oscuro a magenta suave)
  float tonoFondo = map(mouseX, 0, width, 20, 100);
  background(tonoFondo, 15, tonoFondo + 20);

  // --- 2. SEGUIMIENTO SUAVE (Uso de lerp) ---
  // El centro de la figura 'persigue' al mouse al 5% de velocidad por frame
  suaveX = lerp(suaveX, mouseX, 0.05);
  suaveY = lerp(suaveY, mouseY, 0.05);

  // --- CONFIGURACIÓN DE LA FIGURA ---
  anguloBase += 0.01; // Incremento de rotación base
  noFill(); // Sin relleno para ver las líneas superpuestas
  strokeWeight(2); // Grosor de línea

  // --- 3. AISLAMIENTO Y TRANSFORMACIONES (Uso de Matrix) ---

  // Capa 1: El núcleo (Cuadrados verdes)
  pushMatrix();
  // 3a. Trasladar al centro suavizado
  translate(suaveX, suaveY);

  // 3b. Mapear complejidad: a más a la derecha, más cuadrados (de 2 a 15)
  int numCuadrados = int(map(mouseX, 0, width, 2, 15));

  // 3c. Dibujar capas de cuadrados
  for (int i = 0; i < numCuadrados; i++) {
    pushMatrix();
    // Cada cuadrado rota un poco más que el anterior
    rotate(anguloBase + (i * 0.1));

    // El color cambia sutilmente con cada capa (map)
    float tonoVerde = map(i, 0, numCuadrados, 150, 255);
    stroke(0, tonoVerde, 150, 150); // Alpha al 150/255

    // El tamaño disminuye con cada capa
    float tamano = 200 - (i * 10);
    rect(0, 0, tamano, tamano);
    // circle(0, 0, tamano);
    popMatrix(); // Volvemos a la rotación base de la Capa 1
  }
  popMatrix(); // Volvemos al origen (0,0) real de la pantalla

  // Capa 2: La corona externa (Triángulos naranjas)
  // Esta capa usa translate para seguir al mouse, pero tiene su propia lógica de rotación
  pushMatrix();
  translate(suaveX, suaveY);
  rotate(-anguloBase * 0.5); // Rota a la mitad de velocidad y al revés
  stroke(255, 150, 0, 100); // Color naranja transparente

  // Mapear el tamaño de la corona a la posición Y del mouse
  float radioCorona = map(mouseY, 0, height, 150, 300);

  // Dibujar una corona de triángulos simples
  int totalPuntos = 12;
  for (int i = 0; i < totalPuntos; i++) {
    pushMatrix();
    rotate(TWO_PI / totalPuntos * i); // Distribuir en un círculo
    line(0, radioCorona, 0, radioCorona + 50); // Línea que sale del centro
    popMatrix();
  }
  popMatrix();
}
