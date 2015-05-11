



  void Afspelen2 () 
  {
    for (int h = 0; h < HoeVeel; h ++)
    {
    
         if (XF[h] < mouseX + Cursor.muisB &&
             XF[h] + BF[h] > mouseX &&
             YF[h] < mouseY + Cursor.muisH &&
             HF[h] + YF[h] > mouseY)
            {
              println("Start the film"); 
              StartF = true;
          
              if (BF[h] >= 300)
              {
                  Film[h].play(); 
                  Film[h].loop();
              }
    
            } else {
              StartF = false; 
              println("aaa");
          
              Film[h].pause(); 
            }
      
     
          if (StartF == true)
          {
               if (BF[h] < 300 && HF[h] < 300)
               {
                   BF[h] +=10;
                   HF[h] +=10; 
               } 
          } else {
        
            if (BF[h] >= 50)
               {
                   BF[h] --;
                   HF[h] --; 
               }   
          }  
    } // end for loop 
    
  } // end void afspelen2
