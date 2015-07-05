package com.estrongs.fs.impl.usb.fs.a;

import com.estrongs.fs.impl.usb.fs.b.a;
import java.nio.ByteBuffer;
import java.util.List;

public class h
{
  private f a;
  private String b;
  
  private h() {}
  
  private h(f paramf, String paramString)
  {
    a = paramf;
    b = paramString;
  }
  
  static h a(f paramf, List<f> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramList.size() * 13);
    if (paramList.size() > 0)
    {
      int i = paramList.size() - 1;
      while (i >= 0)
      {
        ((f)paramList.get(i)).a(localStringBuilder);
        i -= 1;
      }
      return new h(paramf, localStringBuilder.toString());
    }
    return new h(paramf, null);
  }
  
  static h a(String paramString, a parama)
  {
    h localh = new h();
    b = paramString;
    a = f.a();
    a.a(parama);
    return localh;
  }
  
  static void a(h paramh1, h paramh2)
  {
    paramh2 = paramh1.i();
    paramh1 = paramh1.i();
    paramh1.a(paramh2.k());
    paramh1.b(paramh2.l());
    paramh1.c(paramh2.m());
  }
  
  int a()
  {
    int i = 1;
    if (b != null)
    {
      int k = b.length();
      int j = 1 + k / 13;
      i = j;
      if (k % 13 != 0) {
        i = j + 1;
      }
    }
    return i;
  }
  
  void a(long paramLong)
  {
    a.e(paramLong);
  }
  
  void a(ByteBuffer paramByteBuffer)
  {
    if (b != null)
    {
      byte b1 = a.n().b();
      int i = a() - 2;
      f.a(b, i * 13, b1, i + 1, true).b(paramByteBuffer);
      for (;;)
      {
        int j = i - 1;
        if (i <= 0) {
          break;
        }
        f.a(b, j * 13, b1, j + 1, false).b(paramByteBuffer);
        i = j;
      }
    }
    a.b(paramByteBuffer);
  }
  
  String b()
  {
    if (b != null) {
      return b;
    }
    return a.n().a();
  }
  
  void b(long paramLong)
  {
    a.d(paramLong);
  }
  
  void b(String paramString, a parama)
  {
    b = paramString;
    a.a(parama);
  }
  
  long c()
  {
    return a.q();
  }
  
  long d()
  {
    return a.p();
  }
  
  void e()
  {
    a.b(System.currentTimeMillis());
  }
  
  void f()
  {
    a.c(System.currentTimeMillis());
  }
  
  boolean g()
  {
    return a.c();
  }
  
  void h()
  {
    a.d();
  }
  
  f i()
  {
    return a;
  }
  
  long j()
  {
    return a.m();
  }
  
  long k()
  {
    return a.k();
  }
  
  boolean l()
  {
    return a.h();
  }
  
  boolean m()
  {
    return a.g();
  }
  
  public String toString()
  {
    return "[FatLfnDirectoryEntry getName()=" + b() + "]";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */