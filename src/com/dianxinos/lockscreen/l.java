package com.dianxinos.lockscreen;

import android.widget.TextView;
import com.dianxinos.lockscreen.ad.AdvertDataMgr;
import com.dianxinos.lockscreen.ui.LockScreenDrawerView;
import com.nineoldandroids.b.a;

class l
  implements com.dianxinos.lockscreen.ui.j
{
  l(j paramj) {}
  
  public void a() {}
  
  public void a(float paramFloat)
  {
    if (paramFloat > 0.0F)
    {
      j.d(a).setVisibility(8);
      j.e(a).setVisibility(0);
      a.a(j.e(a), paramFloat);
      return;
    }
    j.d(a).setVisibility(0);
    j.e(a).setVisibility(8);
    a.a(j.d(a), -paramFloat);
  }
  
  public void b()
  {
    j.a(a, false);
    AdvertDataMgr.a(j.b(a)).b(System.currentTimeMillis());
    x.a(j.b(a), j.c(a).a());
  }
  
  public void c() {}
  
  public void d()
  {
    j.a(a, "opsld");
  }
  
  public void e()
  {
    j.d(a).setVisibility(8);
    j.e(a).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */