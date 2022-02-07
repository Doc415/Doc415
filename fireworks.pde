ArrayList <Particles> fisek;
ArrayList <Patlama> patlama;
PVector gravity;


 void setup(){
  blendMode(ADD);
 fullScreen(P2D);
 colorMode(HSB);
 fisek= new ArrayList <Particles>();
 patlama= new ArrayList <Patlama>();
  
 gravity=new PVector(0,0.1);

background(0);
}


 void draw(){
 
  background(0);
 
  if (random(1)<0.05f){
    fisek.add(new Particles(new PVector(random(width),height)));
  }

  for (int i=fisek.size()-1;i>=0;i--){
    Particles temp=fisek.get(i);
    temp.applyforce(gravity);  
    temp.update();
    temp.show();
    if (temp.toppoint()){
      patlama.add(new Patlama(new PVector(temp.location.x,temp.location.y),temp.renk));
      fisek.remove(i);
       fill(temp.renk,255,255,1);
     for(int j=350;j>=1;j-=5){
      circle(temp.location.x,temp.location.y,j);
     }
    }
    
  }

 
for (int i=patlama.size()-1;i>=0;i--){
    Patlama temp=patlama.get(i);
    temp.update();
    println(temp.dots.size());
    if (temp.patlamaover()){
    
      patlama.remove(i);
        
    }
       
  }






}
  





  
