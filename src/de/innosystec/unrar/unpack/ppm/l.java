package de.innosystec.unrar.unpack.ppm;

import java.io.PrintStream;
import java.util.Arrays;

public class l
{
  public static final int a;
  private int c;
  private int[] d = new int[38];
  private int[] e = new int[''];
  private int f;
  private int g;
  private int h;
  private int i;
  private final h[] j = new h[38];
  private int k;
  private int l;
  private int m;
  private int n;
  private byte[] o;
  private int p;
  private int q;
  private h r = null;
  private g s = null;
  private g t = null;
  private g u = null;
  
  static
  {
    if (!l.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      a = Math.max(c.a, 12);
      return;
    }
  }
  
  public l()
  {
    a();
  }
  
  private void b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = d[paramInt2] - d[paramInt3];
    paramInt3 = f(d[paramInt3]) + paramInt1;
    int[] arrayOfInt = d;
    int i2 = e[(i1 - 1)];
    paramInt2 = paramInt3;
    paramInt1 = i1;
    if (arrayOfInt[i2] != i1)
    {
      paramInt1 = i2 - 1;
      c(paramInt3, paramInt1);
      paramInt1 = d[paramInt1];
      paramInt2 = paramInt3 + f(paramInt1);
      paramInt1 = i1 - paramInt1;
    }
    c(paramInt2, e[(paramInt1 - 1)]);
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    h localh = r;
    localh.c(paramInt1);
    localh.a(j[paramInt2].a());
    j[paramInt2].a(localh);
  }
  
  private int d(int paramInt1, int paramInt2)
  {
    return f(paramInt2) + paramInt1;
  }
  
  private int e(int paramInt)
  {
    int i1 = j[paramInt].a();
    h localh = r;
    localh.c(i1);
    j[paramInt].a(localh.a());
    return i1;
  }
  
  private int f(int paramInt)
  {
    return a * paramInt;
  }
  
  private int g(int paramInt)
  {
    if (f == 0)
    {
      f = 255;
      k();
      if (j[paramInt].a() != 0) {
        return e(paramInt);
      }
    }
    int i1 = paramInt;
    for (;;)
    {
      i1 += 1;
      if (i1 == 38)
      {
        f -= 1;
        i1 = f(d[paramInt]);
        paramInt = d[paramInt] * 12;
        if (n - k > paramInt)
        {
          n -= paramInt;
          l -= i1;
          return l;
        }
        return 0;
      }
      if (j[i1].a() != 0)
      {
        int i2 = e(i1);
        b(i2, i1, paramInt);
        return i2;
      }
    }
  }
  
  private void k()
  {
    int i1 = 0;
    g localg1 = s;
    localg1.c(q);
    g localg2 = t;
    Object localObject = u;
    if (h != i) {
      o[h] = 0;
    }
    localg1.c(localg1);
    localg1.b(localg1);
    while (i1 < 38)
    {
      while (j[i1].a() != 0)
      {
        localg2.c(e(i1));
        localg2.a(localg1);
        localg2.e(65535);
        localg2.b(d[i1]);
      }
      i1 += 1;
    }
    localg2.c(localg1.b());
    while (localg2.e() != localg1.e())
    {
      ((g)localObject).c(d(localg2.e(), localg2.c()));
      while ((((g)localObject).f() == 65535) && (localg2.c() + ((g)localObject).c() < 65536))
      {
        ((g)localObject).a();
        localg2.b(localg2.c() + ((g)localObject).c());
        ((g)localObject).c(d(localg2.e(), localg2.c()));
      }
      localg2.c(localg2.b());
    }
    localg2.c(localg1.b());
    while (localg2.e() != localg1.e())
    {
      localg2.a();
      i1 = localg2.c();
      while (i1 > 128)
      {
        c(localg2.e(), 37);
        localg2.c(d(localg2.e(), 128));
        i1 -= 128;
      }
      localObject = d;
      int i3 = e[(i1 - 1)];
      int i2 = i3;
      if (localObject[i3] != i1)
      {
        localObject = d;
        i2 = i3 - 1;
        i3 = i1 - localObject[i2];
        c(d(localg2.e(), i1 - i3), i3 - 1);
      }
      c(localg2.e(), i2);
      localg2.c(localg1.b());
    }
  }
  
  private int l()
  {
    return j.length * 4;
  }
  
  public int a(int paramInt1, int paramInt2)
  {
    int i1 = e[(paramInt2 - 1)];
    if (i1 == e[(paramInt2 - 1 + 1)]) {
      return paramInt1;
    }
    int i2 = b(paramInt2 + 1);
    if (i2 != 0)
    {
      System.arraycopy(o, paramInt1, o, i2, f(paramInt2));
      c(paramInt1, i1);
    }
    return i2;
  }
  
  public int a(int paramInt1, int paramInt2, int paramInt3)
  {
    paramInt2 = e[(paramInt2 - 1)];
    int i1 = e[(paramInt3 - 1)];
    if (paramInt2 == i1) {
      return paramInt1;
    }
    if (j[i1].a() != 0)
    {
      i1 = e(i1);
      System.arraycopy(o, paramInt1, o, i1, f(paramInt3));
      c(paramInt1, paramInt2);
      return i1;
    }
    b(paramInt1, paramInt2, i1);
    return paramInt1;
  }
  
  public void a()
  {
    c = 0;
  }
  
  public boolean a(int paramInt)
  {
    int i1 = 4194304;
    paramInt <<= 20;
    if (paramInt > 4194304) {
      paramInt = i1;
    }
    for (;;)
    {
      if (c == paramInt) {
        return true;
      }
      c();
      i1 = paramInt / 12;
      int i2 = a;
      i1 = a + i1 * i2;
      i2 = i1 + 1 + 152;
      q = i2;
      i2 += 12;
      try
      {
        o = new byte[i2];
        g = 1;
        m = (g + i1 - a);
        c = paramInt;
        p = (g + i1);
        if ((!b) && (i2 - q != 12)) {
          throw new AssertionError(i2 + " " + q + " " + 12);
        }
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          System.out.println(localThrowable.getMessage() + "," + i2);
          localThrowable.printStackTrace();
        }
        i1 = 0;
        paramInt = p;
        while (i1 < j.length)
        {
          j[i1] = new h(o);
          j[i1].c(paramInt);
          i1 += 1;
          paramInt += 4;
        }
        r = new h(o);
        s = new g(o);
        t = new g(o);
        u = new g(o);
        return true;
      }
    }
  }
  
  public int b(int paramInt)
  {
    int i1 = e[(paramInt - 1)];
    if (j[i1].a() != 0) {
      paramInt = e(i1);
    }
    do
    {
      return paramInt;
      paramInt = h;
      h += f(d[i1]);
    } while (h <= i);
    h -= f(d[i1]);
    return g(i1);
  }
  
  public void b()
  {
    k += 1;
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    c(paramInt1, e[(paramInt2 - 1)]);
  }
  
  public void c()
  {
    if (c != 0)
    {
      c = 0;
      o = null;
      g = 1;
      r = null;
      s = null;
      t = null;
      u = null;
    }
  }
  
  public void c(int paramInt)
  {
    k = paramInt;
  }
  
  public int d()
  {
    return c;
  }
  
  public void d(int paramInt)
  {
    c(h() - paramInt);
  }
  
  public int e()
  {
    if (i != h)
    {
      int i1 = i - a;
      i = i1;
      return i1;
    }
    if (j[0].a() != 0) {
      return e(0);
    }
    return g(0);
  }
  
  public int f()
  {
    return n;
  }
  
  public int g()
  {
    return m;
  }
  
  public int h()
  {
    return k;
  }
  
  public void i()
  {
    Arrays.fill(o, p, p + l(), (byte)0);
    k = g;
    int i3 = c / 8 / 12 * 7 * 12;
    int i1 = i3 / 12;
    int i2 = a;
    i3 = c - i3;
    int i4 = i3 / 12;
    int i5 = a;
    i = (g + c);
    i4 = i4 * i5 + i3 % 12 + g;
    l = i4;
    h = i4;
    n = (i3 + g);
    i = (h + i1 * i2);
    i2 = 1;
    i1 = 0;
    while (i1 < 4)
    {
      d[i1] = (i2 & 0xFF);
      i1 += 1;
      i2 += 1;
    }
    i2 += 1;
    while (i1 < 8)
    {
      d[i1] = (i2 & 0xFF);
      i1 += 1;
      i2 += 2;
    }
    i2 += 1;
    while (i1 < 12)
    {
      d[i1] = (i2 & 0xFF);
      i1 += 1;
      i2 += 3;
    }
    i3 = i2 + 1;
    i2 = i1;
    i1 = i3;
    while (i2 < 38)
    {
      d[i2] = (i1 & 0xFF);
      i2 += 1;
      i1 += 4;
    }
    f = 0;
    i1 = 0;
    i2 = 0;
    if (i1 < 128)
    {
      if (d[i2] < i1 + 1) {}
      for (i3 = 1;; i3 = 0)
      {
        i2 += i3;
        e[i1] = (i2 & 0xFF);
        i1 += 1;
        break;
      }
    }
  }
  
  public byte[] j()
  {
    return o;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SubAllocator[");
    localStringBuilder.append("\n  subAllocatorSize=");
    localStringBuilder.append(c);
    localStringBuilder.append("\n  glueCount=");
    localStringBuilder.append(f);
    localStringBuilder.append("\n  heapStart=");
    localStringBuilder.append(g);
    localStringBuilder.append("\n  loUnit=");
    localStringBuilder.append(h);
    localStringBuilder.append("\n  hiUnit=");
    localStringBuilder.append(i);
    localStringBuilder.append("\n  pText=");
    localStringBuilder.append(k);
    localStringBuilder.append("\n  unitsStart=");
    localStringBuilder.append(l);
    localStringBuilder.append("\n]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */