  class Patlama{
    PVector loc;
    int isik;
    int dotscount=100;
    ArrayList <Dots> dots=new ArrayList <Dots>();
    boolean patladi;
    
    Patlama(PVector _temp, int _renk){
    
      loc=_temp.get();
    isik=_renk;
      
      for (int i=0;i<dotscount;i++){
        dots.add(new Dots(loc,_renk));
      }  
  
  
  }
    
    void update(){
      
      for (int i=dots.size()-1;i>=0;i--){
        Dots temp=dots.get(i);
        temp.applyforce(gravity);  
        temp.update();
        temp.show();
        if (temp.decayed()){
          dots.remove(i);
          patladi=true;
        
        }
    
     }
   }
    
    boolean patlamaover(){
      if (patladi) {return true;} else {return false;}
    }
  }
