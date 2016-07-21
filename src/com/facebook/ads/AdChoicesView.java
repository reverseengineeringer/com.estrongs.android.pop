package com.facebook.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.util.DisplayMetrics;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;

public class AdChoicesView
  extends RelativeLayout
{
  private final Context a;
  private final NativeAd b;
  private final DisplayMetrics c;
  private boolean d = false;
  private TextView e;
  
  public AdChoicesView(Context paramContext, NativeAd paramNativeAd)
  {
    this(paramContext, paramNativeAd, false);
  }
  
  public AdChoicesView(Context paramContext, NativeAd paramNativeAd, boolean paramBoolean)
  {
    super(paramContext);
    a = paramContext;
    b = paramNativeAd;
    c = a.getResources().getDisplayMetrics();
    paramContext = b.getAdChoicesIcon();
    paramNativeAd = new RelativeLayout.LayoutParams(-2, -2);
    setOnTouchListener(new AdChoicesView.1(this));
    e = new TextView(a);
    addView(e);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    if (paramBoolean)
    {
      localLayoutParams.addRule(11, a(paramContext).getId());
      width = 0;
      width = Math.round((paramContext.getWidth() + 4) * c.density);
      height = Math.round((paramContext.getHeight() + 2) * c.density);
    }
    for (d = false;; d = true)
    {
      setLayoutParams(paramNativeAd);
      localLayoutParams.addRule(15, -1);
      e.setLayoutParams(localLayoutParams);
      e.setSingleLine();
      e.setText("AdChoices");
      e.setTextSize(10.0F);
      e.setTextColor(-4341303);
      return;
    }
  }
  
  private ImageView a(NativeAd.Image paramImage)
  {
    ImageView localImageView = new ImageView(a);
    addView(localImageView);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(Math.round(paramImage.getWidth() * c.density), Math.round(paramImage.getHeight() * c.density));
    localLayoutParams.addRule(9);
    localLayoutParams.addRule(15, -1);
    localLayoutParams.setMargins(Math.round(4.0F * c.density), Math.round(c.density * 2.0F), Math.round(c.density * 2.0F), Math.round(c.density * 2.0F));
    localImageView.setLayoutParams(localLayoutParams);
    NativeAd.downloadAndDisplayImage(paramImage, localImageView);
    return localImageView;
  }
  
  private void a()
  {
    Object localObject = new Paint();
    ((Paint)localObject).setTextSize(e.getTextSize());
    int j = Math.round(((Paint)localObject).measureText("AdChoices") + 4.0F * c.density);
    int i = getWidth();
    j += i;
    d = true;
    localObject = new AdChoicesView.2(this, i, j);
    ((Animation)localObject).setAnimationListener(new AdChoicesView.3(this, j, i));
    ((Animation)localObject).setDuration(300L);
    ((Animation)localObject).setFillAfter(true);
    startAnimation((Animation)localObject);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.AdChoicesView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */