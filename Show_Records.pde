class Show_Records
{
  Table table;
  
  void load()
  {
    table=loadTable(dataPath(file+".txt"), "header, tsv");   
  }
  void store()
  {
    
  }
  void display()   // NOW HERE WORKING ON THIS
  {
    display.border(0);
    line(x_coord_copy, height * 0.88, width-x_coord_copy, height*0.88); 
    load();
    println(table.getRowCount() + " total rows in table"); 

    display.map_button();
    display.weapon_button();
    display.armor_button();
    display.record_button();
    
  }
}  