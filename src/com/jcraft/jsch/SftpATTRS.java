package com.jcraft.jsch;

import java.util.Date;

public class SftpATTRS
{
  int a = 0;
  long b;
  int c;
  int d;
  int e;
  int f;
  int g;
  String[] h = null;
  
  static SftpATTRS a(Buffer paramBuffer)
  {
    SftpATTRS localSftpATTRS = new SftpATTRS();
    a = paramBuffer.d();
    if ((a & 0x1) != 0) {
      b = paramBuffer.c();
    }
    if ((a & 0x2) != 0)
    {
      c = paramBuffer.d();
      d = paramBuffer.d();
    }
    if ((a & 0x4) != 0) {
      e = paramBuffer.d();
    }
    if ((a & 0x8) != 0) {
      f = paramBuffer.d();
    }
    if ((a & 0x8) != 0) {
      g = paramBuffer.d();
    }
    int j;
    int i;
    if ((a & 0x80000000) != 0)
    {
      j = paramBuffer.d();
      if (j > 0)
      {
        h = new String[j * 2];
        i = 0;
      }
    }
    for (;;)
    {
      if (i >= j) {
        return localSftpATTRS;
      }
      h[(i * 2)] = Util.b(paramBuffer.j());
      h[(i * 2 + 1)] = Util.b(paramBuffer.j());
      i += 1;
    }
  }
  
  private boolean b(int paramInt)
  {
    return ((a & 0x4) != 0) && ((e & 0xF000) == paramInt);
  }
  
  public String a()
  {
    StringBuffer localStringBuffer = new StringBuffer(10);
    if (d())
    {
      localStringBuffer.append('d');
      if ((e & 0x100) == 0) {
        break label210;
      }
      localStringBuffer.append('r');
      label42:
      if ((e & 0x80) == 0) {
        break label220;
      }
      localStringBuffer.append('w');
      label60:
      if ((e & 0x800) == 0) {
        break label230;
      }
      localStringBuffer.append('s');
      label78:
      if ((e & 0x20) == 0) {
        break label260;
      }
      localStringBuffer.append('r');
      label95:
      if ((e & 0x10) == 0) {
        break label270;
      }
      localStringBuffer.append('w');
      label112:
      if ((e & 0x400) == 0) {
        break label280;
      }
      localStringBuffer.append('s');
      label130:
      if ((e & 0x4) == 0) {
        break label310;
      }
      localStringBuffer.append('r');
      label146:
      if ((e & 0x2) == 0) {
        break label320;
      }
      localStringBuffer.append('w');
      label162:
      if ((e & 0x1) == 0) {
        break label330;
      }
      localStringBuffer.append('x');
    }
    for (;;)
    {
      return localStringBuffer.toString();
      if (e())
      {
        localStringBuffer.append('l');
        break;
      }
      localStringBuffer.append('-');
      break;
      label210:
      localStringBuffer.append('-');
      break label42;
      label220:
      localStringBuffer.append('-');
      break label60;
      label230:
      if ((e & 0x40) != 0)
      {
        localStringBuffer.append('x');
        break label78;
      }
      localStringBuffer.append('-');
      break label78;
      label260:
      localStringBuffer.append('-');
      break label95;
      label270:
      localStringBuffer.append('-');
      break label112;
      label280:
      if ((e & 0x8) != 0)
      {
        localStringBuffer.append('x');
        break label130;
      }
      localStringBuffer.append('-');
      break label130;
      label310:
      localStringBuffer.append('-');
      break label146;
      label320:
      localStringBuffer.append('-');
      break label162;
      label330:
      localStringBuffer.append('-');
    }
  }
  
  void a(int paramInt)
  {
    a = paramInt;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a |= 0x8;
    f = paramInt1;
    g = paramInt2;
  }
  
  public String b()
  {
    return new Date(g * 1000L).toString();
  }
  
  void b(Buffer paramBuffer)
  {
    paramBuffer.a(a);
    if ((a & 0x1) != 0) {
      paramBuffer.a(b);
    }
    if ((a & 0x2) != 0)
    {
      paramBuffer.a(c);
      paramBuffer.a(d);
    }
    if ((a & 0x4) != 0) {
      paramBuffer.a(e);
    }
    if ((a & 0x8) != 0) {
      paramBuffer.a(f);
    }
    if ((a & 0x8) != 0) {
      paramBuffer.a(g);
    }
    int j;
    int i;
    if ((a & 0x80000000) != 0)
    {
      j = h.length / 2;
      if (j > 0) {
        i = 0;
      }
    }
    for (;;)
    {
      if (i >= j) {
        return;
      }
      paramBuffer.b(Util.b(h[(i * 2)]));
      paramBuffer.b(Util.b(h[(i * 2 + 1)]));
      i += 1;
    }
  }
  
  int c()
  {
    int j = 4;
    if ((a & 0x1) != 0) {
      j = 12;
    }
    int i = j;
    if ((a & 0x2) != 0) {
      i = j + 8;
    }
    j = i;
    if ((a & 0x4) != 0) {
      j = i + 4;
    }
    int k = j;
    if ((a & 0x8) != 0) {
      k = j + 8;
    }
    i = k;
    int m;
    if ((a & 0x80000000) != 0)
    {
      k += 4;
      m = h.length / 2;
      i = k;
      if (m > 0) {
        j = 0;
      }
    }
    int n;
    for (i = k;; i = n + (i + 4 + k + 4))
    {
      if (j >= m) {
        return i;
      }
      k = h[(j * 2)].length();
      n = h[(j * 2 + 1)].length();
      j += 1;
    }
  }
  
  public boolean d()
  {
    return b(16384);
  }
  
  public boolean e()
  {
    return b(40960);
  }
  
  public int f()
  {
    return a;
  }
  
  public long g()
  {
    return b;
  }
  
  public int h()
  {
    return c;
  }
  
  public int i()
  {
    return d;
  }
  
  public int j()
  {
    return e;
  }
  
  public int k()
  {
    return f;
  }
  
  public int l()
  {
    return g;
  }
  
  public String toString()
  {
    return a() + " " + h() + " " + i() + " " + g() + " " + b();
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.SftpATTRS
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */