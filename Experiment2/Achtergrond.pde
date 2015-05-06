class achtergrond 
{
    // Positie & grote 
    float xA; 
    float yA; 
    float bA; 
    float hA; 
    
    // Kleur & transparantheid
    float kleur1; 
    float kleur2;
    float kleur3; 
    float trans; 
    
    // snelheid & onverwachtsheid
    PVector snelheid;
    boolean aan_uit; 
    float Doit; 
    boolean zien; 
    int zzzien; 
  
    achtergrond (float xA_,float yA_,float bA_,float hA_,float kleur1_,float kleur2_,float kleur3_,float trans_)
    {
        // Locatie & grote 
        xA = xA_; 
        yA = yA_; 
        bA = bA_; 
        hA = hA_;
        
        // Kleuren / transparantheid 
        kleur1 = kleur1_; 
        kleur2 = kleur2_; 
        kleur3 = kleur3_; 
        trans  = trans_;
        zien = false; 
       
       
        // snelheid & onverwachtsheid
        snelheid = new PVector (0,0); 
    }
  
  
    void move(float snelheid_,float snelheid__) 
    {
        snelheid.x = snelheid_; // Random snelheid die constant verandert voor object.    
        snelheid.y = snelheid__; 
        
        // Zorgen dat het soort knop funcitie krijgt. 
        // Een keer op de knop drukken ze bewegen. 
        // Tweede keer op de knop drukken ze stoppen met bewegen. 
        if (aan_uit == true)
        {
            xA += snelheid.x; 
            yA += snelheid.y;
            zien = true; 
            println("beweeg");
          } 
          else 
          {
            println("sta stil");//xA = displayWidth * random(0,1); 
            
            xA = displayWidth * random(0,1); // Zet op een random plek. 
            yA = displayHeight * random(0,1);
            zien = false;
        }
      
        if (keyPressed == true)
        {
            if (key == 'z' || key == 'Z') 
            {
              Doit ++; // Doit zorgt ervoor dat het aan of uit is en dat volgorde klopt.   
            
              if (Doit == 1)
              {
                 aan_uit = !aan_uit;             
              }
            }
          } 
          else 
          {
              Doit =0;
        } // end keyPressed.
    } // end move void. 
  
    void zichtbaar() 
    {
        // Achtergrond beweegt rustig 
           if (key == 'z' || key == 'Z') // Make the background zichtbaar of niet. 
           {
                if (zien == true)
                 {
                      zzzien = 1; 
                 } else {
                   zzzien = 0; 
                 }
           } else if (key == 'q' || key == 'Q') // snelheid alleen als z uit staat. 
                 {
                     println("snelheid"); 
                     display();
                 } 
           
           if (zzzien == 1) // Deze funtie zorgt ervoor dat niet alle toetsen ballen aan en uit kunnen zetten. 
           {
              display();
           } 
    } 
  
    void display()
    {
       fill (kleur1,kleur2, kleur3,trans);
       noStroke(); 
       ellipse(xA,yA,bA,hA); 
    }  
    
} // end class 
