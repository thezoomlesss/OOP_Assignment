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
    if(keyPressed && index<12)
    {
      
      delay(100);
      if(key!=BACKSPACE)
      {
        name[index]=key;
        index++;
      }
      if(key==ENTER) 
      {
        println(index);
            
        text_file();
        screen=3;          //few errors here
        
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
        delay(100);
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
      String file= new String(name);
      String extension=".txt";
      
      file=file+extension;
      
     
      File f = new File(sketchPath(file));
      
      if(f.exists())
      {
        println("DA");
      }
      else
      {
        println("NU");
      }
    }
  }
}