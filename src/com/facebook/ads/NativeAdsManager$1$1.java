package com.facebook.ads;

import com.facebook.ads.internal.adapters.p;
import com.facebook.ads.internal.util.l;
import java.util.List;

class NativeAdsManager$1$1
  implements l
{
  NativeAdsManager$1$1(NativeAdsManager.1 param1, NativeAd[] paramArrayOfNativeAd, int paramInt, List paramList, int[] paramArrayOfInt) {}
  
  public void a()
  {
    a[b] = new NativeAd(NativeAdsManager.a(e.b), (p)c.get(b), null);
    Object localObject1 = d;
    localObject1[0] += 1;
    if (d[0] == c.size())
    {
      NativeAdsManager.a(e.b, true);
      NativeAdsManager.b(e.b).clear();
      NativeAdsManager.a(e.b, 0);
      localObject1 = a;
      int j = localObject1.length;
      int i = 0;
      while (i < j)
      {
        Object localObject2 = localObject1[i];
        if (localObject2 != null) {
          NativeAdsManager.b(e.b).add(localObject2);
        }
        i += 1;
      }
      if (NativeAdsManager.c(e.b) != null) {
        NativeAdsManager.c(e.b).onAdsLoaded();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAdsManager.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */