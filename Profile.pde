class Profile
{
  char[] name=new char[13];
  boolean box_clicked=false;

  Profile()
  {
    
  }
  
  void get_name()
  {
    display.border(0);
    fill(100,2,15);
    textSize(65);
    text("Welcome!",width * 0.35f,height  * 0.3f);
    textSize(30);
    text("Name:",width * 0.30f,height  * 0.742f);
    fill(1,2,15);
    rect(width * 0.38f, height  * 0.7f, 260, 50);
    textSize(20);
    if(keyPressed && (index<12 || key==ENTER))
    {
      
      delay(200);
      if(key!=BACKSPACE && key!=ENTER)
      {
        name[index]=key;
        index++;
      }
      if(key==ENTER) 
      {
            
        text_file();          
        
      }
      
      if(key==BACKSPACE && index>0)  
      {
        index--;
        name[index]=name[12];
      }
    }
    else
    {
      if(key==BACKSPACE && index==12)  
      {
        delay(200);
        index--;
        name[index]=name[12];
      }
    }
    
    fill(200,0,0);
    for(int test=0; test < index; test++)
    {
      if(name[test]!=name[12])
      {
        text(name[test], width * 0.4f+(18*test),height  * 0.742f);
      }
    } // end for
    
    
  }// end get_name()
  
  void text_file()
  {
    {
      file= String.valueOf(name);
      file=file.trim();
      file=file.toUpperCase();
      // Checking if the file exists
      File f = new File(dataPath(file+".csv")); 
      if(f.exists())
      {
        println("The profile already exists");
        table.load(); // Loading the table
        new_screen=3; // This will make it go through screen 2 then to screen 3
        screen=2; // This will run for 3 seconds and then it will go to screen 3
        
        
      }
      else
      {
        println("Profile created!");
        PrintWriter profile_txt;   
        profile_txt = createWriter(dataPath(file+".csv"));   
        profile_txt.close(); 
        table.load();  // loading the table
        new_screen=3; // This will make it go through screen 2 then to screen 3
        screen=2; // This will run for 3 seconds and then it will go to screen 3
        
      }
      
    }
  }
}