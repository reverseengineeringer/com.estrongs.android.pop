package com.google.ads;

import com.google.android.gms.ads.g;

@Deprecated
public final class a
{
  public static final a a = new a(-1, -2, "mb");
  public static final a b = new a(320, 50, "mb");
  public static final a c = new a(300, 250, "as");
  public static final a d = new a(468, 60, "as");
  public static final a e = new a(728, 90, "as");
  public static final a f = new a(160, 600, "as");
  private final g g;
  
  private a(int paramInt1, int paramInt2, String paramString)
  {
    this(new g(paramInt1, paramInt2));
  }
  
  public a(g paramg)
  {
    g = paramg;
  }
  
  public int a()
  {
    return g.b();
  }
  
  public int b()
  {
    return g.a();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a)) {
      return false;
    }
    paramObject = (a)paramObject;
    return g.equals(g);
  }
  
  public int hashCode()
  {
    return g.hashCode();
  }
  
  public String toString()
  {
    return g.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.ads.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */