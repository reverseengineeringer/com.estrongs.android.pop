package com.duapps.ad.a;

import com.duapps.ad.base.l;
import com.google.android.gms.ads.formats.h;
import com.google.android.gms.ads.formats.i;
import java.util.List;

class c
  implements i
{
  c(a parama, f paramf) {}
  
  public void a(h paramh)
  {
    if (paramh != null) {
      synchronized (a.a(b))
      {
        l.c("AdmobCacheManager", "AdmobCacheManager get NativeContentAd");
        a.a(new e(paramh));
        a.a(b).add(a);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */