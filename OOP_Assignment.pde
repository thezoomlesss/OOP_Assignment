/*
      Year 2 Object Oriented Assignment
      Mohamad Zabad C15745405
     
     I strongly advise using a screen with a resolution of 1366x 768 or higher 
*/


void setup()
{
  fullScreen();
  background(0);
  image_width= width * 0.08f; 
  image_height= width * 0.08f;
  frameRate(60);
  smooth();
  
  Weapon_list type_weapon_list;
  for(int index_arraylist=1;index_arraylist<4;index_arraylist++)
  {
    type_weapon_list=new Weapon_list(index_arraylist,"Primary"); 
    w_l.add(type_weapon_list);  
  }
  for(int index_arraylist=4;index_arraylist<7;index_arraylist++)
  {
    type_weapon_list=new Weapon_list(index_arraylist,"Secondary"); 
    w_l2.add(type_weapon_list);  
  }
  
  Armors ar;
  for(int index_arraylist=1;index_arraylist<3;index_arraylist++)
  {
    ar=new Armors(index_arraylist); 
    a_l.add(ar);  
  }
  
  Map mp;
  for(int index_arraylist=1;index_arraylist<5;index_arraylist++)
  {
    mp=new Map(index_arraylist); 
    m_l.add(mp);  
  }
  
}


// Global declaration area
float direction;
float x=255,y=100,z=140;     // The colors from fill_clock and display_clock
int condition=0;             // Variable used for the color of the loading screen. Leave it like this
float image_width, image_height;
int x_coord=10, y_coord=10;
boolean save_cond, load_cond=false, delete_cond;
int x_coord_copy=x_coord+5, y_coord_copy=y_coord+5; 
int index=0, screen=0, new_screen, index_key=0;
String Profile, file;
int pic_index=1, pic_index2=1; // for the weapons primary and secondary
int pic_index3=1; // for the armor
int pic_index4=1; // for the map


// Object declaration area

ArrayList <Weapon_list> w_l= new ArrayList <Weapon_list>();
ArrayList <Weapon_list> w_l2= new ArrayList <Weapon_list>();
ArrayList <Armors> a_l= new ArrayList <Armors>();
ArrayList <Map> m_l= new ArrayList<Map>();
ArrayList <Record> r_l= new ArrayList<Record>();

Border display=new Border();
Clock draw= new Clock();  
Loading paint= new Loading();
Loading2 create= new Loading2(730, 600); 
Weapons get=new Weapons(250,250);
Show_Records table_record=new Show_Records();
Profile disp= new Profile();
Logo logo= new Logo();  
Maps map=new Maps(250,250);
Armor armor=new Armor(250,250);  

void draw()
{
  game_state(screen);
  close_save();
  close_delete();
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
      get.display_weapon();  // weapon screen
      break;
    }
    case 4:
    {
      map.display();  // map screen
      break;
    }
    case 5:
    {
      table_record.display(); // display  records
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
      text("How did you end up here, buddy?", width * 0.38f, height*0.5f);
    }
  } // End switch
}

void mouseClicked()
{    
  float box1_x=100, box1_y=30;
  float box2_x=100 * 2 +20;
  float box3_x= 100*3 +40;
  float box4_x=920, box4_y=30;
  float box5_x=width*0.45, box5_y=100, size_x1=120, size_y1=45;
      
  int size_x=100, size_y=50;
  
  if(screen==4) // map
  {
       //left arrow
    if(mouseX>105 && mouseX<125 && mouseY>235 && mouseY<265)
    { 
      if(pic_index4==0) 
      {
        pic_index4=m_l.size()-1;
      }
      else 
      {
        pic_index4--;
      }
    }
    // right arrow
    if(mouseX>380 && mouseX<395 && mouseY>235 && mouseY<265)
    { 
      if(pic_index4==m_l.size()-1) 
      {
        pic_index4=0;
      }
      else 
      {
        pic_index4++;
      }
    }
    
    
  }
  else
  {
    if((mouseX > box1_x) &&  (mouseX< (size_x+box1_x)) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))  // map button pressed
    {
      new_screen=4;
      screen=1;
    }
  }
  
  
  if(screen==3) // weapons
  { 
    // first box  arrows
    //left arrow
    if(mouseX>105 && mouseX<125 && mouseY>235 && mouseY<265)
    { 
      if(pic_index==0) 
      {
        pic_index=w_l.size()-1;
      }
      else 
      {
        pic_index--;
      }
    }
    // right arrow
    if(mouseX>380 && mouseX<395 && mouseY>235 && mouseY<265)
    { 
      if(pic_index==w_l.size()-1) 
      {
        pic_index=0;
      }
      else 
      {
        pic_index++;
      }
    }
    // end first box
    
    //Second box
    // left arrow
    if((mouseX>(2.5f*250) - 145) && (mouseX<(2.5f*250) - 130) && (mouseY> 250-15) && (mouseY<250+15))
    {
      if(pic_index2==0) 
      {
        pic_index2=w_l2.size()-1;
      }
      else 
      {
        pic_index2--;
      }
    }
    
    //right arrow
    if((mouseX<(2.5f*250) + 145) && (mouseX>(2.5f*250) + 130) && (mouseY> 250-15) && (mouseY<250+15))
    {
      if(pic_index2==w_l2.size()-1) 
      {
        pic_index2=0;
      }
      else 
      {
        pic_index2++;
      }
    }
    
    
  }
  else
  {
    if((mouseX > box2_x ) &&  (mouseX< (size_x+box2_x) ) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y))  // weapons button pressed
    {
      new_screen=3;
      screen=1;  
    }
  }
    
  
  if(screen==6)  // armor
  {
     //left arrow
    if(mouseX>105 && mouseX<125 && mouseY>235 && mouseY<265)
    { 
      if(pic_index3==0) 
      {
        pic_index3=a_l.size()-1;
      }
      else 
      {
        pic_index3--;
      }
      
    }
    // right arrow
    if(mouseX>380 && mouseX<395 && mouseY>235 && mouseY<265)
    { 
      if(pic_index3==a_l.size()-1) 
      {
        pic_index3=0;
      }
      else 
      {
        pic_index3++;
      }
      
    }
  }
  else
  {
    if((mouseX > box3_x ) &&  (mouseX< (size_x +box3_x)) && (mouseY> height- (size_y+box1_y)) && (mouseY< height - box1_y)) // armor button pressed
    {
       new_screen=6;
       screen=1;
    }
  }
  
  if(screen==5)
  {
    if(delete_cond==false)
    {
      if((mouseX > box5_x) &&  (mouseX< (size_x1+box5_x)) && (mouseY> height- (size_y1+box5_y)) && (mouseY< height - box5_y))
      {
        delete_cond=true;
        table_record.delete_record();
      }
    }
    else
    {
      if(mouseX>width*0.465 && mouseX<width*0.495 && mouseY>height*0.56 && mouseY<height*0.595)
      {
        delete_cond=false;
      }
    }
    
  }
  else
  {
    if((mouseX > box4_x) &&  (mouseX< (size_x+box4_x)) && (mouseY> height- (size_y + box4_y)) && (mouseY< height - box4_y))  // record button pressed
    {
      new_screen=5;
      screen=1;      //record
    }
  }// end else
    
  if( screen == 3 || screen == 4 || screen == 6 ) 
  {
    if(save_cond==false)
    {
      if(mouseX>box4_x+5 && mouseX<box4_x+95 && mouseY>height-box4_y-125 && mouseY<height-box4_y-90)
      {
        save_cond=true;
        table_record.store();
      }
    }
    else
    {
      if(mouseX>width*0.465 && mouseX<width*0.495 && mouseY>height*0.56 && mouseY<height*0.595)
      {
        save_cond=false;
      }
    }
    
  } //end if (s 3,4,5,6)
} // end mouse clicked 

void close_save()
{
  if(save_cond==true)
    {
      fill(1,2,25);
      rect(width*0.4, height*0.46,250,120);
      fill(200,2,15);
      
      textSize(22);
      text("Saved!",width*0.46, height*0.51);
      textSize(18);
      
      if(mouseX>width*0.465 && mouseX<width*0.495 && mouseY>height*0.56 && mouseY<height*0.595)
      {
        fill(131,156,165);
      }
      else
      {
        fill(200,2,15);
      
      }
      text("OK",width*0.473, height*0.58);
    }
}
void close_delete()
{
  if(delete_cond==true)
    {
      fill(1,2,25);
      rect(width*0.4, height*0.46,250,120);
      fill(200,2,15);
      
      textSize(22);
      text("Deleted!",width*0.46, height*0.51);
      textSize(18);
      
      if(mouseX>width*0.465 && mouseX<width*0.495 && mouseY>height*0.56 && mouseY<height*0.595)
      {
        fill(131,156,165);
      }
      else
      {
        fill(200,2,15);
      
      }
      text("OK",width*0.473, height*0.58);
    }
}