import nature.library.*;

NatureManager nat;
DShape shape;
void setup() {
  size(500,500);
  background(255);
  smooth();
  nat = new NatureManager(this);
 }

void draw() {
   shape = nat.addShape();
   // adding tiger pencil
   nat.addTiger(10);
   shape.addVertex(mouseX,mouseY); 
}

void mouseDragged(){
   shape.addVertex(mouseX,mouseY); 
}
