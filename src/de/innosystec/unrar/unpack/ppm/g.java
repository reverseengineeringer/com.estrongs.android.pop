package de.innosystec.unrar.unpack.ppm;

import de.innosystec.unrar.b.b;

public class g
  extends d
{
  private int a;
  private int b;
  private int f;
  private int g;
  
  public g(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  public void a()
  {
    g localg = new g(c);
    localg.c(d());
    localg.a(b());
    localg.c(b());
    localg.d(d());
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
    if (c != null) {
      b.c(c, d + 4, paramInt);
    }
  }
  
  public void a(g paramg)
  {
    g localg = new g(c);
    d(paramg.e());
    localg.c(d());
    a(localg.b());
    localg.b(this);
    localg.c(b());
    localg.c(this);
  }
  
  public int b()
  {
    if (c != null) {
      f = b.c(c, d + 4);
    }
    return f;
  }
  
  public void b(int paramInt)
  {
    b = (0xFFFF & paramInt);
    if (c != null) {
      b.a(c, d + 2, (short)paramInt);
    }
  }
  
  public void b(g paramg)
  {
    a(paramg.e());
  }
  
  public int c()
  {
    if (c != null) {
      b = (b.b(c, d + 2) & 0xFFFF);
    }
    return b;
  }
  
  public void c(g paramg)
  {
    d(paramg.e());
  }
  
  public int d()
  {
    if (c != null) {
      g = b.c(c, d + 8);
    }
    return g;
  }
  
  public void d(int paramInt)
  {
    g = paramInt;
    if (c != null) {
      b.c(c, d + 8, paramInt);
    }
  }
  
  public void e(int paramInt)
  {
    a = paramInt;
    if (c != null) {
      b.a(c, d, (short)paramInt);
    }
  }
  
  public int f()
  {
    if (c != null) {
      a = (b.b(c, d) & 0xFFFF);
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */