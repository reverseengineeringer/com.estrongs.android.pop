package com.gmail.yuyang226.flickr.a;

public class b
{
  public int a;
  public int b;
  public int c;
  public int d;
  
  public b() {}
  
  public b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramInt4;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof b)) {
        return false;
      }
      paramObject = (b)paramObject;
      if (d != d) {
        return false;
      }
      if (c != c) {
        return false;
      }
      if (a != a) {
        return false;
      }
    } while (b == b);
    return false;
  }
  
  public int hashCode()
  {
    return (((d + 31) * 31 + c) * 31 + a) * 31 + b;
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */