import nature.library.*;


NatureManager drawingManager;
//total number of lines to be drawn
int linecount = 10;
//total angle to rotate lines by
int totalTheta = 45;

//list of shapes
ArrayList<DShape> shapes = new ArrayList<DShape>();
void setup() {
  size(792,612,P3D);
  background(255);
  smooth();
  drawingManager = new NatureManager(this);
  
 }

void draw() {

}


void mouseDragged(){

     //set the stroke to tiger pattern
   drawingManager.addTiger(10);
 
   //loop through each shape and add a vertex at the mouse x and y positions
   for(int i = 0; i<linecount;i++){
     DShape shape = shapes.get(i);
     shape.addVertex(mouseX,mouseY);
   }
}

void mousePressed(){
  //clear all existing shapes
  shapes.clear();
  //use a loop to create a new set of shapes
  for(int i = 0; i<linecount;i++){
     //initialize a new DShape object
    DShape s = drawingManager.addShape(); 
    //add it to the list of shapes
    shapes.add(s);
    
    //perform a matrix transformation to rotate the shape using the mouseX and mouseY as the origin points
    s.translate(mouseX,mouseY);
    s.rotate(radians((totalTheta/linecount*i)));
    
    //move back to the origin after rotation
    s.translate(-mouseX,-mouseY);
  }
}
