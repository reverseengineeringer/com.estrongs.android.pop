package com.estrongs.android.ui.pcs;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class u
{
  private static u a;
  private int b = 0;
  private String c;
  private String d;
  private l e;
  private boolean f = false;
  private q g;
  private List<v> h = new ArrayList();
  
  public static u a()
  {
    if (a == null) {
      a = new u();
    }
    return a;
  }
  
  public void a(int paramInt)
  {
    int i = b;
    b = paramInt;
    if (paramInt == 2) {
      f = false;
    }
    if ((i != b) && (!h.isEmpty()))
    {
      Iterator localIterator = h.iterator();
      while (localIterator.hasNext()) {
        ((v)localIterator.next()).a(b);
      }
    }
  }
  
  public void a(l paraml)
  {
    e = paraml;
  }
  
  public void a(q paramq)
  {
    g = paramq;
  }
  
  public void a(String paramString)
  {
    d = c;
    c = paramString;
  }
  
  public boolean b()
  {
    return b > 0;
  }
  
  public boolean c()
  {
    return b == 2;
  }
  
  public int d()
  {
    return b;
  }
  
  public String e()
  {
    return c;
  }
  
  public String f()
  {
    return d;
  }
  
  public String g()
  {
    if (c != null) {
      return "pcs://" + e() + "@pcs";
    }
    return null;
  }
  
  public String h()
  {
    if (d != null) {
      return "pcs://" + f() + "@pcs";
    }
    return null;
  }
  
  public q i()
  {
    return g;
  }
  
  public l j()
  {
    return e;
  }
  
  public void k()
  {
    h.clear();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */