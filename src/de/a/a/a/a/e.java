package de.a.a.a.a;

import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

public class e
  extends a
  implements d
{
  private static final Logger j = Logger.getLogger(e.class.getName());
  protected org.bouncycastle.crypto.b g;
  protected org.bouncycastle.crypto.e.a h;
  protected org.bouncycastle.crypto.d.a i;
  
  public e(byte[] paramArrayOfByte)
  {
    org.bouncycastle.crypto.c.a locala = new org.bouncycastle.crypto.c.a();
    a = d();
    locala.a(paramArrayOfByte, a, 1000);
    g = locala.a(528);
    byte[] arrayOfByte = ((org.bouncycastle.crypto.f.a)g).a();
    b = new byte[32];
    System.arraycopy(arrayOfByte, 0, b, 0, 32);
    c = new byte[32];
    System.arraycopy(arrayOfByte, 32, c, 0, 32);
    d = new byte[2];
    System.arraycopy(arrayOfByte, 64, d, 0, 2);
    locala.a(paramArrayOfByte, a, 1000);
    g = locala.a(256);
    i = new org.bouncycastle.crypto.d.a(new org.bouncycastle.crypto.a.b());
    i.a(new org.bouncycastle.crypto.f.a(c));
    h = new org.bouncycastle.crypto.e.a(new org.bouncycastle.crypto.b.a());
    e = h.a();
    f = 1;
    if (j.isLoggable(Level.FINEST))
    {
      j.finest("pwBytes   = " + f.c(paramArrayOfByte) + " - " + paramArrayOfByte.length);
      j.finest("salt      = " + f.c(a) + " - " + a.length);
      j.finest("pwVerif   = " + f.c(d) + " - " + d.length);
    }
  }
  
  protected static byte[] d()
  {
    byte[] arrayOfByte = new byte[16];
    int k = 0;
    for (;;)
    {
      if (k >= 2) {
        return arrayOfByte;
      }
      int m = new Random().nextInt();
      arrayOfByte[(k * 4 + 0)] = ((byte)(m >> 24));
      arrayOfByte[(k * 4 + 1)] = ((byte)(m >> 16));
      arrayOfByte[(k * 4 + 2)] = ((byte)(m >> 8));
      arrayOfByte[(k * 4 + 3)] = ((byte)m);
      k += 1;
    }
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt)
  {
    int k = 0;
    for (;;)
    {
      if ((k >= paramArrayOfByte.length) || (k >= paramInt)) {
        return;
      }
      a(paramArrayOfByte, k, paramInt);
      k += e;
    }
  }
  
  protected void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[e];
    int k = f;
    f = (k + 1);
    Object localObject = f.a(k, 16);
    localObject = new org.bouncycastle.crypto.f.b(g, (byte[])localObject);
    h.a(true, (org.bouncycastle.crypto.b)localObject);
    paramInt2 -= paramInt1;
    if (paramInt2 >= e)
    {
      h.a(paramArrayOfByte, paramInt1, arrayOfByte, 0);
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt1, e);
      i.a(arrayOfByte, 0, e);
      return;
    }
    localObject = new byte[e];
    System.arraycopy(paramArrayOfByte, paramInt1, localObject, 0, paramInt2);
    h.a((byte[])localObject, 0, arrayOfByte, 0);
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt1, paramInt2);
    i.a(arrayOfByte, 0, paramInt2);
  }
  
  public byte[] a()
  {
    return a;
  }
  
  public byte[] b()
  {
    return d;
  }
  
  public byte[] c()
  {
    byte[] arrayOfByte1 = new byte[i.a()];
    i.a(arrayOfByte1, 0);
    byte[] arrayOfByte2 = new byte[10];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, 10);
    return arrayOfByte2;
  }
}

/* Location:
 * Qualified Name:     de.a.a.a.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */