package com.facebook.ads;

import com.facebook.ads.internal.a;
import com.facebook.ads.internal.adapters.p;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.h;
import com.facebook.ads.internal.util.m;
import java.util.ArrayList;
import java.util.EnumSet;

class NativeAd$1
  extends a
{
  NativeAd$1(NativeAd paramNativeAd, EnumSet paramEnumSet) {}
  
  public void a()
  {
    if (NativeAd.b(b) != null) {
      NativeAd.b(b).c();
    }
  }
  
  public void a(p paramp)
  {
    if (paramp == null) {
      return;
    }
    ArrayList localArrayList = new ArrayList(2);
    if ((a.contains(NativeAd.MediaCacheFlag.ICON)) && (paramp.g() != null)) {
      localArrayList.add(paramp.g().getUrl());
    }
    if ((a.contains(NativeAd.MediaCacheFlag.IMAGE)) && (paramp.h() != null)) {
      localArrayList.add(paramp.h().getUrl());
    }
    m.a(NativeAd.c(b), localArrayList, new NativeAd.1.1(this, paramp));
  }
  
  public void a(b paramb)
  {
    if (NativeAd.a(b) != null) {
      NativeAd.a(b).onError(b, paramb.b());
    }
  }
  
  public void b()
  {
    if (NativeAd.a(b) != null) {
      NativeAd.a(b).onAdClicked(b);
    }
  }
  
  public void c()
  {
    throw new IllegalStateException("Native ads manager their own impressions.");
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */