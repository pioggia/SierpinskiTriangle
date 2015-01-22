public void setup()
{
  size(100, 100);
  background(10, 10, 15);
  sierpinski(10, 90, 50);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len >= 20)
  {
    fill(10, 10, 15);
    triangle(x, y, x+len/2, y, x+len/2, y-len/2);
    sierpinski(x/2, y/2, len/2);
    sierpinski(x/4
  }
  else 
  {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
}

