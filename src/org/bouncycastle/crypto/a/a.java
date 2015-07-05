package org.bouncycastle.crypto.a;

import org.bouncycastle.crypto.d;

public abstract class a
  implements d
{
  private byte[] a = new byte[4];
  private int b = 0;
  private long c;
  
  public void a(byte paramByte)
  {
    byte[] arrayOfByte = a;
    int i = b;
    b = (i + 1);
    arrayOfByte[i] = paramByte;
    if (b == a.length)
    {
      b(a, 0);
      b = 0;
    }
    c += 1L;
  }
  
  protected abstract void a(long paramLong);
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    paramInt1 = i;
    int j = paramInt2;
    if (b != 0)
    {
      if (paramInt2 <= 0)
      {
        j = paramInt2;
        paramInt1 = i;
      }
    }
    else {
      label26:
      if (j > a.length) {
        break label63;
      }
    }
    for (;;)
    {
      if (j <= 0)
      {
        return;
        a(paramArrayOfByte[i]);
        i += 1;
        paramInt2 -= 1;
        break;
        label63:
        b(paramArrayOfByte, paramInt1);
        paramInt1 += a.length;
        j -= a.length;
        c += a.length;
        break label26;
      }
      a(paramArrayOfByte[paramInt1]);
      paramInt1 += 1;
      j -= 1;
    }
  }
  
  protected abstract void b(byte[] paramArrayOfByte, int paramInt);
  
  public void c()
  {
    c = 0L;
    b = 0;
    int i = 0;
    for (;;)
    {
      if (i >= a.length) {
        return;
      }
      a[i] = 0;
      i += 1;
    }
  }
  
  public int d()
  {
    return 64;
  }
  
  public void e()
  {
    long l = c;
    a((byte)Byte.MIN_VALUE);
    for (;;)
    {
      if (b == 0)
      {
        a(l << 3);
        f();
        return;
      }
      a((byte)0);
    }
  }
  
  protected abstract void f();
}

/* Location:
 * Qualified Name:     org.bouncycastle.crypto.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */