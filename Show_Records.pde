class Show_Records
{
  Table table;
  
  void load()
  {
    table=loadTable(dataPath(file+".csv"));   
  }
  void display()
  {
    display.border(0);
    load();
    println(table.getRowCount() + " total rows in table"); 

    
    
  }
}  