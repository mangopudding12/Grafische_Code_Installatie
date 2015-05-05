
class scherm 
{
    float xVierkant; 
    float yVierkant; 
    float bVierkant; 
    float hVierkant; 
    
    float kleur1; 
    float kleur2;
    float kleur3; 
    float trans; 
    boolean TouchRect; 
    
  
    scherm (float xVierkant_,float yVierkant_,float bVierkant_,float hVierkant_)
    {
        xVierkant = xVierkant_; 
        yVierkant = yVierkant_; 
        bVierkant = bVierkant_; 
        hVierkant = hVierkant_;
       
        TouchRect = false; 
    }
  
  
  
    void display(float kleur1_,float kleur2_, float kleur3_, float trans_)
    {
       kleur1 = kleur1_; 
       kleur2 = kleur2_; 
       kleur3 = kleur3_; 
       trans = trans_; 
      
      
       fill (kleur1,kleur2, kleur3,trans);
       rect(xVierkant,yVierkant,bVierkant,hVierkant); 
    }  
    
    void collision () 
    {
        if (xVierkant < mouseX && xVierkant + bVierkant> mouseX && yVierkant < mouseY && hVierkant + yVierkant > mouseY) 
        {
            TouchRect = true; 
        } else { 
            TouchRect = false; 
        }
 
  
}
}

