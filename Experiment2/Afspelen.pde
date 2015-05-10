


  void Afspelen () 
  {
     if (XP < mouseX + Cursor.muisB &&
         XP + BP > mouseX &&
         YP < mouseY + Cursor.muisH &&
         HP + YP > mouseY)
        {
          println("Start the film"); 
          StartFilm = true;
          
          if (BP >= 300)
          {
              Pinquin.play(); 
              Pinquin.loop();
          }
    
        } else {
          StartFilm = false; 
          println("aaa");
          
          Pinquin.pause(); 
        }
      
     
      if (StartFilm == true)
      {
           if (BP < 300 && HP < 300)
           {
               BP +=10;
               HP +=10; 
           } 
      } else {
        
        if (BP >= 50)
           {
               BP --;
               HP --; 
           }   
      }  
  }
