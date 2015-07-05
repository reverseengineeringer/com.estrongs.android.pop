package de.innosystec.unrar.unpack.ppm;

import de.innosystec.unrar.b.b;

public class j
  extends d
{
  public j(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  public static void a(j paramj1, j paramj2)
  {
    byte[] arrayOfByte1 = c;
    byte[] arrayOfByte2 = c;
    int m = 0;
    int k = d;
    int j = d;
    while (m < 6)
    {
      int i = arrayOfByte1[k];
      arrayOfByte1[k] = arrayOfByte2[j];
      arrayOfByte2[j] = i;
      m += 1;
      k += 1;
      j += 1;
    }
  }
  
  public int a()
  {
    return c[d] & 0xFF;
  }
  
  public j a(byte[] paramArrayOfByte)
  {
    c = paramArrayOfByte;
    d = 0;
    return this;
  }
  
  public void a(int paramInt)
  {
    c[d] = ((byte)paramInt);
  }
  
  public void a(c paramc)
  {
    e(paramc.e());
  }
  
  public void a(j paramj)
  {
    System.arraycopy(c, d, c, d, 6);
  }
  
  public void a(k paramk)
  {
    a(paramk.a());
    b(paramk.b());
    e(paramk.c());
  }
  
  public int b()
  {
    return c[(d + 1)] & 0xFF;
  }
  
  public void b(int paramInt)
  {
    c[(d + 1)] = ((byte)paramInt);
  }
  
  public int c()
  {
    return b.c(c, d + 2);
  }
  
  public j d()
  {
    c(d - 6);
    return this;
  }
  
  public void d(int paramInt)
  {
    byte[] arrayOfByte = c;
    int i = d + 1;
    arrayOfByte[i] = ((byte)(arrayOfByte[i] + paramInt));
  }
  
  public void e(int paramInt)
  {
    b.c(c, d + 2, paramInt);
  }
  
  public j f()
  {
    c(d + 6);
    return this;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("State[");
    localStringBuilder.append("\n  pos=");
    localStringBuilder.append(d);
    localStringBuilder.append("\n  size=");
    localStringBuilder.append(6);
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
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */