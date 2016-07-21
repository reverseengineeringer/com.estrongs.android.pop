package com.facebook.ads.internal;

import android.os.Handler;
import com.facebook.ads.internal.util.g;

class i$1
  implements Runnable
{
  i$1(i parami) {}
  
  public void run()
  {
    if (g.a(i.a(a)))
    {
      a.a();
      return;
    }
    i.c(a).postDelayed(i.b(a), 5000L);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.i.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */