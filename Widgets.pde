class Clock
{
  void clock()
  {
    background(0);
    display.border(1);
    get.display_weapon();
    logo.display1();
    logo.display2();
    logo.display3();
    
      int h= hour();        // 0-23
      int m= minute();      // 0-59
      int s= second();      // 0-59
      float map_h,map_m,map_s;
      float position_x= width * 0.9;
      float position_y= height * 0.83;
      String h_disp= nf(h,2);
      String m_disp= nf(m,2);
      String s_disp= nf(s,2);  
      
      
      noFill();
      if( h > 12)
      {
        h-=12;
      }
      
      map_h=map(h,0,12,0, PI * 2);   // Not looking like a proper clock
      map_m=map(m,0,59,0 ,PI*2);
      map_s=map(s, 0, 59, 0, PI * 2);
      
      
      // The second's base and meter
      strokeWeight(12);
      stroke(51,51,51);                                
      arc(position_x, position_y, image_width-20, image_height-20, 0, 360);
      stroke(193,242,255);
      arc(position_x, position_y, image_width-20, image_height-20,  (PI * 3)/2, map_s + (PI * 3)/2);  
      
      // The minute's base and meter
      strokeWeight(19);
      stroke(51,51,51);
      arc(position_x, position_y, image_width+27, image_height+27, 0, 360);                                
      stroke(144,206,221);
      arc(position_x, position_y, image_width+27, image_height+27, (PI * 3)/2, map_m + (PI * 3)/2);  // The blue filling of the bars
      
      // The hour's base and meter
      strokeWeight(22);
      stroke(51,51,51);                               
      arc(position_x, position_y, image_width+80, image_height+80, 0, 360); 
      stroke(80,132,145);
      arc(position_x, position_y, image_width+80, image_height+80, (PI * 3)/2, map_h + (PI * 3)/2);
      
      textSize(14);
      fill(255);
      text(h_disp+":" + m_disp + ":" + s_disp, position_x-30, position_y+10); 
  }
}

class Logo
{
  float p_x=1366-130, p_y=80;
  
  
  void display1()
  {
    fill(255);
    noStroke();
    beginShape();
    vertex(p_x, p_y-20); // top outer middle
    vertex(p_x-20, p_y); // top outer left
    vertex(p_x-20, p_y+50); // bottom outer left
    vertex(p_x-3, p_y+50+20); // bottom outer middle left side
    vertex(p_x-3, p_y+50); // bottom inner middle left side
    vertex(p_x-10, p_y+50-10); // bottom left inner
    vertex(p_x-10, p_y+10); // top inner left
    vertex(p_x, p_y); // middle inner
    vertex(p_x+10, p_y+10); // top inner right
    vertex(p_x+10, p_y+50-10);// bottom right inner 
    vertex(p_x+3, p_y+50); // bottom inner middlie right side
    vertex(p_x+3, p_y+50+20); // bottom outer middle right side
    vertex(p_x+20, p_y+50); // bottom outer right
    vertex(p_x+20, p_y); // top outer right
    endShape(CLOSE);
    
    fill(244,164,96);
    beginShape();  // Left shape
    vertex(p_x-20-5, p_y+5); // top right 
    vertex(p_x-20-5-7, p_y+5+5); //top left
    vertex(p_x-20-5-7, p_y+5+5+50); // bottom left outer
    vertex(p_x-13,p_y+50+30); // bottom outer
    vertex(p_x-13,p_y+50+17); // bottom inner
    vertex(p_x-20-5, p_y+5+5+50-5); // bottom left inner
    endShape(CLOSE);
    
    beginShape();
    vertex(p_x+20+5, p_y+5); // top right 
    vertex(p_x+20+5+7, p_y+5+5); //top left
    vertex(p_x+20+5+7, p_y+5+5+50); // bottom left outer
    vertex(p_x+13,p_y+50+30); // bottom outer
    vertex(p_x+13,p_y+50+17); // bottom inner
    vertex(p_x+20+5, p_y+5+5+50-5); // bottom left inner
    endShape(CLOSE);
  }
  
  void display2()
  {
    float p2_x=1366-130,p2_y=220;
    
    fill(188,198,204);
    beginShape();
    vertex(p2_x-5,p2_y); // top middle inner left side
    vertex(p2_x-5-10, p2_y); // top middle outer left side
    vertex(p2_x-5-10-15, p2_y+30); // mid point
    vertex(p2_x-5-10-20-20, p2_y+30+40); // lower outer left
    vertex(p2_x-5-10-20-20+10, p2_y+30+40); // lower inner left
    vertex(p2_x-5, p2_y+30);
    endShape(CLOSE);
    beginShape();
    vertex(p2_x+5,p2_y); // top middle inner left side
    vertex(p2_x+5+10, p2_y); // top middle outer left side
    vertex(p2_x+5+10+15, p2_y+30); // mid point
    vertex(p2_x+5+10+20+20, p2_y+30+40); // lower outer left
    vertex(p2_x+5+10+20+20-10, p2_y+30+40); // lower inner left
    vertex(p2_x+5, p2_y+30);
    endShape(CLOSE);
    
    stroke(188,198,204);
    ellipse(p2_x, p2_y+30+30, 25,25);
    line(p2_x, p2_y+30+30, p2_x-1, p2_y-5);
    beginShape();          //The arrow of the second logo
    vertex(p2_x, p2_y-25);
    vertex(p2_x-12, p2_y-5);
    vertex(p2_x+12, p2_y-5);
    endShape(CLOSE);
  }
  
  void display3()
  {
    float p3_x=1366-130, p3_y=340;
    /*
    fill(1,2,40);
    //stroke(188,198,204);
    stroke(158,168,174);
    strokeWeight(3);
    beginShape();
    vertex(p3_x, p3_y-10); // top hexagon
    vertex(p3_x-40, p3_y+25); // top left corner
    vertex(p3_x-40, p3_y+60); // bottom left corner
    vertex(p3_x, p3_y+90); // bottom hexagon
    vertex(p3_x+40, p3_y+60); // bottom right corner
    vertex(p3_x+40, p3_y+25); // top right corner
    endShape(CLOSE);
    
   
    line(p3_x, p3_y-10, p3_x, p3_y+20);
    line(p3_x-40, p3_y+60, p3_x-25, p3_y+55);
    line(p3_x+40, p3_y+60, p3_x+25, p3_y+55);
    */
    fill(0,127,255);
    beginShape();  // left triangle
    vertex(p3_x-40, p3_y+30);
    vertex(p3_x, p3_y+100); // bottom corner
    vertex(p3_x, p3_y+55);
    endShape(CLOSE);
    
    beginShape();  // top part
    vertex(p3_x-40, p3_y+30);
    vertex(p3_x+40, p3_y+30);
    vertex(p3_x, p3_y+55);
    endShape(CLOSE);
    
    beginShape();
    vertex(p3_x+40, p3_y+30);
    vertex(p3_x, p3_y+100);
    vertex(p3_x, p3_y+55);
    endShape(CLOSE);
  }
}