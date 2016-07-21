package com.estrongs.fs.impl.a;

import com.estrongs.fs.h;
import com.estrongs.fs.impl.i.a;
import com.estrongs.fs.impl.local.f;

public class c
  extends a
{
  private static c a;
  
  private c()
  {
    super(6);
  }
  
  public static c a()
  {
    if (a == null) {
      a = new c();
    }
    return a;
  }
  
  protected h a(f paramf)
  {
    return new b(paramf);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */