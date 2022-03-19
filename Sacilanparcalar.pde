class Dots{
  
  PVector location,acc,vel,force;
  float renkler,dalgalananrenk;
  float decay,lightdecay;
  float angle;
  
  Dots(PVector _startloc,int _renk){
    location=_startloc.get();
    vel= PVector.random2D();
    vel.mult(random(1,6));
    acc=new PVector(0,0);
    force=new PVector(0,0);
    renkler=_renk;
    decay=255;
    lightdecay=8;
    angle=random(0,TWO_PI);
  }
  
  
  void update(){
   acc.add(force);
   vel.add(acc);
   vel.mult(0.97);
   location.add(vel);
   acc.mult(0);
   decay-=4;
   lightdecay-=0.2;
   angle=angle+PI/15;
 }
 
   void show(){
  
   fill(renkler,255,255,lightdecay);
   circle(location.x,location.y,40);
   
   dalgalananrenk=decay*(sin(angle)*0.5+0.5); 
   fill(renkler,255,255,dalgalananrenk);
   noStroke();
   circle(location.x,location.y,4);
  
 }
  
  void applyforce(PVector _force){
    force=_force.get();
  }
  
   boolean decayed(){
    if (decay<=0){return true;}
      else {return false;}
  }    
    
}
