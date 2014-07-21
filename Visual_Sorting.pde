int i = 0, j = 0;
int tempcheesestick;
int sticks = 40;

int[] cheesesticks = new int [sticks];

void setup() {
  
  
  size(500,400);
  for(int fi = 0; fi < sticks; fi++){
    cheesesticks[fi] = round(random(500));
  }
}

void draw() {
  
  
  if(j>-1){
    
    
    if(i>-1){
      if(cheesesticks[i]>cheesesticks[i+1]){
        tempcheesestick = cheesesticks[i];  
        cheesesticks[i] = cheesesticks[i+1];
        cheesesticks[i+1] = tempcheesestick;
      }
      
      
      i++;
      if(i >= sticks-1){
         i = 0;
         j++;
      }
    }
    
    
    if(j >= sticks-1){
       j = -1; 
    }
    
  }
  
  
  rectMode(CENTER);
  background(255);
  fill(255,200,0);
 
  for(int fi = 0; fi < sticks; fi++){
    rect(cheesesticks[fi]/2-1,(400/sticks)*fi+(400/sticks)/2,cheesesticks[fi],400/sticks);
  }
  
  
  
  
}

