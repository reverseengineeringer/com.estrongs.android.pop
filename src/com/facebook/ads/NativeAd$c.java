package com.facebook.ads;

import com.facebook.ads.internal.adapters.c;

class NativeAd$c
  extends c
{
  private NativeAd$c(NativeAd paramNativeAd) {}
  
  public boolean a()
  {
    return false;
  }
  
  public void d()
  {
    if (NativeAd.l(a) != null) {
      NativeAd.l(a).onLoggingImpression(a);
    }
    if (((NativeAd.a(a) instanceof ImpressionListener)) && (NativeAd.a(a) != NativeAd.l(a))) {
      ((ImpressionListener)NativeAd.a(a)).onLoggingImpression(a);
    }
  }
  
  public void e() {}
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAd.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */