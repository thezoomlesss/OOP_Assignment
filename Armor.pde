class Armor
{
  float pos_x, pos_y;
  float draw_size=100, corner=110;
  
  Armor(float pos_x, float pos_y)
  {
    this.pos_x= pos_x;
    this.pos_y= pos_y;
  }
  
  void display()
  {
    display.border(1);
    draw.clock();
    display.name_box();
    
    fill(100,2,15);
    strokeWeight(2);
    textSize(30);
    text("Choose an armor:", 50, 80);
    stroke(25,45,90);    
    
    fill(1,2,15);
    
    // The box for the armor
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
    
    fill(100,2,15);
    a_l.get(pic_index3).display_armor();
  }

}

class Armors
{
  int id;
  PImage img;
  String name;
  
  Armors(int a)
  {
    this.id=a;
    this.img= loadImage(dataPath("Image_a"+a+".png"));
    
    switch(a)
    {
      case 1:
      {
        this.name= "Yuna-300";
        break;
      }
      case 2:
      {
        this.name= "RT-200";
        break;
      }
      default:
      {
        this.name= "K3-"+a;
        break;
      }
    }
    
  }
  
  void display_armor()
  {
    image(this.img, 185,150);
    
    textSize(20);
    if(pic_index3==0)
    {
      text("Armor type: Light", 150,395);
      text("Movement : Fast", 150,417);
    }
    else
    {
      text("Armor type: Heavy", 150,395);
      text("Movement : Slow", 150,417);

    }
  }// end display_armor()
}