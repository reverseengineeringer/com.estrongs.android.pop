package com.handmark.pulltorefresh.library.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;

@SuppressLint({"ViewConstructor"})
public class c
  extends FrameLayout
  implements Animation.AnimationListener
{
  private Animation a;
  private Animation b;
  private ImageView c;
  private final Animation d;
  private final Animation e;
  
  public c(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext);
    c = new ImageView(paramContext);
    Drawable localDrawable = getResources().getDrawable(2130837742);
    c.setImageDrawable(localDrawable);
    int i = getResources().getDimensionPixelSize(2131296353);
    c.setPadding(i, i, i, i);
    addView(c);
    int j;
    switch (d.a[paramMode.ordinal()])
    {
    default: 
      j = 2130968582;
      i = 2130968584;
      setBackgroundResource(2130837744);
    }
    for (;;)
    {
      a = AnimationUtils.loadAnimation(paramContext, j);
      a.setAnimationListener(this);
      b = AnimationUtils.loadAnimation(paramContext, i);
      b.setAnimationListener(this);
      paramContext = new LinearInterpolator();
      d = new RotateAnimation(0.0F, -180.0F, 1, 0.5F, 1, 0.5F);
      d.setInterpolator(paramContext);
      d.setDuration(150L);
      d.setFillAfter(true);
      e = new RotateAnimation(-180.0F, 0.0F, 1, 0.5F, 1, 0.5F);
      e.setInterpolator(paramContext);
      e.setDuration(150L);
      e.setFillAfter(true);
      return;
      j = 2130968581;
      i = 2130968583;
      setBackgroundResource(2130837743);
      c.setScaleType(ImageView.ScaleType.MATRIX);
      paramMode = new Matrix();
      paramMode.setRotate(180.0F, localDrawable.getIntrinsicWidth() / 2.0F, localDrawable.getIntrinsicHeight() / 2.0F);
      c.setImageMatrix(paramMode);
    }
  }
  
  public final boolean a()
  {
    Animation localAnimation = getAnimation();
    if (localAnimation != null) {
      if (a != localAnimation) {}
    }
    while (getVisibility() == 0)
    {
      return true;
      return false;
    }
    return false;
  }
  
  public void b()
  {
    startAnimation(b);
  }
  
  public void c()
  {
    c.clearAnimation();
    startAnimation(a);
  }
  
  public void d()
  {
    c.startAnimation(d);
  }
  
  public void e()
  {
    c.startAnimation(e);
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (paramAnimation == b)
    {
      c.clearAnimation();
      setVisibility(8);
    }
    for (;;)
    {
      clearAnimation();
      return;
      if (paramAnimation == a) {
        setVisibility(0);
      }
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation)
  {
    setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */