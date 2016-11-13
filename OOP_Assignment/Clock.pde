class Clock
{
  void clock()
  {
    //background(60,40,40); 
    background(0);
    display.border();
    get.display_weapon();
    
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