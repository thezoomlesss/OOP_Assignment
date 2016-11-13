class Weapons
{
  float pos_x, pos_y;
  float draw_size=100, corner=110;
  
  Weapons(float pos_x, float pos_y)
  {
    this.pos_x= pos_x;
    this.pos_y= pos_y;
  }
  
  void display_weapon()
  {
    
    fill(100,2,15);
    
    textSize(30);
    text("Choose a weapon:", 50, 80);
    stroke(25,45,90);    
    
    fill(1,2,15);
    
    // The box for the weapon
    beginShape();
    vertex(this.pos_x-draw_size, this.pos_y-corner);
    vertex(this.pos_x-corner, this.pos_y-draw_size);
    
    vertex(this.pos_x-corner, this.pos_y+draw_size);
    vertex(this.pos_x-draw_size, this.pos_y+corner);
    
    vertex(this.pos_x+draw_size, this.pos_y+corner);
    vertex(this.pos_x+corner, this.pos_y+draw_size);
    
    vertex(this.pos_x+corner, this.pos_y-draw_size);
    vertex(this.pos_x+draw_size, this.pos_y-corner);
    endShape(CLOSE);
    
    
    
    if(mouseX>this.pos_x - 140 && mouseX<this.pos_x - 130 && mouseY>this.pos_y-10 && mouseY<this.pos_y+10) 
    {
      fill(50,255,0);
    }
    else
    {
      fill(100,2,15);
    }
    
    
    // The left arrow
    beginShape();
    vertex(this.pos_x - 140, this.pos_y);
    vertex(this.pos_x - 130, this.pos_y-10);
    vertex(this.pos_x - 130, this.pos_y+10);
    endShape(CLOSE);
    
    
    if(mouseX<this.pos_x + 140 && mouseX>this.pos_x + 130 && mouseY>this.pos_y-10 && mouseY<this.pos_y+10) 
    {
      fill(50,255,0);
    }
    else
    {
      fill(100,2,15);
    }
    
    // the right arrow
    beginShape();
    vertex(this.pos_x + 140, this.pos_y);
    vertex(this.pos_x + 130, this.pos_y-10);
    vertex(this.pos_x + 130, this.pos_y+10);
    endShape(CLOSE);
    
    
    //The stats box
    noFill();
    beginShape();
    
    vertex(this.pos_x + 4* draw_size, this.pos_y - corner);  // top right dot
    vertex(this.pos_x + 2* draw_size, this.pos_y -  corner); // top left dot
    vertex(this.pos_x + 2* draw_size, this.pos_y + 2 * corner); // bottom left dot
    vertex(this.pos_x + 4* draw_size, this.pos_y + 2 * corner); // bottom right dot
    
    //curveVertex(this.pos_x + 4* draw_size, this.pos_y + 2 * corner);
    //curveVertex(this.pos_x + 4.3f* draw_size, this.pos_y + corner);
   // curveVertex(this.pos_x + 4.4f* draw_size, this.pos_y + 0.5f* corner );
    //curveVertex(this.pos_x + 4.3f* draw_size, this.pos_y  );
    
    //curveVertex(this.pos_x + 4* draw_size, this.pos_y - corner);
    
    endShape(CLOSE);
   
    // Map button
    beginShape();
    vertex(100,height-60);
    vertex(110,height-50);
    vertex(200,height-50);
    vertex(200,height-90);
    vertex(190,height-100);
    vertex(100, height-100);
    endShape(CLOSE);
    
  }
  
}