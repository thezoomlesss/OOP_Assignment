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
  size(700,700);  // The size to be changed
  game_state(0);
  frameRate(60);
  smooth();
}


// Global declaration area
float direction = PI; // Leave this here for now. Has to be added to display_clock
float x=255,y=100,z=140; // The colors from fill_clock and display_clock
int condition=0;  // Variable used for the color of the loading screen. Leave it like this
  
  
void draw()
{
  
  display_loading();
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
  float clock_width= width * 0.2f; 
  float clock_height= height * 0.2f;
  int position_x = 350;
  int position_y =350;
  
 
  
  // Settings used for the arcs
  noFill();
  strokeWeight(5);
  background(0);   // This might need to be removed 
  
  fill_loading();
  stroke(x, y, z);        // another test here
  
  arc(position_x, position_y, clock_width, clock_height, -direction- PI, -direction);
  arc(position_x, position_y, clock_width+20, clock_height+20, direction, direction+ PI );      
  arc(position_x, position_y, clock_width+40, clock_height+40, direction-PI, direction );
  arc(position_x,position_y, clock_width+60, clock_height+60, -direction, -direction + PI);     
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