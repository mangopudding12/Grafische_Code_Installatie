void setup () 
  {
      // displayWidth= 1600 & displayHeight = 900
      size (displayWidth, displayHeight); 
      smooth(); 
      
      // Geluid 
      minim = new Minim(this);
      een = minim.loadFile("Tekst1.wav");
      twee = minim.loadFile("Tekst2.wav");
      derde = minim.loadFile("Tekst3.wav");
      vier = minim.loadFile("Tekst4.wav");
      vijf = minim.loadFile("Tekst5.wav");
      zes = minim.loadFile("Tekst6.wav");
  
      
       // background 
       HowMuch_Objects = 150; // Hoeveel cirkels 
       background = new achtergrond [HowMuch_Objects];
       
       for (int g = 0; g < HowMuch_Objects; g++)
       {
            background[g] = new achtergrond((displayWidth*0.5),(displayHeight*0.5),random(20,60),random(20,60),random(0,225),random(0,255), random(0,255),random(50,80));
       }  
       
       //----------------------------------------------------------------------
       // Filmpjes 
//       Pinquin = new Movie(this, "Pinquin.mov");
//       XP = 200; 
//       YP = 200; 
//       BP = 50; 
//       HP = 50;     
//       snelFilmpje = new PVector (0,0);
//       
//       StartFilm = false; 
//       
//       // Zorg dat die wel zichtbaar is meteen als je hem aan doet. 
//       Pinquin.play(); 
//       Pinquin.read(); 
//       Pinquin.stop(); 
       
       //--------------------------------------------------------------------------
       // Array Filmpjes 
       HoeVeel = 7; 
       
       Film = new Movie[HoeVeel];
       XF = new float[HoeVeel];
       YF = new float[HoeVeel];
       BF = new float[HoeVeel];
       HF = new float[HoeVeel];
       snelHeid = new PVector[HoeVeel]; 
       snelx_ = new float[HoeVeel]; 
       snely_ = new float[HoeVeel]; 
       
       // Movies inladen. 
       for (int h = 0; h < HoeVeel; h++)
       {
           Film[h] = new Movie(this, "Juno"+ (h+1) +".mov");
           
           XF[h] = (random(h*100))+ random(-250,250); 
           YF[h] = (random(h*100))+ random(-250,250); 
           BF[h] = 50; 
           HF[h] = 50; 
           snelHeid[h] = new PVector (0,0);
           
           Film[h].play(); 
           Film[h].read(); 
           Film[h].stop();
       }
       
           StartF = false; 
           on_off = false; 
           visible = false; 
           
       //--------------------------------------------------------------------------
       
       // Muis 
       Cursor = new muis();  
  
       // ----------------------------------------------------------------------------
       // DroomKracht 
       f = loadFont ("BroadwayCopyistTextExt-48.vlw"); 
       textFont(f,52);
    
 } // end setup 
  
