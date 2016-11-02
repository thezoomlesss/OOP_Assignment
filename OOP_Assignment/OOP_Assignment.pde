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

}


// Global declaration area
float direction = PI; // Leave this here for now. Has to be added to display_clock
  
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
  float clock_width= width * 0.10f; 
  float clock_height= height * 0.10f;
  
  // Settings used for the arcs
  noFill();
  strokeWeight(5);
  stroke(255);
  background(0);   // This might need to be removed 
  
  arc(350,350, clock_width, clock_height, direction- PI, direction);
  arc(350,350, clock_width+20, clock_height+20, direction, 2*direction);      // Make these move and add two more arcs
  arc(350,350, clock_width+40, clock_height+40, direction-PI, direction);
  arc(350,350, clock_width+60, clock_height+60, direction, 2*direction);      // Problem here with the direction, 2* direction.
  direction+=0.1; 
  if(direction > 360.0)
  {
    direction=180.0;
  }
}