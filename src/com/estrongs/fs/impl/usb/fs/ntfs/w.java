package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.fs.impl.usb.fs.ntfs.b.c;

public class w
  implements i
{
  private l a;
  private String b;
  private c c;
  private n d;
  private final y e;
  
  public w(y paramy, c paramc)
  {
    e = paramy;
    c = paramc;
    b = Long.toString(paramc.h());
  }
  
  public h a()
  {
    if (d())
    {
      if (a == null) {
        if (d == null) {
          break label48;
        }
      }
      label48:
      for (a = new v(e, d);; a = new v(e, f().r().c().a(c))) {
        return (h)a;
      }
    }
    return null;
  }
  
  public String b()
  {
    if (c != null) {
      return c.g();
    }
    if (d != null) {
      return d.i();
    }
    return null;
  }
  
  public boolean c()
  {
    if (c != null) {
      if (c.f()) {}
    }
    while (!d.c())
    {
      return true;
      return false;
    }
    return false;
  }
  
  public boolean d()
  {
    if (c != null) {
      return c.f();
    }
    return d.c();
  }
  
  public j e()
  {
    if (c())
    {
      if (a == null) {
        if (c == null) {
          break label48;
        }
      }
      label48:
      for (a = new x(e, c);; a = new x(e, d)) {
        return (j)a;
      }
    }
    return null;
  }
  
  public n f()
  {
    if (d != null) {
      return d;
    }
    return c.k().r().c().a(c);
  }
  
  public String toString()
  {
    if (c == null) {}
    for (Object localObject = d;; localObject = c) {
      return super.toString() + '(' + localObject + ')';
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */