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
      if(key!=BACKSPACE)
      {
        name[index]=key;
        index++;
      }
      delay(300);
      if(key==ENTER) screen=3;          //few errors here
      else
      if(key==BACKSPACE && index>1)  
      {
        name[index]=name[12];
        index--;
        println(index);
      }
   }
    fill(200,0,0);
    for(int test=0; test < index; test++)
    {
      if(name[test]!=name[12])
      {
        text(name[test], width * 0.4f+(20*test),height  * 0.742f);
      }
    }
    
    if(index==5) 
    {     
      println(name);
      screen=3;
    }
  }
  
}