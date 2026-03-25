int width = 800;
int height = 600;


void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  noStroke();
  fill(255, 0, 255);
  rect(0, 0, 800, 386);
  fill(255, 255, 0);
  rect(0, 385, 800, 600);


  noFill();
  //   drawQuad();

  stroke(0);
  strokeWeight(2);
  bezier(400, 200, 500, 200, 500, 300, 450, 335);
  fill(255);
  rect(450, 300, 50, 50, 50, 50, 0, 0);
  line(465, 350, 465, 375);
  line(485, 350, 485, 375);


  //cuerpo
  stroke(0);
  strokeWeight(2);
  fill(255);
  circle(200, 200, 150);
  circle(350, 200, 150);

  circle(225, 350, 50);
  circle(325, 350, 50);

  circle(200, 300, 140);
  circle(350, 300, 140);

  circle(200, 355, 60);
  circle(350, 355, 60);

  noStroke();

  circle(200, 250, 105);
  circle(350, 250, 105);

  circle(200, 325, 90);
  circle(350, 325, 90);

  //cabeza
  stroke(0);
  strokeWeight(2);
  fill(255);
  bezier(200, 200, 250, 100, 300, 100, 350, 200); //curva superior
  bezier(200, 200, 100, 100, 150, 250, 200, 250); //oreja izquierda
  bezier(350, 200, 450, 100, 400, 250, 350, 250); //oreja derecha
  bezier(200, 250, 250, 350, 300, 350, 350, 250); //curva inferior
  noStroke();
  rect(200, 200, 150, 50);

  stroke(0);
  fill(255);
  circle(250, 200, 50); //ojo izquierdo
  circle(300, 200, 50); //ojo derecho
  fill(0);
  circle(250, 200, 10); //pupila izquierda
  circle(300, 200, 10); //pupila derecha

  // nariz
  noFill();
  stroke(0);
  strokeWeight(2);
  bezier(250, 250, 275, 275, 275, 275, 300, 250);
  bezier(275, 270, 275, 280, 275, 285, 250, 300);
  bezier(275, 270, 275, 280, 275, 285, 300, 300);

  //pelo
  stroke(0);
  strokeWeight(2);
  fill(255, 255, 255);
  circle(225, 150, 60);
  circle(275, 125, 60);
  circle(325, 150, 60);
  noStroke();
  circle(250, 138, 25);
  circle(300, 138, 25);

  drawElectric();
}

void drawElectric() {
  fill(255);
  stroke(0);
  strokeWeight(2);
  rect(600, 200, 100, 100, 10, 10, 10, 10);
  rect(610, 210, 80, 50, 10, 10, 10, 10);
  strokeWeight(5);

  line(640, 225, 640, 250);
  line(660, 225, 660, 250);
}


void drawQuad() {
  stroke(255, 102, 0);
  strokeWeight(1);

  for (int i = 0; i < width; i += 50) {
    line(i, 0, i, height);
    text(i, i, 20);
  }
  for (int i = 0; i < height; i += 50) {
    line(0, i, width, i);
    text(i, 20, i);
  }
}

void keyPressed() {
  if (key ==  's' || key == 'S') {
    saveFrame("ovejaElectrica.png");
  }
}
