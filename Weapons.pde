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
    
    
    fill(100,2,15);
    w_l.get(pic_index).display_image();
    w_l2.get(pic_index2).display_image();
      
  }
}

class Weapon_list
{
  int id;
  String name;
  String type;
  PImage pic;
  
  Weapon_list(int a, String b)
  {
    this.id=a;
    
    switch(a)
    {
      case 1:
      {
        this.name="K-8 Avenger";
        break;
      }
      
      case 2:
      {
        this.name="R-25 Hornet";
        break;
      }
      
      case 3:
      {
        this.name="M-99 Saber";
        break;
      }
      case 4:
      {
        this.name="Arc Pistol";
        break;
      }
      case 5:
      {
        this.name="S4-358 Talon";
        break;
      }
      case 6:
      {
        this.name="M-5 Phalanx";
        break;
      }
      
      default:
      {
        this.name="X-Victus"+ "0"+ this.id;
        break;
      }
    }
    
    this.pic= loadImage(dataPath("Image"+a+".png")); 
    if(b=="Primary") this.type="Primary";
      else
      this.type="Secondary";
  }
  void display_image()
  {
    textSize(20);
    if(this.type=="Secondary")
    {
      text(this.type+" weapon: "+this.name, 490,400);     
      image(this.pic, 520,210);
    
    }
    else
    {
      text(this.type+" weapon: "+this.name, 125,395);
      image(this.pic, 150,205);
    }// end else
    
    textSize(18);
    switch(this.id)
    {
      case 1:
      {
        text("Damage: V.High", 140,440);     
        text("Fire rate: Medium", 140,470);     
        text("Reload speed: Slow", 140,500);     
        text("Clip size: Low", 140,530);             
        break;
      }
      
      case 2:
      {
        text("Damage: Medium", 140,440);     
        text("Fire rate: High", 140,470);     
        text("Reload speed: Medium", 140,500);     
        text("Clip size: Low", 140,530);             
        
        break;
      }
      
      case 3:
      {
        text("Damage: Low", 140,440);     
        text("Fire rate: High", 140,470);     
        text("Reload speed: Fast", 140,500);     
        text("Clip size: High", 140,530);             
        
        break;
      }
      case 4:
      {
        text("Damage: Medium", 505,440);     
        text("Fire rate: Medium", 505,470);     
        text("Reload speed: Slow", 505,500);     
        text("Clip size: Medium", 505,530);             
        
        break;
      }
      case 5:
      {
        text("Damage: V.High", 505,440);     
        text("Fire rate: Slow", 505,470);     
        text("Reload speed: Medium", 505,500);     
        text("Clip size: Low", 505,530);
        break;
      }
      case 6:
      {
        text("Damage: Low", 505,440);     
        text("Fire rate: High", 505,470);     
        text("Reload speed: Medium", 505,500);     
        text("Clip size: High", 505,530);
        break;
      }
      
      default:
      {
        text("Damage: Missing info", 490,440);     
        text("Fire rate: Missing info", 490,470);     
        text("Reload speed: Missing info", 490,500);     
        
        break;
      }
    }// end switch
  } //end display image
} // end class