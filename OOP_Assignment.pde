/*
      Year 2 Object Oriented Assignment
      Mohamad Zabad C15745405
      
      
      To do list:
        - Program state function to determine which screen to use DONE
        - 3+ screens DONE
        - Animation between swapping the screens  DONE
        - Make everything modular DONE 
        - Continous functions  DONE
        - Loading animation    DONE
        - Add border           DONE
        - Add classes for weapons  ON IT NOW
        - Add classes for armors  REMOVED
        - Add a change color setting 
        - Use lerp for the clock to make it smoother
        - Create the file/open it and write the data/read the data ALMOST DONE

        Error when the array is full we can't press enter.  SOLVED
*/


void setup()
{
  //size(700,700);  // The size to be change
  
  fullScreen();
  background(0);
  image_width= width * 0.08f; 
  image_height= width * 0.08f;
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
int index=0, screen=0, new_screen;
String Profile, file;

// Object declaration area

ArrayList <Weapon_list> w_l= new ArrayList <Weapon_list>();
Border display=new Border();
Clock draw= new Clock();  
Loading paint= new Loading();
Loading2 create= new Loading2(730, 600); 
Weapons get=new Weapons(250,250);
Show_Records table=new Show_Records();
Profile disp= new Profile();
Logo logo= new Logo();  
Maps map=new Maps();
Armor armor=new Armor();  

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
      paint.display_loading(new_screen);
      break;
    }
    case 2:     // The 2nd loading screen
    {
      create.display_loading2(new_screen);
      break;
    }
    case 3: // main menu
    {
      get.display_weapon();
      break;
    }
    case 4:
    {
      map.display();
      break;
    }
    case 5:
    {
      table.display();
      break;
    }
    case 6: 
    {
      armor.display();// add armor screen
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

void mouseClicked()
{
  if( screen == 3 || screen == 4 || screen == 6)
  {
    
    float box1_x=100, box1_y=50;
    float box2_x=100 * 2 +20;
    float box3_x= 100*3 +40;
    float box4_x=850, box4_y=50;
    int size_x=100;
    if((mouseX > box1_x) &&  (mouseX< (size_x+box1_x)) && (mouseY> height- (2*box1_y)) && (mouseY< height - box1_y))
    {
      new_screen=4;
      screen=1;
      // map
    }
    
    
    if((mouseX > box2_x ) &&  (mouseX< (size_x+box2_x) ) && (mouseY> height- (2*box1_y)) && (mouseY< height - box1_y))
    {
      new_screen=3;
      screen=1;  
      // weapons
    }
    
  
    
    if((mouseX > box3_x ) &&  (mouseX< (size_x +box3_x)) && (mouseY> height- (2*box1_y)) && (mouseY< height - box1_y))
    {
       new_screen=6;
       screen=1;// armor
    }
    
    
    if((mouseX > box4_x) &&  (mouseX< (size_x+box4_x)) && (mouseY> height- (2*box4_y)) && (mouseY< height - box4_y))
    {
       //record
    }
  }
}