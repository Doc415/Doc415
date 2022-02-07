class Dots{
  
  PVector location,acc,vel,force;
  int renkler;
  float decay,lightdecay;
  
  Dots(PVector _startloc,int _renk){
    location=_startloc.get();
    vel= PVector.random2D();
    vel.mult(random(1,4));
    acc=new PVector(0,0);
    force=new PVector(0,0);
    renkler=_renk;
    decay=255;
    lightdecay=10;
  }
  
  
  void update(){
   acc.add(force);
   vel.add(acc);
   vel.mult(0.97);
   location.add(vel);
   acc.mult(0);
   decay-=4;
   lightdecay-=0.2;
 }
 
   void show(){
   fill(renkler,255,255,lightdecay);
   circle(location.x,location.y,40);
     fill(renkler,255,255,decay);
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
