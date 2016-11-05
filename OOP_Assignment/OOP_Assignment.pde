/*
      Year 2 Object Oriented Assignment
      Mohamad Zabad C15745405
      
      
      To do list:
        - Program state function to determine which screen to use
        - 3+ screens
        - Animation between swapping the screens
        - Make everything modular
        - Continous functions 
        - Loading animation    DONE
        - Add border
        - Add classes for weapons
        - Add classes for armors
        - Add a change color setting

*/


void setup()
{
  //size(700,700);  // The size to be change
  fullScreen();
  //background(0);
  image_width= width * 0.08f; 
  image_height= width * 0.08f;
  game_state(0);
  frameRate(60);
  smooth();
  
}


// Global declaration area
float direction = PI;   // Leave this here for now. Has to be added to display_clock
float x=255,y=100,z=140;  // The colors from fill_clock and display_clock
int condition=0;     // Variable used for the color of the loading screen. Leave it like this
float image_width; 
float image_height;
  
void draw()
{
    
  display_clock();
    
}

void game_state(int a)
{
  switch(a)
  {
    case 0:
    {
      //background(0);    // The welcome screen
      break;
    }
    case 1: // The loading screen
    {
      display_loading();
  
      break;
    }
    case 2:     // The main menu
    {
      //display_clock();
  
      break;
    }
    default:
    {
      // Add an error screen here
    }
  }
}

void display_loading()
{
  // Variables
  float position_x = 350;// width * 0.4;
  float position_y = 350;//height * 0.4;   // remember to test this
  
 
  
  // Settings used for the arcs
  noFill();
  strokeWeight(5);
  //background(0);
  
  fill_loading();
  stroke(x, y, z);        // another test here
  
  arc(position_x, position_y, image_width, image_height, -direction- PI, -direction);
  arc(position_x, position_y, image_width+20, image_height+20, direction, direction+ PI );      
  arc(position_x, position_y, image_width+40, image_height+40, direction-PI, direction );
  arc(position_x,position_y, image_width+60, image_height+60, -direction, -direction + PI);     
  direction+=0.05; 
  
  fill(150,205,205);
  textSize(30);
  text("Loading", position_x-60, position_y);
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

void display_clock()
{
  background(0); 
  border();
  
    int h= hour();      // 0-23
    int m= minute();    // 0-59
    int s= second();    // 0-59
    float map_h,map_m,map_s;
    float position_x= width * 0.9;
    float position_y= height * 0.83;
    String h_disp= nf(h,2);
    String m_disp= nf(m,2);
    String s_disp= nf(s,2);  
    
    
    noFill();
    
    map_h= map(h,0,23,0, PI * 2);   // Not looking like a proper clock
    map_m=map(m,0,59,0 ,PI*2);
    map_s=map(s, 0, 59, 0, PI * 2);
    
    // The second's base and meter
    strokeWeight(12);
    stroke(51,51,51);                                
    arc(position_x, position_y, image_width-20, image_height-20, 0, 360);
    stroke(193,242,255);
    arc(position_x, position_y, image_width-20, image_height-20, (PI * 3)/2, map_s + (PI * 3)/2);  
    
    // The minute's base and meter
    strokeWeight(19);
    stroke(51,51,51);
    arc(position_x, position_y, image_width+27, image_height+27, 0, 360);                                
    stroke(144,206,221);
    arc(position_x, position_y, image_width+27, image_height+27, (PI * 3)/2, map_m + (PI * 3)/2);  // The blue filling of the bars
    
    // The hour's base and meter
    strokeWeight(22);
    stroke(51,51,51);                               
    arc(position_x, position_y, image_width+80, image_height+80, 0, 360); 
    stroke(80,132,145);
    arc(position_x, position_y, image_width+80, image_height+80, (PI * 3)/2, map_h + (PI * 3)/2);
    
    textSize(14);
    text(h_disp+":" + m_disp + ":" + s_disp, position_x-30, position_y+10);
     
   
}

void border()
{
  int x_coord=10, y_coord=10;
  int x_coord_copy=x_coord+5, y_coord_copy=y_coord+5;
  
  int from=color(0,255,0);
  int to= color(0,0,255);
  float color_used;
  
  color_used=lerpColor(from, to, 0.5);
  stroke(25,45,90);    // Do something with the lerp
  println(color_used);
  
  
  strokeWeight(2);
  noFill();
  
  line( 2 * x_coord, y_coord, width -   x_coord_copy , y_coord); // top outer line
  line(x_coord, 2 * y_coord, x_coord, height - 2 * y_coord_copy); // left outer
  
  line( 2 * x_coord, y_coord_copy, width - 2 * x_coord_copy , y_coord_copy); // top inner
  line(x_coord_copy, 2 * y_coord_copy, x_coord_copy, height- 2 * y_coord_copy); // left inner
  bezier(x_coord,2 * y_coord, x_coord, y_coord, x_coord, y_coord ,2 * x_coord, y_coord); // top left outer bezier
  bezier(x_coord_copy,2 * y_coord_copy, x_coord_copy, y_coord_copy, x_coord_copy, y_coord_copy ,2 * x_coord_copy, y_coord_copy); // top left inner bezier
 
 
  line(width -2 * x_coord, height-y_coord, 2 * x_coord_copy, height-y_coord);  // bottom outer
  line(width - x_coord, height - 2 * y_coord, width- x_coord,  y_coord_copy); // right outer 
  bezier(width-x_coord,height - 2 * y_coord, width-x_coord, height-y_coord, width-x_coord, height-y_coord,width-2 * x_coord, height-y_coord); // bottom right outer bezier
  
  bezier(width -  2*x_coord,  y_coord, width-x_coord,  y_coord, width-x_coord,  y_coord, width - x_coord,  2*y_coord); // top right outer bezier
  bezier(width -  2*x_coord_copy,  y_coord_copy, width-x_coord_copy,  y_coord_copy, width-x_coord_copy,  y_coord_copy, width - x_coord_copy,  2*y_coord_copy); // top right inner bezier
  
  line(width-2 * x_coord_copy, height-y_coord_copy, 2*x_coord_copy, height-y_coord_copy);  //bottom inner
  line(width-x_coord_copy, height-2 * y_coord_copy, width - x_coord_copy, 2*y_coord_copy); // right inner
  bezier(width-x_coord_copy,height-2 * y_coord_copy, width- x_coord_copy, height-y_coord_copy, width-x_coord_copy, height-y_coord_copy ,width-2 * x_coord_copy, height-y_coord_copy); // bottom right inner bezier
  
  bezier(2*x_coord_copy,  height-y_coord, x_coord,  height-y_coord, x_coord,  height-y_coord, x_coord,  height-2*y_coord_copy); // bottom left outer bezier
  bezier(2*x_coord_copy,  height-y_coord_copy, x_coord_copy,  height-y_coord_copy, x_coord_copy,  height-y_coord_copy, x_coord_copy,  height-2*y_coord_copy); // bottom left inner bezier
   
}