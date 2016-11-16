/*
      Year 2 Object Oriented Assignment
      Mohamad Zabad C15745405
      
      
      To do list:
        - Program state function to determine which screen to use DONE
        - 3+ screens DONE
        - Animation between swapping the screens  DONE
        - Make everything modular DONE 
        - Continous functions 
        - Loading animation    DONE
        - Add border           DONE
        - Add classes for weapons
        - Add classes for armors
        - Add a change color setting
        - Use lerp for the clock to make it smoother
        - Create the file/open it and write the data/read the data
*/


void setup()
{
  //size(700,700);  // The size to be change
  
  fullScreen();
  background(0);
  image_width= width * 0.08f; 
  image_height= width * 0.08f;
  game_state(0);
  frameRate(60);
  smooth();
  
}


// Global declaration area
float direction;
float x=255,y=100,z=140;  // The colors from fill_clock and display_clock
int condition=0;     // Variable used for the color of the loading screen. Leave it like this
float image_width, image_height;
int x_coord=10, y_coord=10;
int x_coord_copy=x_coord+5, y_coord_copy=y_coord+5; 
int index=0, screen=0;
String Profile;

// Object declaration area
Border display=new Border();
Clock draw= new Clock();  
Loading paint= new Loading();
Loading2 create= new Loading2(730, 600); 
Weapons get=new Weapons(250,250);
Show_Records table=new Show_Records();
Profile disp= new Profile();
  
  
void draw()
{
  game_state(screen);
}

void game_state(int a)
{
  switch(a)
  {
    case 0:  // The welcome screen
    {
      disp.get_name();
      break;
    }
    case 1: // The loading screen
    {
      paint.display_loading();
      break;
    }
    case 2:     // The main menu
    {
      create.display_loading2();
      break;
    }
    case 3:
    {
      draw.clock();
      break;
    }
    case 4:
    {
      table.display();
      break;
    }
    
    default:
    {
      display.border(0);
      fill(255);
      stroke(255);
      textSize(20);
      text("How did you end up here, buddy?", width * 0.38f, height*0.5f);// Add an error screen here
    }
  } // End switch
}