PImage img;

void setup() {
  size(800, 400);
  img = loadImage("morty.png");
  background(118, 164, 234);
}

void draw(){
  image(img, 0, 0);
  line(400, 400, 400, 0);
  
//pelo
stroke(0);
fill(152, 82, 35);
ellipse(598, 53, 104, 93);
  

// torso
noStroke();
fill(247, 235, 120);
rect(580, 110, 50, 132);
ellipse(605, 111, 50, 20);
  
  
 // cabeza
stroke(0);
fill(242, 198, 157);
ellipse(609, 70, 90, 85) ;

 // ojos
stroke(0);
strokeWeight(2);
fill(255);
ellipse(602, 59, 30, 30);
ellipse(638, 59, 27, 30);
circle(604, 59, 2);
circle(642, 59, 2);

 //oreja
stroke(0);
fill(242, 198, 157);
ellipse(566, 83, 15, 15);

//nariz
stroke(0);
fill(242, 198, 157);
triangle(638, 78, 620, 67, 620, 80);

// boca
fill(144, 109, 85);
ellipse(616, 94, 28, 10);

// brazo izq
stroke(0);
fill(247, 235, 120);
ellipse(575, 138, 21, 70);
fill(247, 235, 120);
noStroke();
rect(573,107,11,11);
rect(578, 111, 11,32);
fill(242, 198, 157);
stroke(0);
rect(566,155,12,82);

//brazo derecho
fill(247, 235, 120);
ellipse(636, 139, 13,60);
noStroke();
rect(629, 150, 13,20);
fill(242, 198, 157);
stroke(0);
rect(631,150,10,92);

//pies
fill(222,225,229);
ellipse(591, 381,19,27);
fill(255);
rect(587,360,10,11);
rect(613,360,10,11);
fill(222,225,229);
ellipse(626,378,33,11);


//piernas
fill(47,68,100);
rect(585, 244, 15, 120);
rect(611, 244, 15, 120);
rect(581, 233, 48,16);
}
