import nature.library.*;

NatureManager drawingManager;
DShape shape;
void setup() {
  size(500,500);
  background(255);
  smooth();
  drawingManager = new NatureManager(this);
 }

void draw() {
     shape = drawingManager.addShape();
        drawingManager.addTiger(10);
           shape.addVertex(mouseX,mouseY); 
}


void mousePressed(){
      //drawingManager.tiger(6);
         //shape.addVertex(mouseX,mouseY); 
}
  
void mouseDragged(){
   //drawingManager.tiger(6);
   shape.addVertex(mouseX,mouseY); 
}
