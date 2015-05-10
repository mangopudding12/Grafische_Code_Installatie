

  void draw() 
  {
      noCursor(); // Geen muis. 
      background(0); 
      
       
      
      
      for(int g = 0; g < HowMuch_Objects; g++)
      {
          background[g].move(random(-6,6),random(-6,6)); 
          background[g].zichtbaar();
      } // end for loop 
      
      
      // Filmpjes  
       MoveFilmpje(random(-4,4),random(-4,4)); // Laat filmpje bewegen.
       Cursor.display(); 
       Afspelen(); // Kijkt of muis filmpje raakt.  
       
           if (Pinquin.available()) // Leest of er frame van filmpje beschikbaar zijn. 
           {
               Pinquin.read();       
           }
   
  }
