

  void draw() 
  {
      noCursor(); // Geen muis. 
      background(0); 
      println(Dromenkracht);
      println(Welkezin);
      
                   
      if (Dromenkracht == true)
      { 
          background(0); 

          TekstTrue (); 
      
          // Array Achtergrond. 
          for(int g = 0; g < HowMuch_Objects; g++)
          {
              background[g].move(random(-6,6),random(-6,6)); 
              background[g].zichtbaar();
          } // end for loop 
      
   
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
              
      }  else { // Else DroomKracht is false         
         
         Tekst (); 
         
      } // end DroomKracht
      
  } // end of draw 
