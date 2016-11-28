class Border
{
  void border(int line)
  {
    stroke(25,45,90);    
    strokeWeight(2);
    noFill();
    
    line( 2 * x_coord, y_coord, width -   x_coord_copy , y_coord); // top outer line
    line(x_coord, 2 * y_coord, x_coord, height - 2 * y_coord_copy); // left outer  
    line(width -  2*x_coord, height-y_coord,  x_coord_copy, height-y_coord);  // bottom outer
    line(width - x_coord, height - 2 * y_coord, width- x_coord,  y_coord_copy); // right outer 
    
    bezier(width-x_coord,height - 2 * y_coord, width-x_coord, height-y_coord, width-x_coord, height-y_coord,width-2 * x_coord, height-y_coord); // bottom right outer bezier
    bezier(x_coord,2 * y_coord, x_coord, y_coord, x_coord, y_coord ,2 * x_coord, y_coord); // top left outer bezier
    bezier(width -  2*x_coord,  y_coord, width-x_coord,  y_coord, width-x_coord,  y_coord, width - x_coord,  2*y_coord); // top right outer bezier
    bezier(x_coord_copy,  height-y_coord, x_coord,  height-y_coord, x_coord,  height-y_coord, x_coord,  height-2*y_coord_copy); // bottom left outer bezier
    
    
    fill(1,2,15);
    beginShape();
    vertex(x_coord_copy, y_coord_copy);
    vertex(width-x_coord_copy, y_coord_copy);
    vertex(width-x_coord_copy, height-y_coord_copy);
    vertex(x_coord_copy, height-y_coord_copy);
    endShape(CLOSE);
    
    if(line==1)
    {
      line(1100,y_coord_copy,1100,height-y_coord_copy);
      line(1095,y_coord_copy,1095,height-y_coord_copy);
      line(x_coord_copy, height * 0.88, 1095, height*0.88); 
      name_box();
      map_button();
      weapon_button();
      armor_button();
      record_button();
      
      save_button();
      
    }
    delete_button();
  } // end border
  
  void map_button()
  {
    
    float box1_x=100, box1_y=30; int size_x=100, size_y=50;
   
    
    if(screen==4 ||(mouseX > box1_x) &&  (mouseX< (size_x+box1_x)) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))
    {
      fill(131,156,165);
      
    }
    else
    {
      fill(1,2,15);
    }
    
    beginShape();
    vertex(box1_x, height- box1_y);
    vertex(size_x + box1_x,height- box1_y);
    vertex(size_x + box1_x,height- ((size_y+box1_y-10)));  // top right corner
    vertex(size_x+ box1_x -10,height- size_y-box1_y);
    vertex(box1_x+10, height- size_y -box1_y);   // top left corner
    vertex(box1_x, height- ((size_y + box1_y)-10)); 
    endShape(CLOSE);
    
    fill(200,2,15);
    textSize(20);
    text("Map",box1_x+ (box1_x *0.3f), height- (box1_y+(box1_y *0.3f)));
    
  }
  
  void weapon_button()
  {
    float box2_x=100 * 2 +20, box1_y=30;int size_x=100, size_y=50;
    
    if(screen==3 ||(mouseX > box2_x ) &&  (mouseX< (size_x+box2_x) ) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))
    {
      fill(131,156,165);
    }
    else
    {
      fill(1,2,15);
    }
    
    beginShape();
    vertex(box2_x, height- box1_y);
    vertex(size_x+box2_x,height- box1_y);
    vertex(size_x + box2_x,height- ((size_y+box1_y)-10));  // top right corner
    vertex(size_x + box2_x -10,height- size_y-box1_y);
    vertex(box2_x+10, height- size_y - box1_y);   // top left corner
    vertex(box2_x, height- ((size_y +box1_y)-10)); 
    endShape(CLOSE);
    
    fill(200,2,15);
    textSize(20);
    text("Weapons",box2_x+ (box2_x *0.037f), height- (box1_y+(box1_y *0.3f)));
    
  }
  
  void armor_button()
  {
    float box3_x= 100*3 +40, box1_y= 30 ;int size_x=100, size_y=50;
  
    
    if( screen==6 || (mouseX > box3_x ) &&  (mouseX< (size_x +box3_x)) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))
    {
      fill(131,156,165);
    }
    else
    {
      fill(1,2,15);
    }
    
    beginShape();
    vertex(box3_x, height- box1_y);
    vertex(size_x+box3_x,height- box1_y);
    vertex(size_x + box3_x,height- ((size_y+box1_y)-10));  // top right corner
    vertex(size_x + box3_x -10,height- size_y-box1_y);
    vertex(box3_x+10, height- size_y - box1_y);   // top left corner
    vertex(box3_x, height- ((size_y +box1_y)-10)); 
    endShape(CLOSE);
    
    
    fill(200,2,15);
    textSize(20);
    text("Armor",box3_x+ (box3_x *0.06f), height- (box1_y+(box1_y *0.3f)));
    
    
  }
  
  void record_button()
  {
    float box4_x=920, box4_y=30, size_x=100, size_y=50;
    
    if(screen==5 ||(mouseX > box4_x) &&  (mouseX< (size_x+box4_x)) && (mouseY> height- (size_y+box4_y)) && (mouseY< height - box4_y))
    {
      fill(131,156,165);  
    }
    else
    {
      fill(1,2,15);
    }
    beginShape();
    vertex(box4_x, height- box4_y);
    vertex(size_x + box4_x,height- box4_y);
    vertex(size_x + box4_x,height- ((size_y+box4_y-10)));  // top right corner
    vertex(size_x+ box4_x -10,height- size_y-box4_y);
    vertex(box4_x+10, height- size_y -box4_y);   // top left corner
    vertex(box4_x, height- ((size_y + box4_y)-10)); 
    endShape(CLOSE); 
    fill(200,2,15);
    textSize(20);
    text("Records",box4_x+ (box4_x *0.013f), height- (box4_y+(box4_y *0.3f)));
    
  }
  
  void name_box()
  {
      float name_length=map(file.length(), 0, 12, 0, 130);
      textSize(14);
      stroke(25,45,90);    
      strokeWeight(2);
      fill(200,2,15);
      text(file, 1095-name_length,y_coord_copy+35);
      fill(1,2,15);
      line(1090-name_length,y_coord_copy +40,1095,y_coord_copy +40);
  }

  void save_button()
  {
    float box4_x=920, box4_y=120, size_x=90, size_y=35;

    fill(1,2,15);
    beginShape();
    vertex(box4_x-50, height-box4_y-200);
    vertex(box4_x-50, height-box4_y+10);
    vertex(box4_x+150, height-box4_y+10);
    vertex(box4_x+150, height-box4_y-200);
    
    endShape(CLOSE);
    
    
    // button for the save
    if(screen==5 ||(mouseX > box4_x) &&  (mouseX< (size_x+box4_x)) && (mouseY> height- (size_y+box4_y)) && (mouseY< height - box4_y))
    {
      fill(131,156,165);  
    }
    else
    {
      fill(1,2,15);
    }        
    // button box
    beginShape();
    vertex(box4_x+5, height- box4_y);
    vertex(size_x +5 + box4_x,height- box4_y);
    vertex(size_x +5 + box4_x,height- ((size_y+box4_y-10)));  // top right corner
    vertex(size_x +5 + box4_x -10,height- size_y-box4_y);
    vertex(box4_x+5+10, height- size_y -box4_y);   // top left corner
    vertex(box4_x +5, height- ((size_y + box4_y)-10)); 
    endShape(CLOSE);
    
    stroke(25,45,90);    
    strokeWeight(2);
    fill(200,2,15);
    textSize(19);
    text("Loadout:", box4_x-50+5, height-box4_y-200+20 );
    
    
    textSize(14);
    text("Primary: "+ w_l.get(pic_index).name, box4_x-50+15, height-box4_y-200+65);
    text("Secondary: "+ w_l2.get(pic_index2).name, box4_x-50+15, height-box4_y-200+85);
    text("Armor: "+ a_l.get(pic_index3).name, box4_x-50+15, height-box4_y-200+105);
    text("Map: "+ m_l.get(pic_index4).name, box4_x-50+15, height-box4_y-200+125);
    
    textSize(16);
    text("Save", box4_x+33, height- box4_y-11);
  
    
  }
  
  void delete_button()
  {
    if(screen==5)
    {
      float box4_x=width*0.45, box4_y=100, size_x=120, size_y=45;
      
      if((mouseX > box4_x) &&  (mouseX< (size_x+box4_x)) && (mouseY> height- (size_y+box4_y)) && (mouseY< height - box4_y))
      {
        fill(131,156,165);  
      }
      else
      {
        fill(1,2,15);
      }
      
      beginShape();
      vertex(box4_x+5, height- box4_y);
      vertex(size_x +5 + box4_x,height- box4_y);
      vertex(size_x +5 + box4_x,height- ((size_y+box4_y-10)));  // top right corner
      vertex(size_x +5 + box4_x -10,height- size_y-box4_y);
      vertex(box4_x+5+10, height- size_y -box4_y);   // top left corner
      vertex(box4_x +5, height- ((size_y + box4_y)-10)); 
      endShape(CLOSE);
      
      fill(200,2,15);
      textSize(16);
      text("Delete all", box4_x+30, height- box4_y-11);
  
      fill(1,2,15);
    }
  }
}