import java.io.BufferedWriter;
import java.io.FileWriter;  
import java.io.File;

class Show_Records
{
  
  
  void load()
  {
    if(load_cond == false)
    {
      Table table = loadTable(file+".txt", "tsv");
     
      int rowCount = table.getRowCount();   
      for(int i = 0; i < rowCount; i++)
      {
       
       Record one_line = new Record(table.getInt(i,0), table.getInt(i,1), table.getInt(i,2), table.getInt(i,3));
       r_l.add(one_line);
       
     } //end for
     
     load_cond=true;
    } // end if
    
  } // end load
  
  void delete_record()
  {
    try 
    {
      FileWriter output = new FileWriter(dataPath(file+".txt"),false); //the false will reset the new data
      output.close();
      load_cond=false;                    
    }
    catch(IOException e) 
    {
      println("ERROR on writing in the file");
      e.printStackTrace();
    }
    
   int size= r_l.size();
   for(int index=size-1; index>=0; index--)
   {
      r_l.remove(index);
   }
    
  }
  
  void store()
  { 
    try 
    {
      FileWriter output = new FileWriter(dataPath(file+".txt"),true); //the true will append the new data
      output.write(pic_index+"\t"+pic_index2+"\t"+pic_index3+"\t"+pic_index4+"\n");
      output.close();
    }
    catch(IOException e) 
    {
      println("ERROR on writing in the file");
      e.printStackTrace();
    }
  }
  
    
  void display()   
  {
    
    float x_crd= width*0.04, y_crd= height * 0.05, x_size=width-100, y_size=40;
    String primary1, secondary1, armor1, map1;
    
    display.border(0);
    line(x_coord_copy, height * 0.88, width-x_coord_copy, height*0.88); 
    load();
    
    for (int i = 0; i < r_l.size(); i++)
    {
      Record example = r_l.get(i);
      switch(example.primary)
      {
        case 0:
        {
          primary1="K-8 Avenger";
          break;
        }
        case 1:
        {
          primary1="R-25 Hornet";
          break;
        }
        case 2:
        {
          primary1="M-99 Saber";
          break;
        }
        default:
        {
          primary1="X-Victus"+ "0"+ example.primary;
        }
      }// end switch primary
      
      switch(example.secondary)
      {
        case 0:
        {
          secondary1="Arc Pistol";
          break;
        }
        case 1:
        {
          secondary1="S4-358 Talon";
          break;
        }
        case 2:
        {
          secondary1="M-5 Phalanx";
          break;
        }
        default:
        {
          secondary1="X-Victus"+ "0"+ example.secondary;
        }
      } // end switch secondary
      
      switch(example.armor)
      {
        case 0:
        {
          armor1="Yuna-300";
          break;
        }
        case 1:
        {
          armor1="RT-200";
          break;
        }
        default:
        {
          armor1="K3-"+example.armor;
        }
      } // end switch armor
      
      switch(example.map)
      {
        case 0:
        {
          map1="Eagle Nebula";
          break;
        }
        case 1:
        {
          map1="Gemini Sigma";
          break;
        }
        default:
        {
          map1="Nebula-"+example.map;
        }
      } // end switch map
     if(i<14)
     {
       stroke(100,2,15); 
       rect(x_crd, y_crd, x_size, y_size);
       stroke(25,45,90);    
       y_crd+=y_size;
       fill(200,2,15);
       text(" Primary: "+primary1,x_crd+15,y_crd - 10);
       text("Secondary: "+secondary1, x_crd + 365, y_crd-10);
       text("Armor: "+ armor1, x_crd +715, y_crd-10);
       text("Map: "+ map1, x_crd +965, y_crd-10);
       
       fill(1,2,15);
     }
     
  } // end for 
      
    display.map_button();
    display.weapon_button();
    display.armor_button();
    display.record_button();
      
  } // end void display
  
}  // end class show_record

class Record
{
  int primary, secondary, armor, map;
  
  Record(int primary, int secondary, int armor, int map)
  {
    this.primary= primary;
    this.secondary=secondary;
    this.armor= armor;
    this.map=map;
  } // end constructor
  
}