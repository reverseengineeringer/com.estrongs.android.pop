package org.bouncycastle.crypto.a;

public class b
  extends a
{
  private int a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int[] f = new int[80];
  private int g;
  
  public b()
  {
    c();
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | (paramInt1 ^ 0xFFFFFFFF) & paramInt3;
  }
  
  private int b(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 ^ paramInt2 ^ paramInt3;
  }
  
  private int c(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | paramInt1 & paramInt3 | paramInt2 & paramInt3;
  }
  
  public int a(byte[] paramArrayOfByte, int paramInt)
  {
    e();
    org.bouncycastle.crypto.g.a.a(a, paramArrayOfByte, paramInt);
    org.bouncycastle.crypto.g.a.a(b, paramArrayOfByte, paramInt + 4);
    org.bouncycastle.crypto.g.a.a(c, paramArrayOfByte, paramInt + 8);
    org.bouncycastle.crypto.g.a.a(d, paramArrayOfByte, paramInt + 12);
    org.bouncycastle.crypto.g.a.a(e, paramArrayOfByte, paramInt + 16);
    c();
    return 20;
  }
  
  public String a()
  {
    return "SHA-1";
  }
  
  protected void a(long paramLong)
  {
    if (g > 14) {
      f();
    }
    f[14] = ((int)(paramLong >>> 32));
    f[15] = ((int)(0xFFFFFFFFFFFFFFFF & paramLong));
  }
  
  public int b()
  {
    return 20;
  }
  
  protected void b(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte[paramInt];
    int j = paramInt + 1;
    paramInt = paramArrayOfByte[j];
    int k = j + 1;
    j = paramArrayOfByte[k];
    k = paramArrayOfByte[(k + 1)];
    f[g] = (i << 24 | (paramInt & 0xFF) << 16 | (j & 0xFF) << 8 | k & 0xFF);
    paramInt = g + 1;
    g = paramInt;
    if (paramInt == 16) {
      f();
    }
  }
  
  public void c()
  {
    super.c();
    a = 1732584193;
    b = -271733879;
    c = -1732584194;
    d = 271733878;
    e = -1009589776;
    g = 0;
    int i = 0;
    for (;;)
    {
      if (i == f.length) {
        return;
      }
      f[i] = 0;
      i += 1;
    }
  }
  
  protected void f()
  {
    int i = 16;
    int m;
    int i1;
    int j;
    int n;
    int k;
    int i2;
    label42:
    label51:
    label60:
    int i3;
    if (i >= 80)
    {
      m = a;
      i1 = b;
      i = c;
      j = d;
      n = e;
      k = 0;
      i2 = 0;
      if (i2 < 4) {
        break label212;
      }
      i2 = 0;
      if (i2 < 4) {
        break label509;
      }
      i2 = 0;
      if (i2 < 4) {
        break label806;
      }
      i3 = 0;
      i2 = m;
      m = i;
      i = i3;
      label79:
      if (i <= 3) {
        break label1103;
      }
      a += i2;
      b += i1;
      c += m;
      d += j;
      e += n;
      g = 0;
      i = 0;
    }
    for (;;)
    {
      if (i >= 16)
      {
        return;
        j = f[(i - 3)] ^ f[(i - 8)] ^ f[(i - 14)] ^ f[(i - 16)];
        f[i] = (j >>> 31 | j << 1);
        i += 1;
        break;
        label212:
        int i4 = a(i1, i, j);
        int[] arrayOfInt = f;
        i3 = k + 1;
        n = arrayOfInt[k] + ((m << 5 | m >>> 27) + i4) + 1518500249 + n;
        k = i1 >>> 2 | i1 << 30;
        i4 = a(m, k, i);
        arrayOfInt = f;
        i1 = i3 + 1;
        j += (n << 5 | n >>> 27) + i4 + arrayOfInt[i3] + 1518500249;
        m = m >>> 2 | m << 30;
        i4 = a(n, m, k);
        arrayOfInt = f;
        i3 = i1 + 1;
        i += (j << 5 | j >>> 27) + i4 + arrayOfInt[i1] + 1518500249;
        n = n << 30 | n >>> 2;
        i1 = a(j, n, m);
        arrayOfInt = f;
        i4 = i3 + 1;
        i1 = k + ((i << 5 | i >>> 27) + i1 + arrayOfInt[i3] + 1518500249);
        j = j >>> 2 | j << 30;
        i3 = a(i, j, n);
        arrayOfInt = f;
        k = i4 + 1;
        m += i3 + (i1 << 5 | i1 >>> 27) + arrayOfInt[i4] + 1518500249;
        i = i >>> 2 | i << 30;
        i2 += 1;
        break label42;
        label509:
        i4 = b(i1, i, j);
        arrayOfInt = f;
        i3 = k + 1;
        n = arrayOfInt[k] + ((m << 5 | m >>> 27) + i4) + 1859775393 + n;
        k = i1 >>> 2 | i1 << 30;
        i4 = b(m, k, i);
        arrayOfInt = f;
        i1 = i3 + 1;
        j += (n << 5 | n >>> 27) + i4 + arrayOfInt[i3] + 1859775393;
        m = m >>> 2 | m << 30;
        i4 = b(n, m, k);
        arrayOfInt = f;
        i3 = i1 + 1;
        i += (j << 5 | j >>> 27) + i4 + arrayOfInt[i1] + 1859775393;
        n = n << 30 | n >>> 2;
        i1 = b(j, n, m);
        arrayOfInt = f;
        i4 = i3 + 1;
        i1 = k + ((i << 5 | i >>> 27) + i1 + arrayOfInt[i3] + 1859775393);
        j = j >>> 2 | j << 30;
        i3 = b(i, j, n);
        arrayOfInt = f;
        k = i4 + 1;
        m += i3 + (i1 << 5 | i1 >>> 27) + arrayOfInt[i4] + 1859775393;
        i = i >>> 2 | i << 30;
        i2 += 1;
        break label51;
        label806:
        i4 = c(i1, i, j);
        arrayOfInt = f;
        i3 = k + 1;
        n = arrayOfInt[k] + ((m << 5 | m >>> 27) + i4) - 1894007588 + n;
        k = i1 >>> 2 | i1 << 30;
        i4 = c(m, k, i);
        arrayOfInt = f;
        i1 = i3 + 1;
        j += (n << 5 | n >>> 27) + i4 + arrayOfInt[i3] - 1894007588;
        m = m >>> 2 | m << 30;
        i4 = c(n, m, k);
        arrayOfInt = f;
        i3 = i1 + 1;
        i += (j << 5 | j >>> 27) + i4 + arrayOfInt[i1] - 1894007588;
        n = n << 30 | n >>> 2;
        i1 = c(j, n, m);
        arrayOfInt = f;
        i4 = i3 + 1;
        i1 = k + ((i << 5 | i >>> 27) + i1 + arrayOfInt[i3] - 1894007588);
        j = j >>> 2 | j << 30;
        i3 = c(i, j, n);
        arrayOfInt = f;
        k = i4 + 1;
        m += i3 + (i1 << 5 | i1 >>> 27) + arrayOfInt[i4] - 1894007588;
        i = i >>> 2 | i << 30;
        i2 += 1;
        break label60;
        label1103:
        i4 = b(i1, m, j);
        arrayOfInt = f;
        i3 = k + 1;
        n = arrayOfInt[k] + ((i2 << 5 | i2 >>> 27) + i4) - 899497514 + n;
        k = i1 >>> 2 | i1 << 30;
        i4 = b(i2, k, m);
        arrayOfInt = f;
        i1 = i3 + 1;
        j += (n << 5 | n >>> 27) + i4 + arrayOfInt[i3] - 899497514;
        i2 = i2 >>> 2 | i2 << 30;
        i4 = b(n, i2, k);
        arrayOfInt = f;
        i3 = i1 + 1;
        m += (j << 5 | j >>> 27) + i4 + arrayOfInt[i1] - 899497514;
        n = n << 30 | n >>> 2;
        i1 = b(j, n, i2);
        arrayOfInt = f;
        i4 = i3 + 1;
        i1 = k + ((m << 5 | m >>> 27) + i1 + arrayOfInt[i3] - 899497514);
        j = j >>> 2 | j << 30;
        i3 = b(m, j, n);
        arrayOfInt = f;
        k = i4 + 1;
        i2 += i3 + (i1 << 5 | i1 >>> 27) + arrayOfInt[i4] - 899497514;
        m = m >>> 2 | m << 30;
        i += 1;
        break label79;
      }
      f[i] = 0;
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.bouncycastle.crypto.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */