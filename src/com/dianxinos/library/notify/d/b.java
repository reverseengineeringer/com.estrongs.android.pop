package com.dianxinos.library.notify.d;

import com.dianxinos.library.notify.network.n;

public class b
{
  private static b a;
  private n b = n.a();
  
  public static b a()
  {
    try
    {
      if (a == null) {
        a = new b();
      }
      b localb = a;
      return localb;
    }
    finally {}
  }
  
  public void a(d paramd)
  {
    b.a(e.a(), new c(this, paramd));
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */