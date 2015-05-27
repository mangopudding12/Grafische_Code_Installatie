// Liberia for video's. 
  import processing.video.*;
  import ddf.minim.*;
  Minim minim;
  AudioPlayer player;
  
  // Making the movie 
  Movie Pinquin; 
  float XP; 
  float YP;
  float BP;
  float HP; 
  PVector snelFilmpje; 
  boolean aan_uitt; 
  boolean zichtbaar;
  int Do; 
  int z; 
  boolean StartFilm; 
  
  // Movies Array 
  Movie [] Film; 
  int HoeVeel;
  float [] XF; 
  float [] YF;
  float [] BF;
  float [] HF; 
  PVector[] snelHeid; 
  boolean on_off; 
  boolean visible;
  int Doo; 
  int zz;  
  boolean StartF;  
  float [] snelx_; 
  float [] snely_;
  
        
  // Muis 
  muis Cursor; 
    
  // background 
  achtergrond[] background; 
  int HowMuch_Objects; 
  
  // Start dromen kracht 
  boolean Dromenkracht = false; 
  int Welkezin = 0; 
  int WelkezinTrue = 0; 
  
  // Tekst 
  PFont f; 
  PFont createdFont; 

  
