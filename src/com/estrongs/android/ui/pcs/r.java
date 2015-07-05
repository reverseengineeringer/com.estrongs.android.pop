package com.estrongs.android.ui.pcs;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class r
{
  private static r a;
  private int b = 0;
  private String c;
  private String d;
  private j e;
  private boolean f = false;
  private n g;
  private List<s> h = new ArrayList();
  
  public static r a()
  {
    if (a == null) {
      a = new r();
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
        ((s)localIterator.next()).a(b);
      }
    }
  }
  
  public void a(j paramj)
  {
    e = paramj;
  }
  
  public void a(n paramn)
  {
    g = paramn;
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
  
  public n i()
  {
    return g;
  }
  
  public j j()
  {
    return e;
  }
  
  public void k()
  {
    h.clear();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */