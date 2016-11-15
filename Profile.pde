class Profile
{
  char[] name=new char[12];
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
    if(keyPressed && index<12)
    {
      name[index]=key;
      index++;
      delay(300);
      if(key==ENTER) screen=3;
      if(key==BACKSPACE && index>0)  // This is not working
      {
        name[index]=' ';
        index--;
      }
    }
    
    if(index==5) 
    {
      
      println(name);
      screen=3;
    }
    println(index);
  }
  
}