import processing.serial.*;
import de.bezier.data.sql.*; MySQL db;

int strtoint;
float strtofloat;
String myString = null;
Serial myPort; // The serial port

void setup () {
  // List all the available serial ports //printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, "COM25", 9600);
  myPort.clear();
  // Throw out the first reading, in case we started reading // in the middle of a string from the sender.
 // myString = myPort.readStringUntil('\n');
  myString = null;
  
  //DB connection
  frameRate(1); // 1 frame per second size(200, 200);
  
  //Credentials
  String server = "voting.cvgbsrmxgfpe.eu-central-1.rds.amazonaws.com "; 
  String user = "user16";
  String pass = "password";
  String database = "votes";
  
  db = new MySQL(this, server, database, user, pass); 

  


    
}

void draw () {
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil('\n');
    if (myString != null){ // if received string is non empty
    //String[] myStringList = split(myString, ':'); // split the String into two substrings separated by ':'
    //if (myStringList.length == 2) { // if there are 2 Strings in myStringList
      println(myString);
      if (db.connect()) {
      db.query("INSERT INTO voting2( Names, Date) VALUES( '%s' ,CURRENT_DATE())", myString);
        }
    //}
    }
    }
} 

 