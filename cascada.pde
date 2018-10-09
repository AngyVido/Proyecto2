import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;
float r,g,b;
Ventanas ve;
int pa=0;
ArrayList<AGUA> agua;
ArrayList<ROCA> rocas;


void setup (){
  size (600,500);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -25);
  ve = new Ventanas();
  agua = new ArrayList<AGUA>();
  rocas = new ArrayList<ROCA>();
  
  smooth();
  rocas.add(new ROCA(25,260,50,475));
  rocas.add(new ROCA(400,260,50,475));
  rocas.add(new ROCA(210,487,335,20));
  
  rocas.add(new ROCA(360,420,40,60));
  rocas.add(new ROCA(350,460,50,70));
  rocas.add(new ROCA(325,465,40,30));
  rocas.add(new ROCA(370,375,25,30));
  
  rocas.add(new ROCA(70,435,40,90));
  rocas.add(new ROCA(85,460,50,70));
  rocas.add(new ROCA(100,465,60,30));
  rocas.add(new ROCA(60,375,25,30));
  
    
  for(int i=0; i<50; i++){
  rocas.add(new ROCA(random(50,350),random(50,250),20,10));  
  }
  
}
void draw (){
 box2d.step();
 switch (pa)
  {
    case 0:
    ve.inicio();
    break;
    case 1:
    ve.instrucciones();
    break;
    case 2:
    ve.cascada();
    break;
  }
  
}
