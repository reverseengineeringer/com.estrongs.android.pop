package com.duapps.ad;

import android.os.Handler;

class g
  implements d
{
  g(f paramf) {}
  
  public void a()
  {
    if (f.a(a) != null) {
      f.a(a).a(a);
    }
  }
  
  public void a(b paramb)
  {
    if (f.a(a) != null)
    {
      if ("main".equals(Thread.currentThread().getName())) {
        f.a(a).a(a, paramb);
      }
    }
    else {
      return;
    }
    f.b(a).post(new i(this, paramb));
  }
  
  public void a(c paramc)
  {
    f.a(a, paramc);
    if (f.a(a) != null)
    {
      if ("main".equals(Thread.currentThread().getName())) {
        f.a(a).b(a);
      }
    }
    else {
      return;
    }
    f.b(a).post(new h(this));
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */