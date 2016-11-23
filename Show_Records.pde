class Show_Records
{
  Table table;
  
  void load()
  {
    table=loadTable(dataPath(file+".txt"), "header, tsv");   
  }
  void display()   // NOW HERE WORKING ON THIS
  {
    display.border(0);
    load();
    println(table.getRowCount() + " total rows in table"); 

    display.map_button();
    display.weapon_button();
    display.armor_button();
    display.record_button();
    
  }
}  