

  void MoveFilmpje (float snelFilmpjex_,float snelFilmpjey_)
  {
        snelFilmpje.x = snelFilmpjex_; // Random snelheid die constant verandert voor object.    
        snelFilmpje.y = snelFilmpjey_; 
        
        // Zorgen dat het soort knop funcitie krijgt. 
        // Een keer op de knop drukken ze bewegen. 
        // Tweede keer op de knop drukken ze stoppen met bewegen. 
        if (aan_uitt == true)
        {
            XP += snelFilmpje.x; 
            YP += snelFilmpje.y;
            zichtbaar = true; 
           // println("beweeg");
          } 
          else 
          {
           // println("sta stil");//xA = displayWidth * random(0,1); 
            
            XP = random (100,1000); 
            YP = random (100,600);
            zichtbaar = false;
        }
      
        if (keyPressed == true)
        {
            if (key == 'z' || key == 'Z') 
            {
              Do ++; // Doit zorgt ervoor dat het aan of uit is en dat volgorde klopt.   
            
              if (Do == 1)
              {
                 aan_uitt = !aan_uitt;             
              }
            }
          } 
          else 
          {
              Do =0;
        } // end keyPressed.
        
        
        // Achtergrond beweegt rustig 
           if (key == 'z' || key == 'Z') // Make the background zichtbaar of niet. 
           {
                if (zichtbaar == true)
                 {
                      z = 1; 
                 } else {
                   z = 0; 
                 }
           }
           
           if (z == 1) // Deze funtie zorgt ervoor dat niet alle toetsen ballen aan en uit kunnen zetten. 
           {
              image(Pinquin,XP,YP,BP,HP);
           } 
      
  }
