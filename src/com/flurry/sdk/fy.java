package com.flurry.sdk;

public class fy
{
  private int a;
  private int b;
  private jx<fs, String> c;
  private jx<ft, String> d;
  private fz e;
  
  public static fy a(fy paramfy1, fy paramfy2)
  {
    if ((paramfy1 == null) || (paramfy2 == null)) {
      return null;
    }
    jx localjx1 = new jx();
    jx localjx2 = paramfy1.c();
    if (localjx2 != null) {
      localjx1.a(localjx2);
    }
    localjx2 = paramfy2.c();
    if (localjx2 != null) {
      localjx1.a(localjx2);
    }
    localjx2 = new jx();
    paramfy1 = paramfy1.d();
    if (paramfy1 != null) {
      localjx2.a(paramfy1);
    }
    paramfy1 = paramfy2.d();
    if (paramfy1 != null) {
      localjx2.a(paramfy1);
    }
    paramfy1 = new fy.a();
    paramfy1.a(paramfy2.a());
    paramfy1.b(paramfy2.b());
    paramfy1.a(localjx1);
    paramfy1.b(localjx2);
    paramfy1.a(paramfy2.e());
    return paramfy1.a();
  }
  
  public int a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
  
  public jx<fs, String> c()
  {
    return c;
  }
  
  public jx<ft, String> d()
  {
    return d;
  }
  
  public fz e()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */