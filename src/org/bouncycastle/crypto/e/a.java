package org.bouncycastle.crypto.e;

public class a
  implements org.bouncycastle.crypto.a
{
  private final org.bouncycastle.crypto.a a;
  private final int b;
  private byte[] c;
  private byte[] d;
  private byte[] e;
  
  public a(org.bouncycastle.crypto.a parama)
  {
    a = parama;
    b = a.a();
    c = new byte[b];
    d = new byte[b];
    e = new byte[b];
  }
  
  public int a()
  {
    return a.a();
  }
  
  public int a(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    a.a(d, 0, e, 0);
    int i = 0;
    for (;;)
    {
      if (i >= e.length)
      {
        paramInt2 = d.length - 1;
        paramInt1 = 1;
        if (paramInt2 >= 0) {
          break;
        }
        return d.length;
      }
      paramArrayOfByte2[(paramInt2 + i)] = ((byte)(e[i] ^ paramArrayOfByte1[(paramInt1 + i)]));
      i += 1;
    }
    i = (d[paramInt2] & 0xFF) + paramInt1;
    if (i > 255) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      d[paramInt2] = ((byte)i);
      paramInt2 -= 1;
      break;
    }
  }
  
  public void a(boolean paramBoolean, org.bouncycastle.crypto.b paramb)
  {
    if ((paramb instanceof org.bouncycastle.crypto.f.b))
    {
      paramb = (org.bouncycastle.crypto.f.b)paramb;
      System.arraycopy(paramb.a(), 0, c, 0, c.length);
      b();
      a.a(true, paramb.b());
      return;
    }
    throw new IllegalArgumentException("SIC mode requires ParametersWithIV");
  }
  
  public void b()
  {
    System.arraycopy(c, 0, d, 0, d.length);
    a.b();
  }
}

/* Location:
 * Qualified Name:     org.bouncycastle.crypto.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */