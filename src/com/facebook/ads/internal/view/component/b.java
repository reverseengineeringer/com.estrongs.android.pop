package com.facebook.ads.internal.view.component;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Layout;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.view.j;
import com.facebook.ads.internal.view.l;

public class b
  extends LinearLayout
{
  private ImageView a;
  private a b;
  private TextView c;
  private LinearLayout d;
  private DisplayMetrics e;
  
  public b(Context paramContext, NativeAd paramNativeAd, NativeAdViewAttributes paramNativeAdViewAttributes, boolean paramBoolean, int paramInt)
  {
    super(paramContext);
    e = paramContext.getResources().getDisplayMetrics();
    setVerticalGravity(16);
    setOrientation(1);
    paramContext = new LinearLayout(getContext());
    paramContext.setOrientation(1);
    paramContext.setGravity(16);
    Object localObject1 = new LinearLayout.LayoutParams(-1, -1);
    ((LinearLayout.LayoutParams)localObject1).setMargins(Math.round(15.0F * e.density), Math.round(15.0F * e.density), Math.round(15.0F * e.density), Math.round(15.0F * e.density));
    paramContext.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    addView(paramContext);
    d = new LinearLayout(getContext());
    localObject1 = new LinearLayout.LayoutParams(-1, 0);
    d.setOrientation(0);
    d.setGravity(16);
    weight = 3.0F;
    d.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    paramContext.addView(d);
    a = new c(getContext());
    paramInt = a(paramBoolean, paramInt);
    localObject1 = new LinearLayout.LayoutParams(Math.round(paramInt * e.density), Math.round(paramInt * e.density));
    ((LinearLayout.LayoutParams)localObject1).setMargins(0, 0, Math.round(15.0F * e.density), 0);
    a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    NativeAd.downloadAndDisplayImage(paramNativeAd.getAdIcon(), a);
    d.addView(a);
    localObject1 = new LinearLayout(getContext());
    ((LinearLayout)localObject1).setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    ((LinearLayout)localObject1).setOrientation(0);
    ((LinearLayout)localObject1).setGravity(16);
    d.addView((View)localObject1);
    b = new a(getContext(), paramNativeAd, paramNativeAdViewAttributes);
    Object localObject2 = new LinearLayout.LayoutParams(-2, -1);
    ((LinearLayout.LayoutParams)localObject2).setMargins(0, 0, Math.round(15.0F * e.density), 0);
    weight = 0.5F;
    b.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    ((LinearLayout)localObject1).addView(b);
    c = new TextView(getContext());
    c.setPadding(Math.round(6.0F * e.density), Math.round(6.0F * e.density), Math.round(6.0F * e.density), Math.round(6.0F * e.density));
    c.setText(paramNativeAd.getAdCallToAction());
    c.setTextColor(paramNativeAdViewAttributes.getButtonTextColor());
    c.setTextSize(14.0F);
    c.setTypeface(paramNativeAdViewAttributes.getTypeface(), 1);
    c.setMaxLines(2);
    c.setEllipsize(TextUtils.TruncateAt.END);
    c.setGravity(17);
    localObject2 = new GradientDrawable();
    ((GradientDrawable)localObject2).setColor(paramNativeAdViewAttributes.getButtonColor());
    ((GradientDrawable)localObject2).setCornerRadius(5.0F * e.density);
    ((GradientDrawable)localObject2).setStroke(1, paramNativeAdViewAttributes.getButtonBorderColor());
    c.setBackgroundDrawable((Drawable)localObject2);
    localObject2 = new LinearLayout.LayoutParams(-2, -2);
    weight = 0.25F;
    c.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    ((LinearLayout)localObject1).addView(c);
    if (paramBoolean)
    {
      localObject1 = new l(getContext());
      ((l)localObject1).setText(paramNativeAd.getAdBody());
      j.b((TextView)localObject1, paramNativeAdViewAttributes);
      ((l)localObject1).setMinTextSize(paramNativeAdViewAttributes.getDescriptionTextSize() - 1);
      paramNativeAd = new LinearLayout.LayoutParams(-1, 0);
      weight = 1.0F;
      ((l)localObject1).setLayoutParams(paramNativeAd);
      ((l)localObject1).setGravity(80);
      paramContext.addView((View)localObject1);
    }
  }
  
  private int a(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      double d1 = 3.0D / (i + 3);
      return (int)((paramInt - 30) * d1);
    }
  }
  
  public TextView getCallToActionView()
  {
    return c;
  }
  
  public ImageView getIconView()
  {
    return a;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    TextView localTextView = b.getTitleTextView();
    if (localTextView.getLayout().getLineEnd(localTextView.getLineCount() - 1) < b.getMinVisibleTitleCharacters())
    {
      d.removeView(a);
      super.onMeasure(paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.component.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */