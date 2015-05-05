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
        trans = trans_;
       
       
        // snelheid & onverwachtsheid
        snelheid = new PVector (0,0); 
    }
  
    void move(float snelheid_) 
    {
        snelheid.x = snelheid_; // Random snelheid die constant verandert voor object.    
        
        // Zorgen dat het soort knop funcitie krijgt. 
        // Een keer op de knop drukken ze bewegen. 
        // Tweede keer op de knop drukken ze stoppen met bewegen. 
        if (aan_uit == true)
        {
            xA += snelheid.x; 
          } 
          else 
          {
            //xA = displayWidth * random(0,1); 
        }
      
        if (keyPressed == true)
        {
              Doit ++; // Doit zorgt ervoor dat het aan of uit is en dat volgorde klopt.   
            
              if (Doit == 1)
              {
                 aan_uit = !aan_uit; 
                 xA = displayWidth * random(0,1); // Zet op een random plek. 
                 yA = displayHeight * random(0,1);
              }
          } 
          else 
          {
              Doit =0;
        } // end keyPressed.
    } // end move void. 
  
    void display()
    {
      
       fill (kleur1,kleur2, kleur3,trans);
       noStroke(); 
       rect(xA,yA,bA,hA); 
    }  
    
}
