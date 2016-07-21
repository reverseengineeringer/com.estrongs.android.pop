package com.facebook.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.LinearLayout;

public class NativeAdScrollView
  extends LinearLayout
{
  public static final int DEFAULT_INSET = 20;
  public static final int DEFAULT_MAX_ADS = 5;
  private final Context a;
  private final NativeAdsManager b;
  private final NativeAdScrollView.AdViewProvider c;
  private final NativeAdView.Type d;
  private final int e;
  private final NativeAdScrollView.a f;
  private final NativeAdScrollView.b g;
  private final NativeAdViewAttributes h;
  
  public NativeAdScrollView(Context paramContext, NativeAdsManager paramNativeAdsManager, NativeAdScrollView.AdViewProvider paramAdViewProvider)
  {
    this(paramContext, paramNativeAdsManager, paramAdViewProvider, null, null, 5);
  }
  
  public NativeAdScrollView(Context paramContext, NativeAdsManager paramNativeAdsManager, NativeAdScrollView.AdViewProvider paramAdViewProvider, int paramInt)
  {
    this(paramContext, paramNativeAdsManager, paramAdViewProvider, null, null, paramInt);
  }
  
  private NativeAdScrollView(Context paramContext, NativeAdsManager paramNativeAdsManager, NativeAdScrollView.AdViewProvider paramAdViewProvider, NativeAdView.Type paramType, NativeAdViewAttributes paramNativeAdViewAttributes, int paramInt)
  {
    super(paramContext);
    if (!paramNativeAdsManager.isLoaded()) {
      throw new IllegalStateException("NativeAdsManager not loaded");
    }
    if ((paramType == null) && (paramAdViewProvider == null)) {
      throw new IllegalArgumentException("Must provide one of AdLayoutProperties or a CustomAdView");
    }
    a = paramContext;
    b = paramNativeAdsManager;
    h = paramNativeAdViewAttributes;
    c = paramAdViewProvider;
    d = paramType;
    e = paramInt;
    f = new NativeAdScrollView.a(this);
    g = new NativeAdScrollView.b(this, paramContext);
    g.setAdapter(f);
    setInset(20);
    f.a();
    addView(g);
  }
  
  public NativeAdScrollView(Context paramContext, NativeAdsManager paramNativeAdsManager, NativeAdView.Type paramType)
  {
    this(paramContext, paramNativeAdsManager, null, paramType, new NativeAdViewAttributes(), 5);
  }
  
  public NativeAdScrollView(Context paramContext, NativeAdsManager paramNativeAdsManager, NativeAdView.Type paramType, NativeAdViewAttributes paramNativeAdViewAttributes)
  {
    this(paramContext, paramNativeAdsManager, null, paramType, paramNativeAdViewAttributes, 5);
  }
  
  public NativeAdScrollView(Context paramContext, NativeAdsManager paramNativeAdsManager, NativeAdView.Type paramType, NativeAdViewAttributes paramNativeAdViewAttributes, int paramInt)
  {
    this(paramContext, paramNativeAdsManager, null, paramType, paramNativeAdViewAttributes, paramInt);
  }
  
  public void setInset(int paramInt)
  {
    if (paramInt > 0)
    {
      DisplayMetrics localDisplayMetrics = a.getResources().getDisplayMetrics();
      int i = Math.round(paramInt * density);
      g.setPadding(i, 0, i, 0);
      NativeAdScrollView.b localb = g;
      float f1 = paramInt / 2;
      localb.setPageMargin(Math.round(density * f1));
      g.setClipToPadding(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAdScrollView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */