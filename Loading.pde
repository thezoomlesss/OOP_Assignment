class Loading
{
  int next_screen2;
  
  Loading()
  {
    this.next_screen2=0;
  }
  
  void display_loading(int a)
  {
    // Variables
    float position_x =  width * 0.5;
    float position_y = height * 0.5;   // remember to test this
    
    
    
    // Settings used for the arcs
    
    background(0);
    display.border(0);
    noFill();
    strokeWeight(5);
    fill_loading();
    stroke(x, y, z);        // another test here
    
    arc(position_x, position_y, image_width, image_height, -direction- PI, -direction);
    arc(position_x, position_y, image_width+20, image_height+20, direction, direction+ PI );      
    arc(position_x, position_y, image_width+40, image_height+40, direction-PI, direction );
    arc(position_x,position_y, image_width+60, image_height+60, -direction, -direction + PI);     
    direction+=0.05; 
    
    fill(150,205,205);
    textSize(20);
    text("Loading", position_x-42, position_y+2);
    
    if(frameCount % 60 == 0) next_screen2++;
    if(next_screen2>3) 
    {
      next_screen2=0;
      screen=a;
    }
  }
  
  void fill_loading()   // From pink to purple
  {
    
     if( x > 0 && condition==0  )
     {
       x--;
       if(x<2) condition=1;
     }
     
     if( x<255 && condition==1)
     {
       x++;
     }
     else
     {
       if (x > 253) condition=0;
     }
    
  }

  
}