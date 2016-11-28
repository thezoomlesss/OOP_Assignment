import java.io.BufferedWriter;
import java.io.FileWriter;  
  
class Show_Records
{
  
  void load()
  {
    Table table = loadTable(file+".txt", "tsv");
   
     int rowCount = table.getRowCount();   
     for(int i = 0; i < rowCount; i++)
     {
       Record one_line = new Record(table.getInt(i,0), table.getInt(i,1), table.getInt(i,2), table.getInt(i,3));
       r_l.add(one_line);
     }   
  } // end load
  
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
  
  
  void display()   // NOW HERE WORKING ON THIS
  {
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
      println(primary1+" "+ secondary1+" "+armor1+" "+map1);
    } // end for
    
    
    display.map_button();
    display.weapon_button();
    display.armor_button();
    display.record_button();
    
  }
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