package com.facebook.ads.internal.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.AdChoicesView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdView.Type;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.view.component.d;
import java.util.Arrays;

public class b
  extends RelativeLayout
{
  private final NativeAdViewAttributes a;
  private final NativeAd b;
  private final int c;
  private final DisplayMetrics d;
  
  public b(Context paramContext, NativeAd paramNativeAd, NativeAdView.Type paramType, NativeAdViewAttributes paramNativeAdViewAttributes)
  {
    super(paramContext);
    setBackgroundColor(paramNativeAdViewAttributes.getBackgroundColor());
    a = paramNativeAdViewAttributes;
    b = paramNativeAd;
    d = paramContext.getResources().getDisplayMetrics();
    c = paramType.getHeight();
    setLayoutParams(new RelativeLayout.LayoutParams(-1, Math.round(c * d.density)));
    paramNativeAdViewAttributes = new m(paramContext);
    paramNativeAdViewAttributes.setMinWidth(Math.round(280.0F * d.density));
    paramNativeAdViewAttributes.setMaxWidth(Math.round(375.0F * d.density));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(13, -1);
    paramNativeAdViewAttributes.setLayoutParams(localLayoutParams);
    addView(paramNativeAdViewAttributes);
    paramContext = new LinearLayout(paramContext);
    paramContext.setOrientation(1);
    paramContext.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    paramNativeAdViewAttributes.addView(paramContext);
    switch (b.1.a[paramType.ordinal()])
    {
    }
    for (;;)
    {
      a(paramContext, paramType);
      paramContext = new AdChoicesView(getContext(), paramNativeAd);
      paramNativeAd = (RelativeLayout.LayoutParams)paramContext.getLayoutParams();
      paramNativeAd.addRule(11);
      paramNativeAd.setMargins(Math.round(d.density * 4.0F), Math.round(d.density * 4.0F), Math.round(d.density * 4.0F), Math.round(d.density * 4.0F));
      paramNativeAdViewAttributes.addView(paramContext);
      return;
      b(paramContext);
      a(paramContext);
    }
  }
  
  private void a(ViewGroup paramViewGroup)
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(getContext());
    localRelativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, Math.round(d.density * 180.0F)));
    localRelativeLayout.setBackgroundColor(a.getBackgroundColor());
    MediaView localMediaView = new MediaView(getContext());
    localRelativeLayout.addView(localMediaView);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, (int)(d.density * 180.0F));
    localLayoutParams.addRule(13, -1);
    localMediaView.setLayoutParams(localLayoutParams);
    localMediaView.setAutoplay(a.getAutoplay());
    localMediaView.setNativeAd(b);
    paramViewGroup.addView(localRelativeLayout);
  }
  
  private void a(ViewGroup paramViewGroup, NativeAdView.Type paramType)
  {
    com.facebook.ads.internal.view.component.b localb = new com.facebook.ads.internal.view.component.b(getContext(), b, a, a(paramType), b(paramType));
    localb.setLayoutParams(new LinearLayout.LayoutParams(-1, Math.round(b(paramType) * d.density)));
    paramViewGroup.addView(localb);
    b.registerViewForInteraction(this, Arrays.asList(new View[] { localb.getIconView(), localb.getCallToActionView() }));
  }
  
  private boolean a(NativeAdView.Type paramType)
  {
    return (paramType == NativeAdView.Type.HEIGHT_300) || (paramType == NativeAdView.Type.HEIGHT_120);
  }
  
  private int b(NativeAdView.Type paramType)
  {
    switch (b.1.a[paramType.ordinal()])
    {
    default: 
      return 0;
    case 3: 
    case 4: 
      return paramType.getHeight();
    case 2: 
      return paramType.getHeight() - 180;
    }
    return (paramType.getHeight() - 180) / 2;
  }
  
  private void b(ViewGroup paramViewGroup)
  {
    d locald = new d(getContext(), b, a);
    locald.setLayoutParams(new LinearLayout.LayoutParams(-1, Math.round(110.0F * d.density)));
    paramViewGroup.addView(locald);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */