package com.facebook.ads.internal.adapters;

import android.os.Handler;
import com.facebook.ads.internal.util.g;

class e$1
  implements Runnable
{
  e$1(e parame) {}
  
  public void run()
  {
    if (e.a(a)) {
      return;
    }
    if (g.a(e.b(a), e.c(a), e.d(a)))
    {
      e.e(a).a();
      e.a(a, true);
      return;
    }
    e.e(a).b();
    e.h(a).postDelayed(e.f(a), e.g(a));
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.e.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */