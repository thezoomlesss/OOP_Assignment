class Maps
{
  float pos_x, pos_y;
  float draw_size=100, corner=110;
  
  Maps(float pos_x, float pos_y)
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
    m_l.get(pic_index3).display_map();
  }
  
}

class Map
{
  int id;
  PImage img;
  String name;
  
  Map(int a)
  {
    this.id=a;
    this.img= loadImage(dataPath("Image_m"+a+".jpg"));
    switch(a)
    {
      case 1:
      {
        this.name= "Eagle Nebula";
        break;
      }
      case 2:
      {
        this.name= "Gemini Sigma";
        break;
      }
      default:
      {
        this.name= "Nebula-"+a;
        break;
      }
    }
    
    
  }
  
  void display_map()
  {
    //image(this.img, 250,250);
    textSize(20);
    if(pic_index4==0)
    {
      text("Map size: Normal", 150,395);
      text("Game speed : Normal", 150,417);
    }
    else
    {  
      text("Map size: Large", 150,395);
      text("Game speed : Slow", 150,417);
    }
  }
}