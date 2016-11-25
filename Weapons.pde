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
    draw.clock();
    fill(100,2,15);
    strokeWeight(2);
    textSize(30);
    text("Choose a loadout:", 50, 80);
    stroke(25,45,90);    
    
    fill(1,2,15);
    
    // The box for the primary weapon
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
      fill(131,156,165);
    }
    else
    {
      fill(100,2,15);
    }
    
    
    // The left arrow
    beginShape();
    vertex(this.pos_x - 145, this.pos_y);
    vertex(this.pos_x - 130, this.pos_y-15);
    vertex(this.pos_x - 130, this.pos_y+15);
    endShape(CLOSE);
    
    
    if(mouseX<this.pos_x + 140 && mouseX>this.pos_x + 130 && mouseY>this.pos_y-10 && mouseY<this.pos_y+10) 
    {
      fill(131,156,165);
    }
    else
    {
      fill(100,2,15);
    }
    
    // the right arrow
    beginShape();
    vertex(this.pos_x + 145, this.pos_y);
    vertex(this.pos_x + 130, this.pos_y-15);
    vertex(this.pos_x + 130, this.pos_y+15);
    endShape(CLOSE);
    
    // The box for the secondary weapon
    
    fill(1,2,15);
    
    beginShape();
    vertex(((2.5f*this.pos_x)-draw_size), this.pos_y-corner);
    vertex(((2.5f*this.pos_x)-corner), this.pos_y-draw_size);
    
    vertex(((2.5f*this.pos_x)-corner), this.pos_y+draw_size);
    vertex(((2.5f*this.pos_x)-draw_size), this.pos_y+corner);
    
    vertex(((2.5f*this.pos_x)+draw_size), this.pos_y+corner);
    vertex(((2.5f*this.pos_x)+corner), this.pos_y+draw_size);
    
    vertex(((2.5f*this.pos_x)+corner), this.pos_y-draw_size);
    vertex(((2.5f*this.pos_x)+draw_size), this.pos_y-corner);
    endShape(CLOSE);
    
    
    if(mouseX>(2.5f*this.pos_x) - 140 && mouseX<(2.5f*this.pos_x) - 130 && mouseY>this.pos_y-10 && mouseY<this.pos_y+10) 
    {
      fill(131,156,165);
    }
    else
    {
      fill(100,2,15);
    }
    
    
    // The left arrow
    beginShape();
    vertex((2.5f*this.pos_x) - 145, this.pos_y);
    vertex((2.5f*this.pos_x) - 130, this.pos_y-15);
    vertex((2.5f*this.pos_x) - 130, this.pos_y+15);
    endShape(CLOSE);
    
    
    if(mouseX<(2.5f*this.pos_x) + 140 && mouseX>(2.5f*this.pos_x) + 130 && mouseY>this.pos_y-10 && mouseY<this.pos_y+10) 
    {
      fill(131,156,165);
    }
    else
    {
      fill(100,2,15);
    }
    
    // the right arrow
    beginShape();
    vertex((2.5f*this.pos_x) + 145, this.pos_y);
    vertex((2.5f*this.pos_x) + 130, this.pos_y-15);
    vertex((2.5f*this.pos_x) + 130, this.pos_y+15);
    endShape(CLOSE);
    
    
    
    //The stats box
    //noFill();
    //beginShape();
    
    //vertex(this.pos_x + 4* draw_size, this.pos_y - corner);  // top right dot
    //vertex(this.pos_x + 2* draw_size, this.pos_y -  corner); // top left dot
    //vertex(this.pos_x + 2* draw_size, this.pos_y + 2 * corner); // bottom left dot
    //vertex(this.pos_x + 4* draw_size, this.pos_y + 2 * corner); // bottom right dot
    
    //curveVertex(this.pos_x + 4* draw_size, this.pos_y + 2 * corner);
    //curveVertex(this.pos_x + 4.3f* draw_size, this.pos_y + corner);
   // curveVertex(this.pos_x + 4.4f* draw_size, this.pos_y + 0.5f* corner );
    //curveVertex(this.pos_x + 4.3f* draw_size, this.pos_y  );
    
    //curveVertex(this.pos_x + 4* draw_size, this.pos_y - corner);
    
    //endShape(CLOSE);
   
   
    
    // Armor button
    
  }
}

class Weapon_list
{
  int id;
  //int size;
  String name;
  String type;
  String pic;
  
  Weapon_list(int a, String b, String name)
  {
    // Use either this or the for loop and parameter this.size= w_l.size();
    this.id=a;
    this.name=name;
    this.pic= dataPath("Image"+a+".jpg"); //this.size;
    if(b=="primary") this.type="Primary";
      else
      this.type="Secondary";
  }
}