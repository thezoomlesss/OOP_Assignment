class Show_Records
{
  Table table;
  String file;
  
 
  void display()
  {
    display.border(0);
    
    table=loadTable(this.file+".csv");

  }
}  