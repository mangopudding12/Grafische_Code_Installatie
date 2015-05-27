


void TekstTrue () 
{
  
    if (WelkezinTrue == 0)
    {
           textFont(f,80);
           fill (255);  // is dit nou goed anders moet ik dit ook nog veranderen. 
           String word = "ej tbeh ej nethcark tein redno ellortnoc !!";
           text (word,300,100);
           
           textFont(f,45);
           fill (255,255,150);
           String www = "musrevinu lelarrap raan nerek et guret mo A po kurD";
           text (www,400,750);
           
          derde.pause();
          vier.play(); 
           
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
           String word = "sium ed geeweb ne nethcark ej sucoF";
           text (word,300,100);
           
           textFont(f,45);
           fill (255,255,150);
           String ww = "nenefeo et tiu wueinpo nethcarkmoord ej mo Z po kruD";
           text (ww,600,750);
           
           vier.pause(); 
           vijf.play(); 
           
           
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
           String ww = "nemord ed gnaV";
           text (ww,1000,750);
           
           zes.play(); 
           
           if (keyPressed == true)
           {
              if  (key == 'B' || key == 'b')
              {
                  WelkezinTrue = 3; 
                  zes.pause();
              }
           }
      
    }else if (WelkezinTrue == 3){
      
    } else {
      
    } 
}

