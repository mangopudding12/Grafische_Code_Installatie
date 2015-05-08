void setup () 
  {
      // displayWidth= 1600 & displayHeight = 900
      size (displayWidth, displayHeight); 
      
       // background 
       HowMuch_Objects = 150; // Hoeveel cirkels 
       background = new achtergrond [HowMuch_Objects];
       
       for (int g = 0; g < HowMuch_Objects; g++)
       {
            background[g] = new achtergrond((displayWidth*0.5),(displayHeight*0.5),random(20,60),random(20,60),random(0,225),random(0,255), random(0,255),random(50,80));
       }  
       
       // Filmpjes 
       Pinquin = new Movie(this, "Pinquin.mov");
       XP = 200; 
       YP = 200; 
       BP = 200; 
       HP = 200; 
       
//       Pinquin.play(); 
//       Pinquin.read(); // Lees 1 frame
//       Pinquin.stop(); // zet film op pause 
//       
       snelFilmpje = new PVector (0,0);
       
       // Muis 
       MuisB = 40; 
       MuisH = 40; 
       StartFilm = false; 
       
 } // end setup 
  
