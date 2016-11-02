/*
      Year 2 Object Oriented Assignment
      Mohamad Zabad C15745405
      
      
      To do list:
        - Program state function to determine which screen to use
        - 3+ screens
        - Animation between swapping the screens
        - Make everything modular
        - Continous functions 


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
float x=0,y=255,z=255; // The colors from fill_clock and display_clock
    
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

void display_clock()
{
  // Vars
  float clock_width= width * 0.2f; 
  float clock_height= height * 0.2f;
  
 
  
  // Settings used for the arcs
  noFill();
  strokeWeight(5);
  background(0);   // This might need to be removed 
  
  fill_clock();
  stroke(x, y, z);        // another test here
  
  arc(350,350, clock_width, clock_height, -direction- PI, -direction);
  arc(350,350, clock_width+20, clock_height+20, direction, direction+ PI );      
  arc(350,350, clock_width+40, clock_height+40, direction-PI, direction );
  arc(350,350, clock_width+60, clock_height+60, -direction, -direction + PI);     
  direction+=0.05; 
  
}

void fill_clock()   // Needs to feel a bit nicer
{
  
  
  if(z > 0)
  {
    z--;
  }
  else
  {
    if(y > 0)
    {
      y--;
      x+=0.2;
    }
    else
    {
      if( x<255 )
      {
        x++;
        
      }
      else
      {
        z=y=255;
        x=0;
      }
    }
  }
  
  println(x,y,z);
}