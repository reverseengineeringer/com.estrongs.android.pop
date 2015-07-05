package de.innosystec.unrar.unpack.ppm;

import de.innosystec.unrar.unpack.b;

public class e
{
  private long a;
  private long b;
  private long c;
  private final f d = new f();
  private b e;
  
  private int e()
  {
    return e.a();
  }
  
  public long a(int paramInt)
  {
    c >>>= paramInt;
    return (b - a) / c & 0xFFFFFFFF;
  }
  
  public f a()
  {
    return d;
  }
  
  public void a(b paramb)
  {
    e = paramb;
    b = 0L;
    a = 0L;
    c = 4294967295L;
    int i = 0;
    while (i < 4)
    {
      b = ((b << 8 | e()) & 0xFFFFFFFF);
      i += 1;
    }
  }
  
  public int b()
  {
    c = (c / d.c() & 0xFFFFFFFF);
    return (int)((b - a) / c);
  }
  
  public void c()
  {
    a = (a + c * d.b() & 0xFFFFFFFF);
    c = (c * (d.a() - d.b()) & 0xFFFFFFFF);
  }
  
  public void d()
  {
    int i = 0;
    if ((a ^ a + c) >= 16777216L) {
      if (c >= 32768L) {
        break label121;
      }
    }
    label121:
    for (i = 1;; i = 0)
    {
      if (i == 0) {
        return;
      }
      int j = i;
      if (i != 0)
      {
        c = (-a & 0x7FFF & 0xFFFFFFFF);
        j = 0;
      }
      b = ((b << 8 | e()) & 0xFFFFFFFF);
      c = (c << 8 & 0xFFFFFFFF);
      a = (a << 8 & 0xFFFFFFFF);
      i = j;
      break;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("RangeCoder[");
    localStringBuilder.append("\n  low=");
    localStringBuilder.append(a);
    localStringBuilder.append("\n  code=");
    localStringBuilder.append(b);
    localStringBuilder.append("\n  range=");
    localStringBuilder.append(c);
    localStringBuilder.append("\n  subrange=");
    localStringBuilder.append(d);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */