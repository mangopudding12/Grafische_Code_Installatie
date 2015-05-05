
  // Liberia for video's. 
  import processing.video.*;
  
  // Declaring the movies. 
  Movie Cat1; 
  Movie Cat2; 
  Movie Kikker; 
  Movie Pinquin; 
  
  // Array schermen 
  scherm[] ss; 
  int HowMuch_Objects; 
  
  // Filmpje 
  float Cat1_x; 
  float Cat1_y; 
  float Cat1_b;
  float Cat1_h;

  void setup () 
  {
     // displayWidth= 1600 & displayHeight = 900
     size (displayWidth, displayHeight); 
     
     // Load the movies that stands in data folder. 
     Cat1 = new Movie(this, "Cat1.mov"); 
     Cat2 = new Movie(this, "Cat2.mov"); 
     Kikker = new Movie(this, "Kikker.mp4"); 
     Pinquin = new Movie(this, "Pinquin.mov"); 
     
     HowMuch_Objects = 3; 
     ss = new scherm [HowMuch_Objects]; 
     ss[0] =  new scherm (200,400,30,30); 
     ss[1] =  new scherm (1000,800,20,20); 
     ss[2] =  new scherm (800,600,40,30); 
     
     
     
     
     Cat1.play();
     Cat1.jump(1); // set filmpje cat1 op 1 seconden 
     Cat1.read();  // Zorg dat die het eerste frame afbeeld. 
     Cat1_x = 200;
     Cat1_y = 400; 
     Cat1_b = 31; 
     Cat1_h = 31; 
     
     
  }
  
  void draw ()
  {

      for (int p=0; p < HowMuch_Objects; p ++)
      {
         ss[p].display(10,40,50,100);
         ss[p].collision();  
         
         println(ss[p].TouchRect);
          // When the mouse touch a rect than ......... 
          if (ss[p].TouchRect == true)
          {
                if (p == 0)
                {
                    if (Cat1.available() && Cat1_b >= 200 && Cat1_h >= 200) 
                     {
                         Cat1.read();   
                     } else {
                         if (Cat1_b < 200 && Cat1_h < 200)
                         {
                             Cat1_b += 4; 
                             Cat1_h += 4;
                         }  
                     }
                } else { 
                  Cat1.jump(0); // reset als je een andere film hebt aangeraakt
                }
                  
          } 
          // Zorgt ervoor dat zodra je het filmpje hebt aangeraakt dat die 
          // dan al automatisch begint af te spelen hoe klein die ook is. 
          if (Cat1.available() && Cat1_b > 31 && Cat1_h > 31) 
          {
                         Cat1.read();         
          }
          
      } // end for loop
      
      image(Cat1,Cat1_x,Cat1_y,Cat1_b,Cat1_h);
      image(Cat2,0,0,200,200);
      image(Kikker,0,0,200,200);
      image(Pinquin,0,0,200,200);
      
      
 
      
  }
  
 
