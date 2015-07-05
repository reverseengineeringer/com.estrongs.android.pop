package de.innosystec.unrar.unpack.ppm;

public class k
{
  private int a;
  private int b;
  private int c;
  
  public int a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    a = (paramInt & 0xFF);
  }
  
  public void a(c paramc)
  {
    d(paramc.e());
  }
  
  public void a(j paramj)
  {
    b(paramj.b());
    d(paramj.c());
    a(paramj.a());
  }
  
  public int b()
  {
    return b;
  }
  
  public void b(int paramInt)
  {
    b = (paramInt & 0xFF);
  }
  
  public int c()
  {
    return c;
  }
  
  public void c(int paramInt)
  {
    b = (b - paramInt & 0xFF);
  }
  
  public void d(int paramInt)
  {
    c = paramInt;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("State[");
    localStringBuilder.append("\n  symbol=");
    localStringBuilder.append(a());
    localStringBuilder.append("\n  freq=");
    localStringBuilder.append(b());
    localStringBuilder.append("\n  successor=");
    localStringBuilder.append(c());
    localStringBuilder.append("\n]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */