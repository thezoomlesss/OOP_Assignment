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
    
    fill(draw_size,2,15);
    beginShape();
    vertex(this.pos_x - 140, this.pos_y);
    
    vertex(this.pos_x - 130, this.pos_y-10);
    
    vertex(this.pos_x - 130, this.pos_y+10);
    endShape(CLOSE);
  }
  
}