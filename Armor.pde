class Armor
{
  void display()
  {
    display.border(1);
    logo.display1();
    logo.display2();
    logo.display3();
    display.name_box();
  }

}

class Armors
{
  int id;
  PImage img;
  String type;
  String recharge_rate;
  
  Armors(int a, String b, String c)
  {
    this.id=a;
    this.img= loadImage(dataPath("Image_a"+a+".jpg"));
    
  }
  
  void display_armor()
  {
    image(this.img, 250,250);
  }
}