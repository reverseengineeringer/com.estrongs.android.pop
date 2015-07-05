package de.a.a.a.a;

import java.util.zip.ZipException;

public class c
  extends a
  implements b
{
  protected org.bouncycastle.crypto.b g;
  protected org.bouncycastle.crypto.e.a h;
  protected org.bouncycastle.crypto.d.a i;
  
  public c(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    a = paramArrayOfByte2;
    org.bouncycastle.crypto.c.a locala = new org.bouncycastle.crypto.c.a();
    locala.a(paramArrayOfByte1, paramArrayOfByte2, 1000);
    g = locala.a(528);
    byte[] arrayOfByte = ((org.bouncycastle.crypto.f.a)g).a();
    b = new byte[32];
    System.arraycopy(arrayOfByte, 0, b, 0, 32);
    c = new byte[32];
    System.arraycopy(arrayOfByte, 32, c, 0, 32);
    d = new byte[2];
    System.arraycopy(arrayOfByte, 64, d, 0, 2);
    if (!f.a(d, paramArrayOfByte3)) {
      throw new ZipException("WRONG PASSWORD - " + f.c(d) + "/ " + f.c(paramArrayOfByte3));
    }
    locala.a(paramArrayOfByte1, paramArrayOfByte2, 1000);
    g = locala.a(256);
    i = new org.bouncycastle.crypto.d.a(new org.bouncycastle.crypto.a.b());
    i.a(new org.bouncycastle.crypto.f.a(c));
    h = new org.bouncycastle.crypto.e.a(new org.bouncycastle.crypto.b.a());
    e = h.a();
    f = 1;
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt)
  {
    int j = 0;
    for (;;)
    {
      if ((j >= paramArrayOfByte.length) || (j >= paramInt)) {
        return;
      }
      a(paramArrayOfByte, j, paramInt);
      j += e;
    }
  }
  
  protected void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[e];
    int j = f;
    f = (j + 1);
    Object localObject = f.a(j, 16);
    localObject = new org.bouncycastle.crypto.f.b(g, (byte[])localObject);
    h.a(false, (org.bouncycastle.crypto.b)localObject);
    paramInt2 -= paramInt1;
    if (paramInt2 >= e)
    {
      i.a(paramArrayOfByte, paramInt1, e);
      h.a(paramArrayOfByte, paramInt1, arrayOfByte, 0);
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt1, e);
      return;
    }
    i.a(paramArrayOfByte, paramInt1, paramInt2);
    localObject = new byte[e];
    System.arraycopy(paramArrayOfByte, paramInt1, localObject, 0, paramInt2);
    h.a((byte[])localObject, 0, arrayOfByte, 0);
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public byte[] a()
  {
    byte[] arrayOfByte1 = new byte[i.a()];
    i.a(arrayOfByte1, 0);
    byte[] arrayOfByte2 = new byte[10];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, 10);
    return arrayOfByte2;
  }
}

/* Location:
 * Qualified Name:     de.a.a.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */