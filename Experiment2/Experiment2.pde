

  achtergrond[] background; 
  int HowMuch_Objects; 

  void setup () 
  {
      // displayWidth= 1600 & displayHeight = 900
      size (displayWidth, displayHeight); 
      
      
       HowMuch_Objects = 2; 
       background = new achtergrond [HowMuch_Objects];
       
       for (int g = 0; g < HowMuch_Objects; g++)
       {
            background[g] = new achtergrond((displayWidth*0.5),(displayHeight*0.5),random(20,40),random(20,40),random(0,225),random(0,255), random(0,255),random(15,50));
       } 
     
     
 } // end setup 
  
  
  void draw() 
  {
      background(0); 
      
      for(int g = 0; g < HowMuch_Objects; g++)
      {
          background[g].move(random(-4,4)); 
          background[g].display();
      }
   
   
   
    
  }
