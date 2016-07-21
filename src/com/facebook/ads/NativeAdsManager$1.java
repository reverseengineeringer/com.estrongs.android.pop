package com.facebook.ads;

import com.facebook.ads.internal.adapters.p;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.i.a;
import com.facebook.ads.internal.util.m;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

class NativeAdsManager$1
  implements i.a
{
  NativeAdsManager$1(NativeAdsManager paramNativeAdsManager, EnumSet paramEnumSet) {}
  
  public void a(b paramb)
  {
    if (NativeAdsManager.c(b) != null) {
      NativeAdsManager.c(b).onAdError(paramb.b());
    }
  }
  
  public void a(List<p> paramList)
  {
    int i = 0;
    NativeAd[] arrayOfNativeAd = new NativeAd[paramList.size()];
    while (i < paramList.size())
    {
      p localp = (p)paramList.get(i);
      ArrayList localArrayList = new ArrayList(2);
      if ((a.contains(NativeAd.MediaCacheFlag.ICON)) && (localp.g() != null)) {
        localArrayList.add(localp.g().getUrl());
      }
      if ((a.contains(NativeAd.MediaCacheFlag.IMAGE)) && (localp.h() != null)) {
        localArrayList.add(localp.h().getUrl());
      }
      m.a(NativeAdsManager.a(b), localArrayList, new NativeAdsManager.1.1(this, arrayOfNativeAd, i, paramList, new int[] { 0 }));
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAdsManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */