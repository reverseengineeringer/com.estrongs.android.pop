package com.duapps.ad.a;

import com.duapps.ad.base.l;
import com.google.android.gms.ads.formats.g;
import java.util.List;

class b
  implements g
{
  b(a parama, f paramf) {}
  
  public void a(com.google.android.gms.ads.formats.f paramf)
  {
    if (paramf != null) {
      synchronized (a.a(b))
      {
        l.c("AdmobCacheManager", "AdmobCacheManager get NativeAppInstallAd");
        a.a(new e(paramf));
        a.a(b).add(a);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */