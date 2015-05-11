

  void draw() 
  {
      noCursor(); // Geen muis. 
      background(0); 
      
       
      
      // Array Achtergrond. 
      for(int g = 0; g < HowMuch_Objects; g++)
      {
          background[g].move(random(-6,6),random(-6,6)); 
          background[g].zichtbaar();
      } // end for loop 
      
      
      // Filmpjes  
       MoveFilmpje(random(-4,4),random(-4,4)); // Laat filmpje bewegen.
       Afspelen(); // Kijkt of muis filmpje raakt.  
       
           if (Pinquin.available()) // Leest of er frame van filmpje beschikbaar zijn. 
           {
               Pinquin.read();       
           }
   
       // Array Filmpjes 
       for (int h = 0; h < HoeVeel; h++)
       {
           snelx_[h] = random (-2,2);
           snely_[h] = random (-2,2);
         
           MoveFilmpje2 ();
           Afspelen2(); 
         
           if (Film[h].available())
           {
               Film[h].read(); 
           }
       }
       
        Cursor.display(); 
  }
