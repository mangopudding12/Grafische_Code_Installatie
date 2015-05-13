


void Tekst () 
{
  
  // Hier zie je wat er gebeurt per zin. 
         if (Welkezin == 0)
         {
           textFont(f,100);
           fill (255);
           String words = "Welkom nieuwe DroomWachter";
           text (words,300,300);
          
           textFont(f,45);
           fill(255,255,150); 
           String word = "Klik op de muis voor de volgende zin";
           text (word,300,350); 
           
         } else if (Welkezin == 1) {
           
           textFont(f,80);
           fill (255);
           String words = "Je bent nu in het parralel universum.";
           text (words,300,300);
           
           textFont(f,80);
           fill (255);
           String word = "Tussen de levende en de droomende wezens";
           text (word,300,400);
           
         } else if (Welkezin >= 2){ 
           
           
           textFont(f,80);
           fill (255);
           String words = "Activeer je DroomKracht door,";
           text (words,300,300);
           
           
           textFont(f,80);
           fill (255);
           String word = "de poort der droomende te openen";
           text (word,300,400);
           
           textFont(f,45);
           fill (255,255,150);
           String www = "Druk op q om je droomkrachten te activeren";
           text (www,300,500);
           
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
