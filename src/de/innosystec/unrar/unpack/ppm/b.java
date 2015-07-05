package de.innosystec.unrar.unpack.ppm;

import java.lang.reflect.Array;
import java.util.Arrays;

public class b
{
  private static int[] w = { 15581, 7999, 22975, 18675, 25761, 23228, 26162, 24657 };
  private final j A = new j(null);
  private final k B = new k();
  private final k C = new k();
  private final c D = new c(null);
  private final c E = new c(null);
  private final c F = new c(null);
  private final c G = new c(null);
  private final int[] H = new int[64];
  private i[][] a = (i[][])Array.newInstance(i.class, new int[] { 25, 16 });
  private i b;
  private c c = null;
  private c d = null;
  private c e = null;
  private j f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private int l;
  private int[] m = new int['Ā'];
  private int[] n = new int['Ā'];
  private int[] o = new int['Ā'];
  private int[] p = new int['Ā'];
  private int q;
  private int r;
  private int s;
  private int[][] t = (int[][])Array.newInstance(Integer.TYPE, new int[] { 128, 64 });
  private e u = new e();
  private l v = new l();
  private final j x = new j(null);
  private final j y = new j(null);
  private final j z = new j(null);
  
  private int a(boolean paramBoolean, j paramj)
  {
    int i5 = 1;
    int i4 = 0;
    k localk = C;
    j localj1 = x.a(r());
    c localc1 = D.a(r());
    localc1.c(c.e());
    c localc2 = E.a(r());
    localc2.c(f.c());
    j localj2 = y.a(r());
    int i3;
    int i2;
    if (!paramBoolean)
    {
      H[0] = f.e();
      if (localc1.d() == 0)
      {
        i3 = 1;
        i2 = 1;
      }
    }
    for (;;)
    {
      int i1 = i2;
      if (i3 == 0)
      {
        if (paramj.e() == 0) {
          break label588;
        }
        localj2.c(paramj.e());
        localc1.c(localc1.d());
        i3 = 1;
        i1 = i2;
      }
      for (;;)
      {
        if (i3 == 0)
        {
          localc1.c(localc1.d());
          if (localc1.b() == 1) {
            break label269;
          }
          localj2.c(localc1.a().b());
          if (localj2.a() != f.a()) {
            do
            {
              localj2.f();
            } while (localj2.a() != f.a());
          }
        }
        if (localj2.c() != localc2.e())
        {
          localc1.c(localj2.c());
          label255:
          if (i1 != 0) {
            break label317;
          }
          i2 = localc1.e();
        }
        label269:
        label317:
        do
        {
          return i2;
          localj2.c(localc1.c().e());
          break;
          paramj = H;
          i2 = i1 + 1;
          paramj[i1] = localj2.e();
          if (localc1.d() != 0) {
            break label579;
          }
          i1 = i2;
          break label255;
          localk.a(r()[localc2.e()]);
          localk.d(localc2.e() + 1);
          if (localc1.b() == 1) {
            break label563;
          }
          i2 = i4;
        } while (localc1.e() <= v.h());
        localj2.c(localc1.a().b());
        if (localj2.a() != localk.a()) {
          do
          {
            localj2.f();
          } while (localj2.a() != localk.a());
        }
        i2 = localj2.b() - 1;
        i3 = localc1.a().a() - localc1.b() - i2;
        if (i2 * 2 <= i3) {
          if (i2 * 5 > i3)
          {
            i2 = i5;
            label467:
            localk.b(i2 + 1);
          }
        }
        for (;;)
        {
          paramj = H;
          i3 = i1 - 1;
          localj1.c(paramj[i3]);
          localc1.c(localc1.a(this, localj1, localk));
          i2 = i4;
          if (localc1.e() == 0) {
            break;
          }
          i1 = i3;
          if (i3 == 0)
          {
            return localc1.e();
            i2 = 0;
            break label467;
            i2 = (i2 * 2 + i3 * 3 - 1) / (i3 * 2);
            break label467;
            label563:
            localk.b(localc1.c().b());
          }
        }
        label579:
        i1 = i2;
        i3 = 0;
        continue;
        label588:
        i3 = 0;
        i1 = i2;
      }
      i3 = 0;
      i2 = 1;
      continue;
      i3 = 0;
      i2 = 0;
    }
  }
  
  private void i(int paramInt)
  {
    int i3 = 1;
    q = 1;
    j = paramInt;
    t();
    o[0] = 0;
    o[1] = 2;
    paramInt = 0;
    while (paramInt < 9)
    {
      o[(paramInt + 2)] = 4;
      paramInt += 1;
    }
    paramInt = 0;
    while (paramInt < 245)
    {
      o[(paramInt + 11)] = 6;
      paramInt += 1;
    }
    paramInt = 0;
    while (paramInt < 3)
    {
      n[paramInt] = paramInt;
      paramInt += 1;
    }
    int i4 = 1;
    int i1 = paramInt;
    int i2 = paramInt;
    while (i1 < 256)
    {
      n[i1] = i2;
      int i6 = i4 - 1;
      int i5 = i3;
      i4 = i2;
      paramInt = i6;
      if (i6 == 0)
      {
        i5 = i3 + 1;
        i4 = i2 + 1;
        paramInt = i5;
      }
      i1 += 1;
      i3 = i5;
      i2 = i4;
      i4 = paramInt;
    }
    paramInt = 0;
    while (paramInt < 64)
    {
      p[paramInt] = 0;
      paramInt += 1;
    }
    paramInt = 0;
    while (paramInt < 192)
    {
      p[(paramInt + 64)] = 8;
      paramInt += 1;
    }
    b.b(7);
  }
  
  private void t()
  {
    int i1 = 12;
    Arrays.fill(m, 0);
    v.i();
    if (j < 12) {
      i1 = j;
    }
    l = (-i1 - 1);
    i1 = v.e();
    c.c(i1);
    e.c(i1);
    c.b(0);
    i = j;
    c.a(256);
    c.a().a(c.b() + 1);
    i1 = v.b(128);
    f.c(i1);
    c.a().a_(i1);
    j localj = new j(v.j());
    int i2 = c.a().b();
    k = l;
    r = 0;
    i1 = 0;
    while (i1 < 256)
    {
      localj.c(i1 * 6 + i2);
      localj.a(i1);
      localj.b(1);
      localj.e(0);
      i1 += 1;
    }
    i1 = 0;
    while (i1 < 128)
    {
      i2 = 0;
      while (i2 < 8)
      {
        int i3 = 0;
        while (i3 < 64)
        {
          t[i1][(i2 + i3)] = (16384 - w[i2] / (i1 + 2));
          i3 += 8;
        }
        i2 += 1;
      }
      i1 += 1;
    }
    i1 = 0;
    while (i1 < 25)
    {
      i2 = 0;
      while (i2 < 16)
      {
        a[i1][i2].a(i1 * 5 + 10);
        i2 += 1;
      }
      i1 += 1;
    }
  }
  
  private void u()
  {
    q = 1;
    Arrays.fill(m, 0);
  }
  
  private void v()
  {
    t();
    q = 0;
  }
  
  private void w()
  {
    k localk = B;
    localk.a(f);
    j localj = z.a(r());
    Object localObject = A.a(r());
    c localc1 = F.a(r());
    c localc2 = G.a(r());
    localc1.c(c.d());
    if ((localk.b() < 31) && (localc1.e() != 0))
    {
      if (localc1.b() == 1) {
        break label279;
      }
      localj.c(localc1.a().b());
      if (localj.a() != localk.a())
      {
        do
        {
          localj.f();
        } while (localj.a() != localk.a());
        ((j)localObject).c(localj.e() - 6);
        if (localj.b() >= ((j)localObject).b())
        {
          j.a(localj, (j)localObject);
          localj.d();
        }
      }
      if (localj.b() < 115)
      {
        localj.d(2);
        localc1.a().b(2);
      }
    }
    while (i == 0)
    {
      f.e(a(true, localj));
      c.c(f.c());
      e.c(f.c());
      if (c.e() == 0) {
        v();
      }
      return;
      label279:
      localj.c(localc1.c().e());
      if (localj.b() < 32) {
        localj.d(1);
      }
    }
    v.j()[v.h()] = ((byte)localk.a());
    v.b();
    localc2.c(v.h());
    if (v.h() >= v.f())
    {
      v();
      return;
    }
    if (localk.c() != 0)
    {
      if (localk.c() <= v.h())
      {
        localk.d(a(false, localj));
        if (localk.c() == 0)
        {
          v();
          return;
        }
      }
      i1 = i - 1;
      i = i1;
      if (i1 == 0)
      {
        localc2.c(localk.c());
        if (e.e() != c.e()) {
          v.d(1);
        }
      }
    }
    int i4;
    int i5;
    int i6;
    int i7;
    for (;;)
    {
      i4 = c.b();
      i5 = c.a().a();
      i6 = localk.b();
      localc1.c(e.e());
      if (localc1.e() == c.e()) {
        break label1031;
      }
      i7 = localc1.b();
      if (i7 == 1) {
        break label833;
      }
      if ((i7 & 0x1) != 0) {
        break;
      }
      localc1.a().a_(v.a(localc1.a().b(), i7 >>> 1));
      if (localc1.a().b() != 0) {
        break;
      }
      v();
      return;
      f.e(localc2.e());
      localk.a(c);
    }
    label625:
    label636:
    label654:
    int i8;
    if (i7 * 2 < i4)
    {
      i1 = 1;
      if (i7 * 4 > i4) {
        break label823;
      }
      i2 = 1;
      if (localc1.a().a() > i7 * 8) {
        break label828;
      }
      i3 = 1;
      localc1.a().b((i2 & i3) * 2 + i1);
      i1 = localk.b();
      i3 = (localc1.a().a() + 6) * (i1 * 2);
      i8 = i5 - i4 - (i6 - 1) + localc1.a().a();
      if (i3 >= i8 * 6) {
        break label963;
      }
      if (i3 <= i8) {
        break label953;
      }
      i1 = 1;
      label729:
      if (i3 < i8 * 4) {
        break label958;
      }
    }
    label823:
    label828:
    label833:
    label899:
    label948:
    label953:
    label958:
    for (int i2 = 1;; i2 = 0)
    {
      i1 = i2 + (i1 + 1);
      localc1.a().b(3);
      localj.c(localc1.a().b() + i7 * 6);
      localj.a(localc2);
      localj.a(localk.a());
      localj.b(i1);
      localc1.a(i7 + 1);
      localc1.c(localc1.d());
      break;
      i1 = 0;
      break label625;
      i2 = 0;
      break label636;
      i3 = 0;
      break label654;
      localj.c(v.b(1));
      if (localj.e() == 0)
      {
        v();
        return;
      }
      localj.a(localc1.c());
      localc1.a().a(localj);
      if (localj.b() < 30)
      {
        localj.d(localj.b());
        localObject = localc1.a();
        i2 = localj.b();
        i3 = h;
        if (i4 <= 3) {
          break label948;
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        ((a)localObject).a(i1 + (i3 + i2));
        break;
        localj.b(120);
        break label899;
      }
      i1 = 0;
      break label729;
    }
    label963:
    if (i3 >= i8 * 9)
    {
      i1 = 1;
      label974:
      if (i3 < i8 * 12) {
        break label1021;
      }
      i2 = 1;
      label985:
      if (i3 < i8 * 15) {
        break label1026;
      }
    }
    label1021:
    label1026:
    for (int i3 = 1;; i3 = 0)
    {
      i1 = i3 + (i1 + 4 + i2);
      localc1.a().b(i1);
      break;
      i1 = 0;
      break label974;
      i2 = 0;
      break label985;
    }
    label1031:
    int i1 = localk.c();
    e.c(i1);
    c.c(i1);
  }
  
  public l a()
  {
    return v;
  }
  
  public void a(int paramInt)
  {
    q = (paramInt & 0xFF);
  }
  
  public boolean a(de.innosystec.unrar.unpack.b paramb, int paramInt)
  {
    boolean bool = true;
    int i2 = paramb.a() & 0xFF;
    int i1;
    if ((i2 & 0x20) != 0)
    {
      paramInt = 1;
      if (paramInt == 0) {
        break label103;
      }
      i1 = paramb.a();
      label32:
      if ((i2 & 0x40) != 0) {
        paramb.a(paramb.a());
      }
      u.a(paramb);
      if (paramInt == 0) {
        break label255;
      }
      paramInt = (i2 & 0x1F) + 1;
      if (paramInt <= 16) {
        break label274;
      }
      paramInt = (paramInt - 16) * 3 + 16;
    }
    label103:
    label255:
    label274:
    for (;;)
    {
      if (paramInt == 1)
      {
        v.c();
        do
        {
          return false;
          paramInt = 0;
          break;
        } while (v.d() == 0);
        i1 = 0;
        break label32;
      }
      v.a(i1 + 1);
      c = new c(r());
      d = new c(r());
      e = new c(r());
      f = new j(r());
      b = new i();
      i1 = 0;
      while (i1 < 25)
      {
        i2 = 0;
        while (i2 < 16)
        {
          a[i1][i2] = new i();
          i2 += 1;
        }
        i1 += 1;
      }
      i(paramInt);
      if (c.e() != 0) {}
      for (;;)
      {
        return bool;
        bool = false;
      }
    }
  }
  
  public int b()
  {
    if ((c.e() <= v.h()) || (c.e() > v.g())) {}
    do
    {
      return -1;
      if (c.b() == 1) {
        break;
      }
    } while ((c.a().b() <= v.h()) || (c.a().b() > v.g()) || (!c.d(this)));
    for (;;)
    {
      u.c();
      for (;;)
      {
        if (f.e() != 0) {
          break label226;
        }
        u.d();
        do
        {
          i += 1;
          c.c(c.d());
          if ((c.e() <= v.h()) || (c.e() > v.g())) {
            break;
          }
        } while (c.b() == g);
        if (!c.c(this)) {
          break;
        }
        u.c();
      }
      c.b(this);
    }
    label226:
    int i1 = f.a();
    if ((i == 0) && (f.c() > v.h()))
    {
      int i2 = f.c();
      c.c(i2);
      e.c(i2);
    }
    for (;;)
    {
      u.d();
      return i1;
      w();
      if (q == 0) {
        u();
      }
    }
  }
  
  public void b(int paramInt)
  {
    a(f() + paramInt);
  }
  
  public void c(int paramInt)
  {
    g = paramInt;
  }
  
  public i[][] c()
  {
    return a;
  }
  
  public i d()
  {
    return b;
  }
  
  public void d(int paramInt)
  {
    r = (paramInt & 0xFF);
  }
  
  public int e()
  {
    return l;
  }
  
  public void e(int paramInt)
  {
    h = paramInt;
  }
  
  public int f()
  {
    return q;
  }
  
  public void f(int paramInt)
  {
    k = paramInt;
  }
  
  public void g(int paramInt)
  {
    f(i() + paramInt);
  }
  
  public int[] g()
  {
    return m;
  }
  
  public int h()
  {
    return g;
  }
  
  public void h(int paramInt)
  {
    s = (paramInt & 0xFF);
  }
  
  public int i()
  {
    return k;
  }
  
  public int j()
  {
    return r;
  }
  
  public int k()
  {
    return s;
  }
  
  public int[][] l()
  {
    return t;
  }
  
  public e m()
  {
    return u;
  }
  
  public int[] n()
  {
    return p;
  }
  
  public int[] o()
  {
    return o;
  }
  
  public int[] p()
  {
    return n;
  }
  
  public j q()
  {
    return f;
  }
  
  public byte[] r()
  {
    return v.j();
  }
  
  public int s()
  {
    return i;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ModelPPM[");
    localStringBuilder.append("\n  numMasked=");
    localStringBuilder.append(g);
    localStringBuilder.append("\n  initEsc=");
    localStringBuilder.append(h);
    localStringBuilder.append("\n  orderFall=");
    localStringBuilder.append(i);
    localStringBuilder.append("\n  maxOrder=");
    localStringBuilder.append(j);
    localStringBuilder.append("\n  runLength=");
    localStringBuilder.append(k);
    localStringBuilder.append("\n  initRL=");
    localStringBuilder.append(l);
    localStringBuilder.append("\n  escCount=");
    localStringBuilder.append(q);
    localStringBuilder.append("\n  prevSuccess=");
    localStringBuilder.append(r);
    localStringBuilder.append("\n  foundState=");
    localStringBuilder.append(f);
    localStringBuilder.append("\n  coder=");
    localStringBuilder.append(u);
    localStringBuilder.append("\n  subAlloc=");
    localStringBuilder.append(v);
    localStringBuilder.append("\n]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */