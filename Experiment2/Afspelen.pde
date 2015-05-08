


  void Afspelen () 
  {
     if (XP < mouseX + MuisB &&
         XP + BP > mouseX &&
         YP < mouseY + MuisH &&
         HP + YP > mouseY)
        {
          println("Start the film"); 
          StartFilm = true;
          println(StartFilm);
        } else 
        {
          StartFilm = false; 
          println("aaa");
        }
      
      if (StartFilm == true)
      {  
          Pinquin.loop(); 
          Pinquin.play();    
      } else { 
          Pinquin.play(); 
      }
           
     
      
      
      
      
      
      
      
      
  }
