

  class muis 
  {
      int[] xpos = new int [50];
      int[] ypos = new int [50];
      float muisB;
      float muisH; 
    
      muis() 
      {
         for (int i = 0; i < xpos.length; i++)
         {
             xpos[i] = 0; 
             ypos[i] = 0;  
         }
      }
    
    
      void display()
      {  
         for (int i = 0; i < xpos.length-1; i++)
         { 
             xpos[i] = xpos[i+1]; 
             ypos[i] = ypos[i+1];
         }
         
         xpos[xpos.length-1] = mouseX; 
         ypos[ypos.length-1] = mouseY; 
        
         for (int i = 0; i < xpos.length; i++)
         { 
             fill(255 - i*5);
             noStroke(); 
             rect (xpos[i],ypos[i],i+muisB,i+muisH);
         }
      } 
  }
