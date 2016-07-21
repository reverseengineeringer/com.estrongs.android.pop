package com.facebook.ads.internal.view.component;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.view.j;

public class d
  extends LinearLayout
{
  public d(Context paramContext, NativeAd paramNativeAd, NativeAdViewAttributes paramNativeAdViewAttributes)
  {
    super(paramContext);
    Object localObject = paramContext.getResources().getDisplayMetrics();
    paramContext = new LinearLayout(paramContext);
    paramContext.setOrientation(1);
    paramContext.setGravity(17);
    paramContext.setVerticalGravity(16);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.setMargins(Math.round(density * 15.0F), Math.round(density * 15.0F), Math.round(density * 15.0F), Math.round(density * 15.0F));
    paramContext.setLayoutParams(localLayoutParams);
    addView(paramContext);
    localObject = new TextView(getContext());
    ((TextView)localObject).setText(paramNativeAd.getAdSubtitle());
    j.a((TextView)localObject, paramNativeAdViewAttributes);
    ((TextView)localObject).setEllipsize(TextUtils.TruncateAt.END);
    ((TextView)localObject).setSingleLine(true);
    paramContext.addView((View)localObject);
    localObject = new TextView(getContext());
    ((TextView)localObject).setText(paramNativeAd.getAdBody());
    j.b((TextView)localObject, paramNativeAdViewAttributes);
    ((TextView)localObject).setEllipsize(TextUtils.TruncateAt.END);
    ((TextView)localObject).setMaxLines(2);
    paramContext.addView((View)localObject);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.component.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */