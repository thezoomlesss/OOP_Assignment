class Loading2
{ 
  int size=20, cond=2;
  boolean condition2=false;
  float Xg,Yg;
  float Xg_copy, Yg_copy;
  int next_screen=0;
  
  Loading2(float Xg, float Yg)
  {
    this.Xg_copy=this.Xg=Xg;
    this.Yg_copy=this.Yg=Yg;
    this.cond=2;
    this.next_screen=0;
  }
  
  void display_loading2(int a)
  {
    
    if( this.Xg > this.Xg_copy-165 && condition2==false  )
     {
       this.Xg-=3;
       if(this.Xg<this.Xg_copy-145) condition2=true;
     }
     
     if( this.Xg<this.Xg_copy && condition2==true)
     {
       this.Xg+=3;
     }
     else
     {
       if (this.Xg > this.Xg_copy-20) condition2=false;
     }
     background(0);
     display.border(0);
     stroke(25,45,90);
     noFill();
     rect(this.Xg_copy-162, this.Yg_copy-18, size+158, size+18);
     fill(25,55,90);
     textSize(27);     
     switch(this.cond)
     {
       case 1:
       {
         text("Loading.", this.Xg_copy-135, this.Yg_copy-45);
         if(frameCount %30==0) this.cond++;
         break;
         
       }
       case 2:
       {
         text("Loading..", this.Xg_copy-135, this.Yg_copy-45);
         if(frameCount %30==0) this.cond++;
         break;
       }
       case 3:
       {
         text("Loading...", this.Xg_copy-135, this.Yg_copy-45);
         if(frameCount %30==0) this.cond=1;
         break;
       }
     }// end switch
     fill(0,55,55);
     noStroke();
     ellipse(this.Xg, this.Yg, size, size);
     if(frameCount % 60 ==0)next_screen++;
     
     if(next_screen>3)
     {
       next_screen=0;
       screen=a;
     }
  } // end display_loading2
  
}// end class