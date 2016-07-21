package com.facebook.ads.internal;

import android.os.Handler;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.adapters.p;
import com.facebook.ads.internal.adapters.q;

class h$8
  implements q
{
  h$8(h paramh, Runnable paramRunnable) {}
  
  public void a(p paramp)
  {
    h.d(b);
    h.e(b).removeCallbacks(a);
    h.b(b, paramp);
    b.a.a();
  }
  
  public void a(p paramp, AdError paramAdError)
  {
    h.d(b);
    h.e(b).removeCallbacks(a);
    h.a(b, paramp);
    h.c(b);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.h.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */