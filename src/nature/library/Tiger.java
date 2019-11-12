package nature.library;

import processing.core.PApplet;
import processing.pdf.PGraphicsPDF;

public class Tiger implements DObj{
	
	private  DColor strokeColor;
	private float weight;
	private PApplet myParent;
	  
	  Tiger(PApplet myParent, float weight, DColor strokeColor){
	   this.myParent = myParent;
	   this.strokeColor = strokeColor;
	   this.weight = weight;
	   this.renderTransformation(myParent);
	  }
	  
	  
	  public void renderTransformation(PApplet parent){
		if(parent.mouseX % 2 == 0 || parent.mouseX % 5 == 0){
			strokeColor.r = 255;
			strokeColor.g = 92;
			strokeColor.b = 0;
			strokeColor.a = 255;
			System.out.println("yes: " + parent.mouseX);
			parent.stroke(strokeColor.r, strokeColor.g,strokeColor.b, strokeColor.a); 
		}
		else{
			System.out.println("no: " + parent.mouseX);
			strokeColor.r = 0;
			strokeColor.g = 0;
			strokeColor.b = 0;
			strokeColor.a = 255;
			parent.stroke(strokeColor.r, strokeColor.g,strokeColor.b, strokeColor.a); 
		}
	  }

	@Override
	public void drawIntoPDF(PGraphicsPDF pdf) {
		// TODO Auto-generated method stub
		
	}
	  

}
