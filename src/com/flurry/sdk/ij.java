package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public class ij
  extends kr
{
  private static final String c = ij.class.getName();
  public ArrayList<ik> a;
  public in b;
  private final int d = 1000;
  private final int e = 30000;
  private final long f;
  private final int g;
  private final int h;
  private final iq i;
  private final Map<String, String> j;
  private long k;
  private int l;
  private int m;
  private String n;
  private String o;
  private boolean p;
  
  public ij(String paramString1, long paramLong1, String paramString2, long paramLong2, int paramInt1, int paramInt2, iq paramiq, Map<String, String> paramMap, int paramInt3, int paramInt4, String paramString3)
  {
    a(paramString2);
    a(paramLong2);
    a_();
    o = paramString1;
    f = paramLong1;
    c(paramInt1);
    g = paramInt1;
    h = paramInt2;
    i = paramiq;
    j = paramMap;
    l = paramInt3;
    m = paramInt4;
    n = paramString3;
    k = 30000L;
    a = new ArrayList();
  }
  
  public void a(ik paramik)
  {
    a.add(paramik);
  }
  
  public void a(in paramin)
  {
    b = paramin;
  }
  
  public void a(boolean paramBoolean)
  {
    p = paramBoolean;
  }
  
  public boolean a(int paramInt)
  {
    return paramInt > h;
  }
  
  public void a_()
  {
    super.a_();
    if (super.r() != 1) {
      k *= 3L;
    }
  }
  
  public void b()
  {
    try
    {
      b.g();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean c()
  {
    return r() >= g;
  }
  
  public long e()
  {
    return f;
  }
  
  public iq f()
  {
    return i;
  }
  
  public long g()
  {
    return k;
  }
  
  public Map<String, String> h()
  {
    return j;
  }
  
  public String i()
  {
    return o;
  }
  
  public int j()
  {
    return l;
  }
  
  public int k()
  {
    return m;
  }
  
  public String l()
  {
    return n;
  }
  
  public String m()
  {
    return b.c();
  }
  
  public boolean n()
  {
    return p;
  }
  
  public void o()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      nextl = this;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */