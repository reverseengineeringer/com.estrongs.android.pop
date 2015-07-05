package de.innosystec.unrar.unpack.ppm;

import de.innosystec.unrar.b.b;

public class h
  extends d
{
  private int a;
  
  public h(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  public int a()
  {
    if (c != null) {
      a = b.c(c, d);
    }
    return a;
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
    if (c != null) {
      b.c(c, d, paramInt);
    }
  }
  
  public void a(h paramh)
  {
    a(paramh.e());
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("State[");
    localStringBuilder.append("\n  pos=");
    localStringBuilder.append(d);
    localStringBuilder.append("\n  size=");
    localStringBuilder.append(4);
    localStringBuilder.append("\n  next=");
    localStringBuilder.append(a());
    localStringBuilder.append("\n]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */