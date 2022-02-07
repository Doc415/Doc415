class Particles{
  
  PVector location,acc,vel,force;
  int renk;
  
  Particles(PVector _startloc){
    location=_startloc.get();
    vel=new PVector(0,random(-13,-6));
    acc=new PVector(0,0);
    force=new PVector(0,0);
    renk=floor(random(255));
  }
  
  
   void update(){
   acc.add(force);
   vel.add(acc);
   location.add(vel);
   acc.mult(0);
   force.mult(0);
 }
 
   void show(){
   fill(renk,255,255);
   noStroke();
   circle(location.x,location.y,5);
   
 }
  
   void applyforce(PVector _force){
    force=_force.get();
  }
  
   boolean toppoint(){
    if (vel.y>=0) {return true;}
     else {return false;}
  }   
      
    
}
