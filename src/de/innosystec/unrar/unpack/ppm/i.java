package de.innosystec.unrar.unpack.ppm;

public class i
{
  private int a;
  private int b;
  private int c;
  
  public int a()
  {
    int j = a >>> b;
    a -= j;
    if (j == 0) {}
    for (int i = 1;; i = 0) {
      return i + j;
    }
  }
  
  public void a(int paramInt)
  {
    b = 3;
    a = (paramInt << b & 0xFFFF);
    c = 4;
  }
  
  public void b()
  {
    if (b < 7)
    {
      int i = c - 1;
      c = i;
      if (i == 0)
      {
        a += a;
        i = b;
        b = (i + 1);
        c = (3 << i);
      }
    }
    a &= 0xFFFF;
    c &= 0xFF;
    b &= 0xFF;
  }
  
  public void b(int paramInt)
  {
    b = (paramInt & 0xFF);
  }
  
  public int c()
  {
    return a;
  }
  
  public void c(int paramInt)
  {
    a = (0xFFFF & paramInt);
  }
  
  public void d(int paramInt)
  {
    c(c() + paramInt);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SEE2Context[");
    localStringBuilder.append("\n  size=");
    localStringBuilder.append(4);
    localStringBuilder.append("\n  summ=");
    localStringBuilder.append(a);
    localStringBuilder.append("\n  shift=");
    localStringBuilder.append(b);
    localStringBuilder.append("\n  count=");
    localStringBuilder.append(c);
    localStringBuilder.append("\n]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */