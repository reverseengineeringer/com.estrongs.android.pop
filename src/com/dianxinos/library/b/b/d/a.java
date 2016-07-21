package com.dianxinos.library.b.b.d;

public abstract class a
  implements com.dianxinos.library.b.b.a
{
  public static final Object a = new Object();
  static final p<?> b = new b();
  static final p<?> c = new g();
  static final o<?> d = new h();
  static final p<?> e = new i();
  static final o<?> f = new j();
  static final p<?> g = new k();
  static final o<?> h = new l();
  static final p<?> i = new m();
  static final o<?> j = new n();
  static final p<?> k = new c();
  static final o<?> l = new d();
  static final p<?> m = new e();
  static final o<?> n = new f();
  
  protected abstract <T> T a(String paramString, T paramT, o<?> paramo);
  
  public boolean a(String paramString)
  {
    return a(paramString, a, b);
  }
  
  public boolean a(String paramString, int paramInt)
  {
    return a(paramString, Integer.valueOf(paramInt), c);
  }
  
  public boolean a(String paramString, long paramLong)
  {
    return a(paramString, Long.valueOf(paramLong), e);
  }
  
  protected abstract <T> boolean a(String paramString, T paramT, p<?> paramp);
  
  public boolean a(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, i);
  }
  
  public int b(String paramString, int paramInt)
  {
    return ((Integer)a(paramString, Integer.valueOf(paramInt), d)).intValue();
  }
  
  public long b(String paramString, long paramLong)
  {
    return ((Long)a(paramString, Long.valueOf(paramLong), f)).longValue();
  }
  
  public String b(String paramString1, String paramString2)
  {
    return (String)a(paramString1, paramString2, j);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */