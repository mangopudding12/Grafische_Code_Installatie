


void Tekst () 
{
  
  // Hier zie je wat er gebeurt per zin. 
         if (Welkezin == 0)
         {
           textFont(f,100);
           fill (255);
           String words = "rethcaWmoorD ewuein mokleW";
           text (words,300,300);
          
           textFont(f,45);
           fill(255,255,150); 
           String word = ".niz edneglov ed roov sium ed po kilK";
           text (word,300,350); 
           
           // Geluid 
           een.play();
           
           
         } else if (Welkezin == 1) {
           
           textFont(f,80);
           fill (255);     // Of moet echt ook worden in spiegel beeld 
           String words = ".musrevinu lelarrap teh ni un tneb eJ";
           text (words,300,300);
           
           textFont(f,80);
           fill (255);    // IS dit goed ??
           String word = "nessuT ed ednevel, ednemoord snezew";
           text (word,300,400);
           
           // geluid 
           een.pause();
           twee.play(); 
                 
         } else if (Welkezin >= 2){ 
           
           
           textFont(f,80);
           fill (255);
           String words = ",rood thcarKmoorD ej reevitcA";
           text (words,300,300);
           
           
           textFont(f,80);
           fill (255);
           String word = "nenepo et ednemoord red troop ed";
           text (word,300,400);
           
           textFont(f,45);
           fill (255,255,150);
           String www = "nerevitca et nethcarkmoord ej mo q po kurD";
           text (www,300,500);
           
           twee.pause(); 
           derde.play(); 
           
           if (keyPressed == true)
           {
              if  (key == 'q')
              {
                  Dromenkracht = true; 
              }
           }
           
         } else {
         }
         
          
}
