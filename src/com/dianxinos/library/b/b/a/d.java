package com.dianxinos.library.b.b.a;

import com.dianxinos.library.b.b.d.p;
import java.util.LinkedList;

public class d
{
  private static final LinkedList<d> f = new LinkedList();
  public String a;
  public Object b;
  public p<?> c;
  public String d;
  public byte[] e;
  private boolean g = false;
  
  public static d a()
  {
    d locald = null;
    synchronized (f)
    {
      if (!f.isEmpty())
      {
        locald = (d)f.getFirst();
        f.removeFirst();
      }
      ??? = locald;
      if (locald == null) {
        ??? = new d();
      }
      g = false;
      return (d)???;
    }
  }
  
  public void b()
  {
    if (!g)
    {
      g = true;
      a = null;
      b = null;
      c = null;
      d = null;
      e = null;
      synchronized (f)
      {
        if (f.size() < 256) {
          f.add(this);
        }
        return;
      }
    }
  }
  
  protected void finalize()
  {
    b();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */