package com.facebook.ads.internal.view.component;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.view.j;
import com.facebook.ads.internal.view.k;

public class a
  extends LinearLayout
{
  private k a;
  private int b;
  
  public a(Context paramContext, NativeAd paramNativeAd, NativeAdViewAttributes paramNativeAdViewAttributes)
  {
    super(paramContext);
    setOrientation(1);
    setVerticalGravity(16);
    a = new k(getContext(), 2);
    a.setMinTextSize(paramNativeAdViewAttributes.getTitleTextSize() - 2);
    a.setText(paramNativeAd.getAdTitle());
    j.a(a, paramNativeAdViewAttributes);
    a.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    addView(a);
    b = Math.min(paramNativeAd.getAdTitle().length(), 21);
    addView(j.a(paramContext, paramNativeAd, paramNativeAdViewAttributes));
  }
  
  public int getMinVisibleTitleCharacters()
  {
    return b;
  }
  
  public TextView getTitleTextView()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.component.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */