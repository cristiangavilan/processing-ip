// ============================================================
//  HOLA MUNDO — Processing Playground
//  ¡Tu lienzo para experimentar! Cambiá valores y observá que pasa.
// ============================================================

// VARIABLES: Contenedores que guardan información importante
String mensaje = "¡Hola, Mundo desde Procesing!";   // Probá cambiar el texto entre comillas
int tamanoCirculo = 80;            // Probá un número entre 10 y 300
float velocidad = 2.5;             // Controla qué tan rápido se mueve todo

// Posición y movimiento (se calculan automáticamente)
float x, y;
float xSpeed, ySpeed;

// COLORES (RGB): Los valores van de 0 (nada) a 255 (máximo)
int bgR = 30, bgG = 30, bgB = 50;   // Fondo azul oscuro
float cR = 255, cG = 200, cB = 80; // Círculo color ámbar

// ============================================================
// setup(): Se ejecuta UNA VEZ al iniciar el programa
// ============================================================
void setup() {
  size(600, 400);            // (ancho, alto) del lienzo. ¡Probá otros tamaños!
  textAlign(CENTER, CENTER); // Centra el texto automáticamente

  // Posición inicial: justo en el centro del lienzo
  x = width / 2;
  y = height / 2;

  // Dirección inicial basada en la velocidad definida arriba
  xSpeed = velocidad;
  ySpeed = velocidad * 0.7;
}

// ============================================================
// draw(): Se repite 60 veces por segundo (tu motor de animación)
// ============================================================
void draw() {
  smooth();

  // 1. FONDO: Pintar el lienzo (esto borra el "rastro" del frame anterior)
  background(bgR, bgG, bgB);

  // 2. LÓGICA DE MOVIMIENTO: Actualizar la posición
  x += xSpeed;
  y += ySpeed;

  // 3. COLISIONES: Rebotar si toca los bordes
  if (x > width - tamanoCirculo/2 || x < tamanoCirculo/2) {
    xSpeed *= -1; // Invierte la dirección en X
  }
  if (y > height - tamanoCirculo/2 || y < tamanoCirculo/2) {
    ySpeed *= -1; // Invierte la dirección en Y
  }

  // 4. DIBUJO DEL CÍRCULO PRINCIPAL
  fill(cR, cG, cB);          // Relleno (R, G, B)
  noStroke();                // Sin borde (borrá esta línea para ver qué pasa)
  ellipse(x, y, tamanoCirculo, tamanoCirculo);

  // 5. TEXTO DINÁMICO
  fill(255);                 // Texto color blanco
  textSize(36);              // ¡Probá hacerlo gigante!
  text(mensaje, width/2, height/2);

  // 6. INTERACCIÓN VISUAL: Un rastro que sigue al mouse
  fill(100, 220, 255, 150);  // El cuarto número es la opacidad (0-255)
  ellipse(mouseX, mouseY, 20, 20);

  // Ayuda visual en pantalla
  fill(150);
  textSize(12);
  text("Hacé click para cambiar el color | +/- para tamaño | Espacio para saltar", width/2, height - 30);
}

// ============================================================
// EVENTOS: Acciones que ocurren cuando tocás algo
// ============================================================

void mousePressed() {
  // Elegimos colores aleatorios entre 0 y 255
  cR = random(255);
  cG = random(255);
  cB = random(255);
}

void keyPressed() {
  if (key == '+') tamanoCirculo += 10; // Agrandar
  if (key == '-') tamanoCirculo -= 10; // Achicar

  if (key == ' ') {
    // Espacio: Teletransporta el círculo a una velocidad nueva
    xSpeed = random(-5, 5);
    ySpeed = random(-5, 5);
  }
  if (key == 's') {
    saveFrame("mi_dibujo.png");
  }
}
