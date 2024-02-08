int a = 0;
int b = 0;
int c = 0;
public void setup(){
  size(800,800);
}
public void draw(){
  fill((int)(Math.random()*100+100),(int)(Math.random()*100+100),(int)(Math.random()*100+100));
  sierpinksi(a,b,c);
  a = a + 5;
  b = b + 5;
  c = c + 4;
  if(a > 800){
    a = 0;
    b = 0;
    c = 0;
  }
  fill(0,0,0,10);
  rect(0,0,800,800);
}
public void sierpinksi(int x, int y, int len){
  if(len <= 30)
    triangle(x,y,x+len/2,y-len,x+len,y);
  else{
    triangle(x,y,x+len/4,y-len/2,x+len/2,y);
    triangle(x+len/2,y,x+3*len/4,y-len/2,x+len,y);
    triangle(x+len/4,y-len/2,x+len/2,y-len,x+3*len/4,y-len/2);
    ellipse(x+len/2,y-len/3,len/4,len/4);
    sierpinksi(x,y,len/2);
    sierpinksi(x+len/2,y,len/2);
    sierpinksi(x+len/4,y-len/2,len/2);
  }
}
