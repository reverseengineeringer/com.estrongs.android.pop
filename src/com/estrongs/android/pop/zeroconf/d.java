package com.estrongs.android.pop.zeroconf;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public abstract class d
{
  boolean a;
  protected final List<g> b;
  protected final List<n> c;
  protected final List<n> d;
  protected final List<n> e;
  private int f;
  private int g;
  
  protected d(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    g = paramInt1;
    f = paramInt2;
    a = paramBoolean;
    b = Collections.synchronizedList(new LinkedList());
    c = Collections.synchronizedList(new LinkedList());
    d = Collections.synchronizedList(new LinkedList());
    e = Collections.synchronizedList(new LinkedList());
  }
  
  public int a()
  {
    if (a) {
      return 0;
    }
    return f;
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  public int b()
  {
    return g;
  }
  
  public void b(int paramInt)
  {
    g = paramInt;
  }
  
  public boolean c()
  {
    return a;
  }
  
  public Collection<? extends g> d()
  {
    return b;
  }
  
  public int e()
  {
    return d().size();
  }
  
  public Collection<? extends n> f()
  {
    ArrayList localArrayList = new ArrayList(c.size() + d.size() + e.size());
    localArrayList.addAll(c);
    localArrayList.addAll(d);
    localArrayList.addAll(e);
    return localArrayList;
  }
  
  public Collection<? extends n> g()
  {
    return c;
  }
  
  public int h()
  {
    return g().size();
  }
  
  public Collection<? extends n> i()
  {
    return d;
  }
  
  public int j()
  {
    return i().size();
  }
  
  public Collection<? extends n> k()
  {
    return e;
  }
  
  public int l()
  {
    return k().size();
  }
  
  public boolean m()
  {
    return (g & 0x8000) == 0;
  }
  
  public boolean n()
  {
    return (g & 0x8000) == 32768;
  }
  
  public boolean o()
  {
    return e() + h() + j() + l() == 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */