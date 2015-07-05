package de.innosystec.unrar.unpack.ppm;

import de.innosystec.unrar.b.b;

public class a
  extends d
{
  public a(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  public int a()
  {
    return b.b(c, d) & 0xFFFF;
  }
  
  public a a(byte[] paramArrayOfByte)
  {
    c = paramArrayOfByte;
    d = 0;
    return this;
  }
  
  public void a(int paramInt)
  {
    b.a(c, d, (short)paramInt);
  }
  
  public void a(j paramj)
  {
    a_(paramj.e());
  }
  
  public void a_(int paramInt)
  {
    b.c(c, d + 2, paramInt);
  }
  
  public int b()
  {
    return b.c(c, d + 2);
  }
  
  public void b(int paramInt)
  {
    b.b(c, d, paramInt);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("FreqData[");
    localStringBuilder.append("\n  pos=");
    localStringBuilder.append(d);
    localStringBuilder.append("\n  size=");
    localStringBuilder.append(6);
    localStringBuilder.append("\n  summFreq=");
    localStringBuilder.append(a());
    localStringBuilder.append("\n  stats=");
    localStringBuilder.append(b());
    localStringBuilder.append("\n]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */