package org.mozilla.a.a;

public abstract class u
{
  z[] b;
  l[] c;
  k d = new k();
  byte[] e = new byte[16];
  int[] f = new int[16];
  int g;
  int h;
  boolean i;
  boolean j;
  boolean k;
  
  public u()
  {
    a(0);
    a();
  }
  
  public u(int paramInt)
  {
    a(paramInt);
    a();
  }
  
  public void a()
  {
    j = k;
    i = false;
    g = h;
    int m = 0;
    while (m < g)
    {
      e[m] = 0;
      f[m] = m;
      m += 1;
    }
    d.a();
  }
  
  protected void a(int paramInt)
  {
    boolean bool = false;
    if ((paramInt >= 0) && (paramInt < 6))
    {
      b = null;
      c = null;
      if (paramInt != 4) {
        break label186;
      }
      b = new z[] { new y(), new f(), new r(), new m(), new g(), new w(), new x() };
      c = new l[] { null, new a(), null, new d(), null, null, null };
    }
    for (;;)
    {
      if (c != null) {
        bool = true;
      }
      k = bool;
      h = b.length;
      return;
      paramInt = 0;
      break;
      label186:
      if (paramInt == 5)
      {
        b = new z[] { new y(), new j(), new t(), new g(), new w(), new x() };
      }
      else if (paramInt == 3)
      {
        b = new z[] { new y(), new o(), new n(), new r(), new p(), new g(), new w(), new x() };
      }
      else if (paramInt == 1)
      {
        b = new z[] { new y(), new v(), new i(), new s(), new g(), new w(), new x() };
      }
      else if (paramInt == 2)
      {
        b = new z[] { new y(), new o(), new n(), new f(), new r(), new p(), new m(), new g(), new w(), new x() };
        c = new l[] { null, new e(), null, new a(), null, null, new d(), null, null, null };
      }
      else if (paramInt == 0)
      {
        b = new z[] { new y(), new v(), new i(), new s(), new j(), new t(), new f(), new m(), new o(), new n(), new r(), new p(), new g(), new w(), new x() };
        c = new l[] { null, null, new b(), null, new c(), null, new a(), new d(), new e(), null, null, null, null, null, null };
      }
    }
  }
  
  public abstract void a(String paramString);
  
  public boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    int i1 = 0;
    while (i1 < paramInt)
    {
      byte b1 = paramArrayOfByte[i1];
      int n = 0;
      while (n < g)
      {
        int m = z.a(b[f[n]], b1, e[n]);
        if (m == 2)
        {
          a(b[f[n]].d());
          i = true;
          return i;
        }
        if (m == 1)
        {
          g -= 1;
          if (n < g)
          {
            f[n] = f[g];
            e[n] = e[g];
          }
        }
        else
        {
          e[n] = m;
          n += 1;
        }
      }
      if (g <= 1)
      {
        if (1 == g) {
          a(b[f[0]].d());
        }
        i = true;
        return i;
      }
      int i4 = 0;
      int i2 = 0;
      n = 0;
      while (n < g)
      {
        int i5 = i4;
        int i3 = i2;
        if (!b[f[n]].e())
        {
          i5 = i4;
          i3 = i2;
          if (!b[f[n]].e())
          {
            i3 = i2 + 1;
            i5 = n;
          }
        }
        n += 1;
        i4 = i5;
        i2 = i3;
      }
      if (1 == i2)
      {
        a(b[f[i4]].d());
        i = true;
        return i;
      }
      i1 += 1;
    }
    if (j) {
      b(paramArrayOfByte, paramInt);
    }
    return i;
  }
  
  public void b()
  {
    if (i == true) {}
    for (;;)
    {
      return;
      if (g == 2)
      {
        if (!b[f[0]].d().equals("GB18030")) {
          break label77;
        }
        a(b[f[1]].d());
        i = true;
      }
      while (j)
      {
        b(null, 0, true);
        return;
        label77:
        if (b[f[1]].d().equals("GB18030"))
        {
          a(b[f[0]].d());
          i = true;
        }
      }
    }
  }
  
  public void b(byte[] paramArrayOfByte, int paramInt)
  {
    b(paramArrayOfByte, paramInt, false);
  }
  
  public void b(byte[] paramArrayOfByte, int paramInt, boolean paramBoolean)
  {
    int i4 = 0;
    int i2 = 0;
    int m = 0;
    int i1;
    int i3;
    for (int n = 0; m < g; n = i3)
    {
      i1 = i2;
      if (c[f[m]] != null) {
        i1 = i2 + 1;
      }
      i3 = n;
      if (!b[f[m]].e())
      {
        i3 = n;
        if (!b[f[m]].d().equals("GB18030")) {
          i3 = n + 1;
        }
      }
      m += 1;
      i2 = i1;
    }
    boolean bool;
    float f1;
    label203:
    float f2;
    if (i2 > 1)
    {
      bool = true;
      j = bool;
      if (!j) {
        break label412;
      }
      j = d.a(paramArrayOfByte, paramInt);
      if (((!paramBoolean) || (!d.c())) && ((!d.b()) || (i2 != n))) {
        break label412;
      }
      d.d();
      n = -1;
      f1 = 0.0F;
      paramInt = 0;
      i1 = i4;
      if (paramInt >= g) {
        break label383;
      }
      f2 = f1;
      m = i1;
      i2 = n;
      if (c[f[paramInt]] != null)
      {
        f2 = f1;
        m = i1;
        i2 = n;
        if (!b[f[paramInt]].d().equals("Big5"))
        {
          f2 = d.a(c[f[paramInt]].a(), c[f[paramInt]].b(), c[f[paramInt]].c(), c[f[paramInt]].d());
          m = i1 + 1;
          if ((i1 != 0) && (f1 <= f2)) {
            break label413;
          }
        }
      }
    }
    for (i2 = paramInt;; i2 = n)
    {
      paramInt += 1;
      f1 = f2;
      i1 = m;
      n = i2;
      break label203;
      bool = false;
      break;
      label383:
      if (n >= 0)
      {
        a(b[f[n]].d());
        i = true;
      }
      label412:
      return;
      label413:
      f2 = f1;
    }
  }
  
  public String[] c()
  {
    int m = 0;
    if (g <= 0) {
      return new String[] { "nomatch" };
    }
    String[] arrayOfString = new String[g];
    while (m < g)
    {
      arrayOfString[m] = b[f[m]].d();
      m += 1;
    }
    return arrayOfString;
  }
}

/* Location:
 * Qualified Name:     org.mozilla.a.a.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */