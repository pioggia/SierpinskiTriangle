int h = (int)Math.random()*255+100;
int s = (int)Math.random()*255+100;
int b = 230;
int length = 300;
int width = 300;
public void setup()
{
  colorMode(HSB);
  size(length, width);
  background(10, 10, 15);
}
public void draw()
{
  background(10, 10, 15);
  sierpinski(length/10, width-width/10, width/10*8);
  s=s+(int)Math.random()*1;
  h=h-(int)Math.random()*10;
}
public void mouseDragged()//optional
{
  
}
public void sierpinski(int x, int y, int len) 
{
  if(len >= 20)
  {
    noFill();
    stroke(h, s, b);
    strokeWeight(1);
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
  else 
  {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
}
