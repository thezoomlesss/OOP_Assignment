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
    }
    
  }

}