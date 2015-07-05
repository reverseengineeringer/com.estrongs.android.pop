package de.innosystec.unrar.unpack.ppm;

public class f
{
  private long a;
  private long b;
  private long c;
  
  public long a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    c(c() + paramInt);
  }
  
  public void a(long paramLong)
  {
    b = (0xFFFFFFFF & paramLong);
  }
  
  public long b()
  {
    return a & 0xFFFFFFFF;
  }
  
  public void b(long paramLong)
  {
    a = (0xFFFFFFFF & paramLong);
  }
  
  public long c()
  {
    return c;
  }
  
  public void c(long paramLong)
  {
    c = (0xFFFFFFFF & paramLong);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SubRange[");
    localStringBuilder.append("\n  lowCount=");
    localStringBuilder.append(a);
    localStringBuilder.append("\n  highCount=");
    localStringBuilder.append(b);
    localStringBuilder.append("\n  scale=");
    localStringBuilder.append(c);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */