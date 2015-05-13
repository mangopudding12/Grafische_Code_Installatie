


void TekstTrue () 
{
  
    if (WelkezinTrue == 0)
    {
           textFont(f,80);
           fill (255);
           String word = "Je hebt je krachten niet onder controlle !!";
           text (word,300,100);
           
           textFont(f,45);
           fill (255,255,150);
           String www = "Druk op A om terug te keren naar parralel universum";
           text (www,400,850);
           
           if (keyPressed == true)
           {
              if  (key == 'A' || key == 'a')
              {
                  WelkezinTrue = 1; 
              }
           }
           
    } else if (WelkezinTrue == 1){
      
           textFont(f,80);
           fill (255);
           String word = "Focus je krachten en beweeg de muis";
           text (word,300,100);
           
           textFont(f,45);
           fill (255,255,150);
           String ww = "Druk op Z om je droomkrachten opnieuw uit te oefenen";
           text (ww,600,850);
           
           if (keyPressed == true)
           {
              if  (key == 'Z' || key == 'z')
              {
                  WelkezinTrue = 2; 
              }
           }
           
    } else if (WelkezinTrue == 2){
      
      
           textFont(f,52);
           fill (255,255,150);
           String ww = "Vang de dromen";
           text (ww,1000,850);
           
           if (keyPressed == true)
           {
              if  (key == 'B' || key == 'b')
              {
                  WelkezinTrue = 3; 
              }
           }
      
    }else if (WelkezinTrue == 3){
      
    } else {
      
    } 
}

