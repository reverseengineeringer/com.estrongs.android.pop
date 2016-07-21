package com.duapps.ad.a;

import com.duapps.ad.base.l;
import com.duapps.ad.stats.u;

class d
  implements g
{
  d(a parama, int paramInt) {}
  
  public void a()
  {
    u.b(a.b(b), a.c(b));
    if (a.d(b) != null) {
      a.e(b).a();
    }
  }
  
  public void a(int paramInt)
  {
    a.a(b, a, paramInt);
    l.c("AdmobCacheManager", "load Admob ad fail errorCode==" + paramInt);
  }
  
  public void b()
  {
    a.a(b, a, 200);
    l.c("AdmobCacheManager", "load Admob ad success");
  }
  
  public void c() {}
  
  public void d() {}
}

/* Location:
 * Qualified Name:     com.duapps.ad.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */