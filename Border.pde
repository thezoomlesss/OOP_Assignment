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
      name_box();
      record_button();
    }
    
  } // end border
  
  void record_button()
  {
    float box4_x=850, box4_y=50, size_x=100, size_y=50;
    
    if((mouseX > box4_x) &&  (mouseX< (size_x+box4_x)) && (mouseY> height- (2*box4_y)) && (mouseY< height - box4_y))
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
      
      fill(200,2,15);
      text(file, 1095-name_length,y_coord_copy+35);
      fill(1,2,15);
      line(1090-name_length,y_coord_copy +40,1095,y_coord_copy +40);
  }

}