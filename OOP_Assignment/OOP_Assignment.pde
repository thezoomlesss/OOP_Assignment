/*
      Year 2 Object Oriented Assignment
      Mohamad Zabad C15745405
      
      
      To do list:
        - Program state function to determine which screen to use
        - 3+ screens
        - Animation between swapping the screens
        - Make everything modular
        - Continous functions 
        -  Loading animation    DONE

*/


void setup()
{
  size(700,700);  // The size to be change
  image_width= width * 0.2f; 
  image_height= height * 0.2f;
  game_state(0);
  frameRate(60);
  smooth();
}


// Global declaration area
float direction = PI; // Leave this here for now. Has to be added to display_clock
float x=255,y=100,z=140; // The colors from fill_clock and display_clock
int condition=0;  // Variable used for the color of the loading screen. Leave it like this
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
      background(0);          // This should be the first screen
      break;
    }
    case 1:
    {
      display_loading();    // The loading screen
      break;
    }
    case 2:
    {
      
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
  // Vars
  int position_x = 350;
  int position_y =350;
  
 
  
  // Settings used for the arcs
  noFill();
  strokeWeight(5);
  background(0);   // This might need to be removed 
  
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
  int h= hour();      // 0-23
  int m= minute();    // 0-59
  int s= second();    // 0-59
  float map_h,map_m,map_s;
  int position_x=350, position_y=350;
  
  background(0);
  noFill();
  
  map_h= map(h,0,23,0, PI * 2);
  map_m=map(m,0,59,0 ,PI*2);
  map_s=map(s, 0, 59, 0, PI * 2);
  
  strokeWeight(12);
  stroke(51,51,51);                                
  arc(position_x, position_y, image_width-20, image_height-20, 0, 360);
  stroke(193,242,255);
  arc(position_x, position_y, image_width-20, image_height-20, (PI * 3)/2, map_s + (PI * 3)/2);  
  
  strokeWeight(19);
  stroke(51,51,51);
  arc(position_x, position_y, image_width+27, image_height+27, 0, 360);                                
  stroke(144,206,221);
  arc(position_x, position_y, image_width+27, image_height+27, (PI * 3)/2, map_m + (PI * 3)/2);  // The blue filling of the bars
  
  strokeWeight(22);
  stroke(51,51,51);                               
  stroke(80,132,145);
  
  textSize(20);
  text(h+":"+m+":"+s, 315, 355);
}