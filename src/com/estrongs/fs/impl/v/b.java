package com.estrongs.fs.impl.v;

import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;

public class b
  extends com.estrongs.fs.impl.i.a
{
  private static b a;
  
  private b()
  {
    super(3);
  }
  
  public static b a()
  {
    if (a == null) {
      a = new b();
    }
    return a;
  }
  
  protected h a(f paramf)
  {
    return new a(paramf);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.v.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */