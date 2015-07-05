package de.innosystec.unrar.unpack;

import java.util.Arrays;

public abstract class c
  extends de.innosystec.unrar.unpack.vm.a
{
  static int[] O = { 1, 3, 4, 4, 5, 6, 7, 8, 8, 4, 4, 5, 6, 6, 4, 0 };
  static int[] P = { 0, 160, 208, 224, 240, 248, 252, 254, 255, 192, 128, 144, 152, 156, 176 };
  static int[] Q = { 2, 3, 3, 3, 4, 4, 5, 6, 6, 4, 4, 5, 6, 6, 4, 0 };
  static int[] R = { 0, 64, 96, 160, 208, 224, 240, 248, 252, 192, 128, 144, 152, 156, 176 };
  private static int[] S;
  private static int[] T;
  private static int[] U;
  private static int[] V;
  private static int[] W;
  private static int[] X;
  private static int[] Y;
  private static int[] Z;
  private static int[] a = { 32768, 40960, 49152, 53248, 57344, 59904, 60928, 61440, 61952, 61952, 65535 };
  private static int[] aa;
  private static int[] ab;
  private static int[] ac;
  private static int[] ad;
  private static int[] ae;
  protected int A;
  protected int B;
  protected int C;
  protected int D;
  protected int E;
  protected int F;
  protected int G;
  protected int H;
  protected int I;
  protected int J;
  protected int K;
  protected int L;
  protected int M;
  protected int N;
  protected int b;
  protected boolean c;
  protected boolean d;
  protected a e;
  protected boolean f;
  protected int g;
  protected long h;
  protected byte[] i;
  protected int[] j = new int[4];
  protected int k;
  protected int l;
  protected int m;
  protected int[] n = new int['Ā'];
  protected int[] o = new int['Ā'];
  protected int[] p = new int['Ā'];
  protected int[] q = new int['Ā'];
  protected int[] r = new int['Ā'];
  protected int[] s = new int['Ā'];
  protected int[] t = new int['Ā'];
  protected int[] u = new int['Ā'];
  protected int[] v = new int['Ā'];
  protected int[] w = new int['Ā'];
  protected int[] x = new int['Ā'];
  protected int y;
  protected int z;
  
  static
  {
    S = new int[] { 0, 0, 0, 2, 3, 5, 7, 11, 16, 20, 24, 32, 32 };
    T = new int[] { 40960, 49152, 53248, 57344, 59904, 60928, 61440, 61952, 62016, 65535 };
    U = new int[] { 0, 0, 0, 0, 5, 7, 9, 13, 18, 22, 26, 34, 36 };
    V = new int[] { 32768, 49152, 57344, 61952, 61952, 61952, 61952, 61952, 65535 };
    W = new int[] { 0, 0, 0, 0, 0, 8, 16, 24, 33, 33, 33, 33, 33 };
    X = new int[] { 8192, 49152, 57344, 61440, 61952, 61952, 63456, 65535 };
    Y = new int[] { 0, 0, 0, 0, 0, 0, 4, 44, 60, 76, 80, 80, 127 };
    Z = new int[] { 4096, 9216, 32768, 49152, 64000, 65535, 65535, 65535 };
    aa = new int[] { 0, 0, 0, 0, 0, 0, 2, 7, 53, 117, 233, 0, 0 };
    ab = new int[] { 2048, 9216, 60928, 65152, 65535, 65535, 65535 };
    ac = new int[] { 0, 0, 0, 0, 0, 0, 0, 2, 16, 218, 251, 0, 0 };
    ad = new int[] { 65280, 65535, 65535, 65535, 65535, 65535 };
    ae = new int[] { 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0 };
  }
  
  private int a(int paramInt)
  {
    if (paramInt == 1) {
      return E + 3;
    }
    return O[paramInt];
  }
  
  private int b(int paramInt)
  {
    if (paramInt == 3) {
      return E + 3;
    }
    return Q[paramInt];
  }
  
  protected int a(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i1 = 0;
    int i2 = paramInt1 & 0xFFF0;
    paramInt1 = 0;
    while (paramArrayOfInt1[paramInt1] <= i2)
    {
      paramInt2 += 1;
      paramInt1 += 1;
    }
    d(paramInt2);
    if (paramInt1 != 0) {
      i1 = paramArrayOfInt1[(paramInt1 - 1)];
    }
    return (i2 - i1 >>> 16 - paramInt2) + paramArrayOfInt2[paramInt2];
  }
  
  protected void a(int paramInt1, int paramInt2)
  {
    h -= paramInt2;
    while (paramInt2 != 0)
    {
      i[k] = i[(k - paramInt1 & 0x3FFFFF)];
      k = (k + 1 & 0x3FFFFF);
      paramInt2 -= 1;
    }
  }
  
  protected abstract void a(boolean paramBoolean);
  
  protected void a(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i1 = 7;
    int i2 = 0;
    while (i1 >= 0)
    {
      int i3 = 0;
      while (i3 < 32)
      {
        paramArrayOfInt1[i2] = (paramArrayOfInt1[i2] & 0xFF00 | i1);
        i3 += 1;
        i2 += 1;
      }
      i1 -= 1;
    }
    Arrays.fill(paramArrayOfInt2, 0);
    i1 = 6;
    while (i1 >= 0)
    {
      paramArrayOfInt2[i1] = ((7 - i1) * 32);
      i1 -= 1;
    }
  }
  
  protected void b(boolean paramBoolean)
  {
    if (c)
    {
      k = l;
      if (h >= 0L)
      {
        g();
        I = 8;
      }
    }
    for (;;)
    {
      if (h >= 0L)
      {
        k &= 0x3FFFFF;
        if ((ak <= g - 30) || (c())) {}
      }
      else
      {
        i();
      }
      do
      {
        return;
        a(paramBoolean);
        c(paramBoolean);
        c();
        if (!paramBoolean) {
          h();
        }
        for (k = 0;; k = l)
        {
          h -= 1L;
          break;
        }
        if (((l - k & 0x3FFFFF) >= 270) || (l == k)) {
          break label172;
        }
        i();
      } while (c);
      label172:
      if (G != 0)
      {
        f();
      }
      else
      {
        int i1 = I - 1;
        I = i1;
        if (i1 < 0)
        {
          g();
          I = 7;
        }
        if ((y & 0x80) != 0)
        {
          y <<= 1;
          if (K > J) {
            e();
          } else {
            f();
          }
        }
        else
        {
          y <<= 1;
          i1 = I - 1;
          I = i1;
          if (i1 < 0)
          {
            g();
            I = 7;
          }
          if ((y & 0x80) != 0)
          {
            y <<= 1;
            if (K > J) {
              f();
            } else {
              e();
            }
          }
          else
          {
            y <<= 1;
            d();
          }
        }
      }
    }
  }
  
  protected void c(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      E = 0;
      F = 0;
      D = 0;
      C = 0;
      B = 0;
      A = 0;
      z = 13568;
      L = 8193;
      K = 128;
      J = 128;
    }
    I = 0;
    y = 0;
    G = 0;
    H = 0;
    g = 0;
  }
  
  protected boolean c()
  {
    int i1 = g - ak;
    if (i1 < 0) {
      return false;
    }
    if (ak > 16384)
    {
      if (i1 > 0) {
        System.arraycopy(am, ak, am, 0, i1);
      }
      ak = 0;
      g = i1;
      i1 = e.a(am, i1, 32768 - i1 & 0xFFFFFFF0);
      if (i1 > 0) {
        g += i1;
      }
      b = (g - 30);
      if (i1 == -1) {
        break label119;
      }
    }
    label119:
    for (boolean bool = true;; bool = false)
    {
      return bool;
      i1 = g;
      break;
    }
  }
  
  protected void d()
  {
    F = 0;
    int i2 = n();
    int i1 = i2;
    if (H == 2)
    {
      d(1);
      if (i2 >= 32768)
      {
        a(M, N);
        return;
      }
      i1 = i2 << 1;
      H = 0;
    }
    i2 = i1 >>> 8;
    if (B < 37)
    {
      i1 = 0;
      for (;;)
      {
        if (((P[i1] ^ i2) & (255 >>> a(i1) ^ 0xFFFFFFFF)) == 0)
        {
          d(a(i1));
          if (i1 < 9) {
            break label388;
          }
          if (i1 != 9) {
            break;
          }
          H += 1;
          a(M, N);
          return;
        }
        i1 += 1;
      }
    }
    i1 = 0;
    for (;;)
    {
      if (((R[i1] ^ i2) & (255 >> b(i1) ^ 0xFFFFFFFF)) == 0)
      {
        d(b(i1));
        break;
      }
      i1 += 1;
    }
    if (i1 == 14)
    {
      H = 0;
      i1 = a(n(), 3, T, U) + 5;
      i2 = n() >> 1 | 0x8000;
      d(15);
      N = i1;
      M = i2;
      a(i2, i1);
      return;
    }
    H = 0;
    int i3 = j[(m - (i1 - 9) & 0x3)];
    i2 = a(n(), 2, a, S) + 2;
    if ((i2 == 257) && (i1 == 10))
    {
      E ^= 0x1;
      return;
    }
    i1 = i2;
    if (i3 > 256) {
      i1 = i2 + 1;
    }
    i2 = i1;
    if (i3 >= L) {
      i2 = i1 + 1;
    }
    int[] arrayOfInt = j;
    i1 = m;
    m = (i1 + 1);
    arrayOfInt[i1] = i3;
    m &= 0x3;
    N = i2;
    M = i3;
    a(i3, i2);
    return;
    label388:
    H = 0;
    B += i1;
    B -= (B >> 4);
    i3 = a(n(), 5, Z, aa) & 0xFF;
    i2 = o[i3];
    i3 -= 1;
    if (i3 != -1)
    {
      arrayOfInt = s;
      arrayOfInt[i2] -= 1;
      int i4 = o[i3];
      arrayOfInt = s;
      arrayOfInt[i4] += 1;
      o[(i3 + 1)] = i4;
      o[i3] = i2;
    }
    i1 += 2;
    arrayOfInt = j;
    i3 = m;
    m = (i3 + 1);
    i2 += 1;
    arrayOfInt[i3] = i2;
    m &= 0x3;
    N = i1;
    M = i2;
    a(i2, i1);
  }
  
  protected void e()
  {
    int i1 = 0;
    F = 0;
    K += 16;
    if (K > 255)
    {
      K = 144;
      J >>>= 1;
    }
    int i3 = C;
    int i2 = n();
    if (C >= 122)
    {
      i1 = a(i2, 3, T, U);
      C += i1;
      C -= (C >>> 5);
      i2 = n();
      if (A <= 10495) {
        break label297;
      }
      i2 = a(i2, 5, Z, aa);
    }
    int[] arrayOfInt;
    int i6;
    for (;;)
    {
      A += i2;
      A -= (A >> 8);
      for (;;)
      {
        i5 = p[(i2 & 0xFF)];
        arrayOfInt = w;
        i4 = i5 + 1;
        i5 &= 0xFF;
        i6 = arrayOfInt[i5];
        arrayOfInt[i5] = (i6 + 1);
        if ((i4 & 0xFF) != 0) {
          break;
        }
        a(p, w);
      }
      if (C >= 64)
      {
        i1 = a(i2, 2, a, S);
        break;
      }
      if (i2 < 256)
      {
        d(16);
        i1 = i2;
        break;
      }
      while ((i2 << i1 & 0x8000) == 0) {
        i1 += 1;
      }
      d(i1 + 1);
      break;
      label297:
      if (A > 1791) {
        i2 = a(i2, 5, X, Y);
      } else {
        i2 = a(i2, 4, V, W);
      }
    }
    p[i2] = p[i6];
    p[i6] = i4;
    int i4 = (0xFF00 & i4 | n() >>> 8) >>> 1;
    d(7);
    int i5 = D;
    if ((i1 != 1) && (i1 != 4))
    {
      if ((i1 == 0) && (i4 <= L))
      {
        D += 1;
        D -= (D >> 8);
      }
    }
    else
    {
      i2 = i1 + 3;
      i1 = i2;
      if (i4 >= L) {
        i1 = i2 + 1;
      }
      i2 = i1;
      if (i4 <= 256) {
        i2 = i1 + 8;
      }
      if ((i5 <= 176) && ((z < 10752) || (i3 >= 64))) {
        break label577;
      }
    }
    label577:
    for (L = 32512;; L = 8193)
    {
      arrayOfInt = j;
      i1 = m;
      m = (i1 + 1);
      arrayOfInt[i1] = i4;
      m &= 0x3;
      N = i2;
      M = i4;
      a(i4, i2);
      return;
      if (D <= 0) {
        break;
      }
      D -= 1;
      break;
    }
  }
  
  protected void f()
  {
    int i3 = n();
    if (z > 30207) {
      i1 = a(i3, 8, ad, ae);
    }
    for (;;)
    {
      i2 = i1 & 0xFF;
      if (G == 0) {
        break label255;
      }
      i1 = i2;
      if (i2 == 0)
      {
        i1 = i2;
        if (i3 > 4095) {
          i1 = 256;
        }
      }
      i2 = i1 - 1;
      i1 = i2;
      if (i2 != -1) {
        break label291;
      }
      i1 = n();
      d(1);
      if ((0x8000 & i1) == 0) {
        break;
      }
      G = 0;
      F = 0;
      return;
      if (z > 24063) {
        i1 = a(i3, 6, ab, ac);
      } else if (z > 13823) {
        i1 = a(i3, 5, Z, aa);
      } else if (z > 3583) {
        i1 = a(i3, 5, X, Y);
      } else {
        i1 = a(i3, 4, V, W);
      }
    }
    if ((i1 & 0x4000) != 0) {}
    for (int i1 = 4;; i1 = 3)
    {
      d(1);
      i2 = a(n(), 5, Z, aa);
      i3 = n();
      d(5);
      a(i2 << 5 | i3 >>> 11, i1);
      return;
    }
    label255:
    i3 = F;
    F = (i3 + 1);
    i1 = i2;
    if (i3 >= 16)
    {
      i1 = i2;
      if (I == 0)
      {
        G = 1;
        i1 = i2;
      }
    }
    label291:
    z += i1;
    z -= (z >>> 8);
    J += 16;
    if (J > 255)
    {
      J = 144;
      K >>>= 1;
    }
    Object localObject = i;
    int i2 = k;
    k = (i2 + 1);
    localObject[i2] = ((byte)(n[i1] >>> 8));
    h -= 1L;
    int i4;
    for (;;)
    {
      i3 = n[i1];
      localObject = v;
      i2 = i3 + 1;
      i3 &= 0xFF;
      i4 = localObject[i3];
      localObject[i3] = (i4 + 1);
      if ((i2 & 0xFF) <= 161) {
        break;
      }
      a(n, v);
    }
    n[i1] = n[i4];
    n[i4] = i2;
  }
  
  protected void g()
  {
    int i1 = a(n(), 5, Z, aa);
    for (;;)
    {
      int i3 = q[i1];
      y = (i3 >>> 8);
      int[] arrayOfInt = x;
      int i2 = i3 + 1;
      i3 &= 0xFF;
      int i4 = arrayOfInt[i3];
      arrayOfInt[i3] = (i4 + 1);
      if ((i2 & 0xFF) != 0)
      {
        q[i1] = q[i4];
        q[i4] = i2;
        return;
      }
      a(q, x);
    }
  }
  
  protected void h()
  {
    int i1 = 0;
    while (i1 < 256)
    {
      int[] arrayOfInt1 = r;
      int[] arrayOfInt2 = s;
      t[i1] = i1;
      arrayOfInt2[i1] = i1;
      arrayOfInt1[i1] = i1;
      u[i1] = ((i1 ^ 0xFFFFFFFF) + 1 & 0xFF);
      arrayOfInt1 = n;
      arrayOfInt2 = p;
      int i2 = i1 << 8;
      arrayOfInt2[i1] = i2;
      arrayOfInt1[i1] = i2;
      o[i1] = i1;
      q[i1] = (((i1 ^ 0xFFFFFFFF) + 1 & 0xFF) << 8);
      i1 += 1;
    }
    Arrays.fill(v, 0);
    Arrays.fill(w, 0);
    Arrays.fill(x, 0);
    a(p, w);
  }
  
  protected void i()
  {
    if (k != l) {
      f = true;
    }
    if (k < l)
    {
      e.b(i, l, -l & 0x3FFFFF);
      e.b(i, 0, k);
      d = true;
    }
    for (;;)
    {
      l = k;
      return;
      e.b(i, l, k - l);
    }
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */