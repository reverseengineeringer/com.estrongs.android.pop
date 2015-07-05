package de.innosystec.unrar.unpack.ppm;

public class c
  extends d
{
  public static final int a = f + 2 + 4;
  public static final int[] b = { 25, 14, 9, 7, 5, 5, 4, 4, 4, 3, 3, 3, 2, 2, 2, 2 };
  private static final int f = Math.max(6, 6);
  private int g;
  private final a h;
  private final j i;
  private int j;
  private final j k = new j(null);
  private final j l = new j(null);
  private final j m = new j(null);
  private final j n = new j(null);
  private final j o = new j(null);
  private c p = null;
  private final int[] q = new int['Ā'];
  
  public c(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
    i = new j(paramArrayOfByte);
    h = new a(paramArrayOfByte);
  }
  
  private int a(b paramb, j paramj)
  {
    c localc = b(paramb.a().j());
    localc.c(d());
    int i1 = paramb.j();
    return paramb.o()[(localc.b() - 1)] + (0 + i1) + (paramb.k() + paramb.n()[paramj.a()] * 2) + (paramb.i() >>> 26 & 0x20);
  }
  
  private c b(byte[] paramArrayOfByte)
  {
    if (p == null) {
      p = new c(null);
    }
    return p.a(paramArrayOfByte);
  }
  
  private i c(b paramb, int paramInt)
  {
    int i3 = 1;
    int i2 = b();
    if (i2 != 256)
    {
      localObject = b(paramb.r());
      ((c)localObject).c(d());
      int i4 = paramb.p()[(paramInt - 1)];
      int i1;
      if (paramInt < ((c)localObject).b() - i2)
      {
        i1 = 1;
        if (h.a() >= i2 * 11) {
          break label144;
        }
        i2 = 1;
        label78:
        if (paramb.h() <= paramInt) {
          break label150;
        }
      }
      label144:
      label150:
      for (paramInt = i3;; paramInt = 0)
      {
        i3 = paramb.k();
        localObject = paramb.c()[i4][(i2 * 2 + (0 + i1) + paramInt * 4 + i3)];
        paramb.m().a().c(((i)localObject).a());
        return (i)localObject;
        i1 = 0;
        break;
        i2 = 0;
        break label78;
      }
    }
    Object localObject = paramb.d();
    paramb.m().a().c(1L);
    return (i)localObject;
  }
  
  public int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return (1 << paramInt2 - paramInt3) + paramInt1 >>> paramInt2;
  }
  
  public int a(b paramb, j paramj, k paramk)
  {
    c localc = b(paramb.a().j());
    localc.c(paramb.a().e());
    if (localc != null)
    {
      localc.a(1);
      localc.a(paramk);
      localc.a(this);
      paramj.a(localc);
    }
    return localc.e();
  }
  
  public a a()
  {
    return h;
  }
  
  public c a(byte[] paramArrayOfByte)
  {
    c = paramArrayOfByte;
    d = 0;
    i.a(paramArrayOfByte);
    h.a(paramArrayOfByte);
    return this;
  }
  
  public final void a(int paramInt)
  {
    g = (0xFFFF & paramInt);
    if (c != null) {
      de.innosystec.unrar.b.b.a(c, d, (short)paramInt);
    }
  }
  
  public void a(b paramb)
  {
    int i6 = b();
    int i3 = b() - 1;
    Object localObject = new j(paramb.r());
    j localj2 = new j(paramb.r());
    j localj1 = new j(paramb.r());
    localj2.c(paramb.q().e());
    while (localj2.e() != h.b())
    {
      localj1.c(localj2.e() - 6);
      j.a(localj2, localj1);
      localj2.d();
    }
    localj1.c(h.b());
    localj1.d(4);
    h.b(4);
    int i4 = h.a() - localj2.b();
    if (paramb.s() != 0) {}
    for (int i1 = 1;; i1 = 0)
    {
      localj2.b(localj2.b() + i1 >>> 1);
      h.a(localj2.b());
      int i5;
      do
      {
        localj2.f();
        i2 = i4 - localj2.b();
        localj2.b(localj2.b() + i1 >>> 1);
        h.b(localj2.b());
        localj1.c(localj2.e() - 6);
        if (localj2.b() > localj1.b())
        {
          ((j)localObject).c(localj2.e());
          k localk = new k();
          localk.a((j)localObject);
          j localj3 = new j(paramb.r());
          j localj4 = new j(paramb.r());
          do
          {
            localj3.c(((j)localObject).e() - 6);
            ((j)localObject).a(localj3);
            ((j)localObject).d();
            localj4.c(((j)localObject).e() - 6);
          } while ((((j)localObject).e() != h.b()) && (localk.b() > localj4.b()));
          ((j)localObject).a(localk);
        }
        i5 = i3 - 1;
        i4 = i2;
        i3 = i5;
      } while (i5 != 0);
      if (localj2.b() != 0) {
        break;
      }
      do
      {
        i3 = i5 + 1;
        localj2.d();
        i5 = i3;
      } while (localj2.b() == 0);
      i1 = i2 + i3;
      a(b() - i3);
      i2 = i1;
      if (b() != 1) {
        break;
      }
      localObject = new k();
      localj1.c(h.b());
      ((k)localObject).a(localj1);
      do
      {
        ((k)localObject).c(((k)localObject).b() >>> 1);
        i2 = i1 >>> 1;
        i1 = i2;
      } while (i2 > 1);
      paramb.a().b(h.b(), i6 + 1 >>> 1);
      i.a((k)localObject);
      paramb.q().c(i.e());
      return;
    }
    h.b(i2 - (i2 >>> 1));
    i1 = i6 + 1 >>> 1;
    int i2 = b() + 1 >>> 1;
    if (i1 != i2) {
      h.a_(paramb.a().a(h.b(), i1, i2));
    }
    paramb.q().c(h.b());
  }
  
  public void a(b paramb, int paramInt)
  {
    paramb.q().c(paramInt);
    paramb.q().d(4);
    h.b(4);
    j localj1 = m.a(paramb.r());
    j localj2 = n.a(paramb.r());
    localj1.c(paramInt);
    localj2.c(paramInt - 6);
    if (localj1.b() > localj2.b())
    {
      j.a(localj1, localj2);
      paramb.q().c(localj2.e());
      if (localj2.b() > 124) {
        a(paramb);
      }
    }
  }
  
  public void a(c paramc)
  {
    b(paramc.e());
  }
  
  public void a(k paramk)
  {
    i.a(paramk);
  }
  
  public final int b()
  {
    if (c != null) {
      g = (de.innosystec.unrar.b.b.b(c, d) & 0xFFFF);
    }
    return g;
  }
  
  public void b(int paramInt)
  {
    j = paramInt;
    if (c != null) {
      de.innosystec.unrar.b.b.c(c, d + 8, paramInt);
    }
  }
  
  public void b(b paramb)
  {
    int i1 = 0;
    j localj = k.a(paramb.r());
    localj.c(i.e());
    paramb.h(paramb.n()[paramb.q().a()]);
    int i2 = localj.b() - 1;
    int i3 = a(paramb, localj);
    int i4 = paramb.l()[i2][i3];
    if (paramb.m().a(14) < i4)
    {
      paramb.q().c(localj.e());
      if (localj.b() < 128) {
        i1 = 1;
      }
      localj.d(i1);
      paramb.m().a().b(0L);
      paramb.m().a().a(i4);
      i1 = a(i4, 7, 2);
      paramb.l()[i2][i3] = (i4 + 128 - i1 & 0xFFFF);
      paramb.d(1);
      paramb.g(1);
      return;
    }
    paramb.m().a().b(i4);
    i1 = i4 - a(i4, 7, 2) & 0xFFFF;
    paramb.l()[i2][i3] = i1;
    paramb.m().a().a(16384L);
    paramb.e(b[(i1 >>> 10)]);
    paramb.c(1);
    paramb.g()[localj.a()] = paramb.f();
    paramb.d(0);
    paramb.q().c(0);
  }
  
  public void b(b paramb, int paramInt)
  {
    j localj = o.a(paramb.r());
    localj.c(paramInt);
    paramb.q().c(paramInt);
    paramb.q().d(4);
    h.b(4);
    if (localj.b() > 124) {
      a(paramb);
    }
    paramb.b(1);
    paramb.f(paramb.e());
  }
  
  public j c()
  {
    return i;
  }
  
  public void c(int paramInt)
  {
    super.c(paramInt);
    i.c(paramInt + 2);
    h.c(paramInt + 2);
  }
  
  public boolean c(b paramb)
  {
    int i4 = 0;
    int i2 = b() - paramb.h();
    i locali = c(paramb, i2);
    e locale = paramb.m();
    Object localObject1 = k.a(paramb.r());
    Object localObject2 = l.a(paramb.r());
    ((j)localObject1).c(h.b() - 6);
    int i3 = 0;
    int i1 = 0;
    for (;;)
    {
      ((j)localObject1).f();
      if (paramb.g()[localObject1.a()] != paramb.f())
      {
        i3 = ((j)localObject1).b() + i3;
        q[i1] = ((j)localObject1).e();
        i2 -= 1;
        if (i2 == 0)
        {
          locale.a().a(i3);
          long l1 = locale.b();
          if (l1 >= locale.a().c()) {
            return false;
          }
          ((j)localObject1).c(q[0]);
          if (l1 < i3)
          {
            i2 = 0;
            i1 = i4;
            for (;;)
            {
              i2 += ((j)localObject1).b();
              if (i2 > l1) {
                break;
              }
              localObject2 = q;
              i1 += 1;
              ((j)localObject1).c(localObject2[i1]);
            }
            locale.a().a(i2);
            locale.a().b(i2 - ((j)localObject1).b());
            locali.b();
            b(paramb, ((j)localObject1).e());
          }
          for (;;)
          {
            return true;
            locale.a().b(i3);
            locale.a().a(locale.a().c());
            i1 = b() - paramb.h();
            i2 = -1;
            do
            {
              localObject1 = q;
              i2 += 1;
              ((j)localObject2).c(localObject1[i2]);
              paramb.g()[localObject2.a()] = paramb.f();
              i3 = i1 - 1;
              i1 = i3;
            } while (i3 != 0);
            locali.d((int)locale.a().c());
            paramb.c(b());
          }
        }
        i1 += 1;
      }
    }
  }
  
  public int d()
  {
    if (c != null) {
      j = de.innosystec.unrar.b.b.c(c, d + 8);
    }
    return j;
  }
  
  public boolean d(b paramb)
  {
    int i1 = 0;
    e locale = paramb.m();
    locale.a().c(h.a());
    j localj = new j(paramb.r());
    localj.c(h.b());
    long l1 = locale.b();
    if (l1 >= locale.a().c()) {
      return false;
    }
    int i2 = localj.b();
    if (l1 < i2)
    {
      locale.a().a(i2);
      if (i2 * 2 > locale.a().c()) {
        i1 = 1;
      }
      paramb.d(i1);
      paramb.g(paramb.j());
      i1 = i2 + 4;
      paramb.q().c(localj.e());
      paramb.q().b(i1);
      h.b(4);
      if (i1 > 124) {
        a(paramb);
      }
      locale.a().b(0L);
      return true;
    }
    if (paramb.q().e() == 0) {
      return false;
    }
    paramb.d(0);
    int i5 = b();
    i1 = i5 - 1;
    int i3;
    int i4;
    do
    {
      i3 = i2 + localj.f().b();
      if (i3 > l1) {
        break;
      }
      i4 = i1 - 1;
      i2 = i3;
      i1 = i4;
    } while (i4 != 0);
    paramb.h(paramb.n()[paramb.q().a()]);
    locale.a().b(i3);
    paramb.g()[localj.a()] = paramb.f();
    paramb.c(i5);
    paramb.q().c(0);
    i1 = i5 - 1;
    do
    {
      paramb.g()[localj.d().a()] = paramb.f();
      i2 = i1 - 1;
      i1 = i2;
    } while (i2 != 0);
    locale.a().a(locale.a().c());
    return true;
    locale.a().b(i3 - localj.b());
    locale.a().a(i3);
    a(paramb, localj.e());
    return true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PPMContext[");
    localStringBuilder.append("\n  pos=");
    localStringBuilder.append(d);
    localStringBuilder.append("\n  size=");
    localStringBuilder.append(a);
    localStringBuilder.append("\n  numStats=");
    localStringBuilder.append(b());
    localStringBuilder.append("\n  Suffix=");
    localStringBuilder.append(d());
    localStringBuilder.append("\n  freqData=");
    localStringBuilder.append(h);
    localStringBuilder.append("\n  oneState=");
    localStringBuilder.append(i);
    localStringBuilder.append("\n]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.ppm.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */