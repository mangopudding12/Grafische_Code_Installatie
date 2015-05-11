
  void MoveFilmpje2 ()
  {
    for (int h = 0; h < HoeVeel; h ++)
    {
        snelHeid[h].x = snelx_[h]; // Random snelheid die constant verandert voor object.    
        snelHeid[h].y = snely_[h]; 
        
        // Zorgen dat het soort knop funcitie krijgt. 
        // Een keer op de knop drukken ze bewegen. 
        // Tweede keer op de knop drukken ze stoppen met bewegen. 
        if (on_off == true)
        {
            XF[h] += snelHeid[h].x; 
            YF[h] += snelHeid[h].y;
            visible = true; 
           // println("beweeg");
          } 
          else 
          {
           // println("sta stil");//xA = displayWidth * random(0,1); 
            
            XF[h] = random (200,1400); 
            YF[h] = random (200,600);
            visible = false;
        }
      
        if (keyPressed == true)
        {
            if (key == 'z' || key == 'Z') 
            {
              Doo ++; // Doit zorgt ervoor dat het aan of uit is en dat volgorde klopt.   
            
              if (Doo == 1)
              {
                 on_off = !on_off;             
              }
            }
          } 
          else 
          {
              Doo =0;
        } // end keyPressed.
        
        
        // Achtergrond beweegt rustig 
           if (key == 'z' || key == 'Z') // Make the background zichtbaar of niet. 
           {
                if (visible == true)
                 {
                      zz = 1; 
                 } else {
                   zz = 0; 
                 }
           }
           
           if (zz == 1) // Deze funtie zorgt ervoor dat niet alle toetsen ballen aan en uit kunnen zetten. 
           {
              image(Film[h],XF[h],YF[h],BF[h],HF[h]);
           } 
           
           
           if (XF[h] < 0 || XF[h] > width - BF[h] || YF[h] < 0 || YF[h] > height - HF[h])
           {
              XF[h] = random (200,1400); 
              YF[h] = random (200,600);
           }
           
           
       
    } // end for loop 
      
  }
