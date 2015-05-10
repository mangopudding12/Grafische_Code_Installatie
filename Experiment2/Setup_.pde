void setup () 
  {
      // displayWidth= 1600 & displayHeight = 900
      size (displayWidth, displayHeight); 
      smooth(); 
      
       // background 
       HowMuch_Objects = 150; // Hoeveel cirkels 
       background = new achtergrond [HowMuch_Objects];
       
       for (int g = 0; g < HowMuch_Objects; g++)
       {
            background[g] = new achtergrond((displayWidth*0.5),(displayHeight*0.5),random(20,60),random(20,60),random(0,225),random(0,255), random(0,255),random(50,80));
       }  
       
       // Filmpjes 
       Pinquin = new Movie(this, "Juno1.mov");
       XP = 200; 
       YP = 200; 
       BP = 50; 
       HP = 50; 
            
       snelFilmpje = new PVector (0,0);
       
       // Muis 
       Cursor = new muis();  
       StartFilm = false; 
       
       // Zorg dat die wel zichtbaar is meteen als je hem aan doet. 
       Pinquin.play(); 
       Pinquin.read(); 
       Pinquin.stop(); 
       
 } // end setup 
  
