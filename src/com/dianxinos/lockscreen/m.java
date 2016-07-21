package com.dianxinos.lockscreen;

import android.util.Log;
import com.dianxinos.lockscreen.ad.extra.BaseCardView;
import com.dianxinos.lockscreen.ad.extra.e;
import com.duapps.ad.b;

class m
  implements e
{
  m(j paramj) {}
  
  public void a(BaseCardView paramBaseCardView)
  {
    if (j.c()) {
      Log.i("LockScreen_", "FloatAd Success!");
    }
    j.a(a, Boolean.valueOf(true));
    j.a(a, paramBaseCardView);
    if ((j.f(a) != null) && (j.g(a) > 0L)) {
      x.a(j.b(a), System.currentTimeMillis() - j.g(a));
    }
  }
  
  public void a(b paramb)
  {
    j.a(a, Boolean.valueOf(true));
    if (paramb == null) {}
    for (int i = -1;; i = paramb.a())
    {
      if (j.c()) {
        Log.i("LockScreen_", "FloatAd Fail! ErrorCode = " + i);
      }
      if (j.h(a) != null) {
        x.a(j.b(a), i);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */