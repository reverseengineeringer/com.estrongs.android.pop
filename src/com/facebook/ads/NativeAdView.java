package com.facebook.ads;

import android.content.Context;
import android.view.View;
import com.facebook.ads.internal.view.b;

public class NativeAdView
{
  public static View render(Context paramContext, NativeAd paramNativeAd, NativeAdView.Type paramType)
  {
    return render(paramContext, paramNativeAd, paramType, null);
  }
  
  public static View render(Context paramContext, NativeAd paramNativeAd, NativeAdView.Type paramType, NativeAdViewAttributes paramNativeAdViewAttributes)
  {
    NativeAdViewAttributes localNativeAdViewAttributes = paramNativeAdViewAttributes;
    if (paramNativeAdViewAttributes == null) {
      localNativeAdViewAttributes = new NativeAdViewAttributes();
    }
    paramNativeAd.a(paramType);
    return new b(paramContext, paramNativeAd, paramType, localNativeAdViewAttributes);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */