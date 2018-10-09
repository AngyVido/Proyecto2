class Ventanas 
{
  void inicio ()
  {
        
     PFont fuente;
     fuente = loadFont("SimplyRounded-50.vlw");
     textFont (fuente);
     
    background(#2271b3);
    textSize(50);
    fill(#00ffff);
    text("Cascada",190,100);
    
    textSize(50);
    fill(random(100,255));
    text("CELESTE", 190,200);    
    
    textSize(20);
    fill(255);
    text("Presiona ENTER",215,350);
    if(key == ENTER){
      pa = 1;
    }
  }
  
  void instrucciones ()
  {
    background(#2271b3);
    textSize(25);
    fill(#00ffff);
    text("Instrucciones:",220,50);
    textSize(20);
    fill(#00ffff);
    text("Presiona A para que cambie de color el agua\nPresiona TAB para continuar a la siguiente pantalla",15,200);
    if(key == TAB){
      pa = 2;
    }
  }
  
  void cascada ()
  {
    background(0);
    for (ROCA wall: rocas) 
    {
    wall.display();
    }
    
    for (AGUA b: agua) 
    {
    b.display();
    }
    
    if (random(5) > 0.2) 
    {
    AGUA p = new AGUA(random(100,300),10);
    agua.add(p);        
     }
     
     for (int i = agua.size()-1; i >= 0; i--) {
    AGUA b = agua.get(i);
    if (b.done()) {
      agua.remove(i);
    }
  }
  if (keyPressed){
  if(key == 'a' || key == 'A'){
    r = random(255);
    g = random(255);
    b = random(255);
    }
   }
   fill(0,100,0);
   noStroke();
   rect(514,260,178,475);
   
   fill(0,100,0);
   noStroke();
   rect(525,50,150,100);
  }
  
}
