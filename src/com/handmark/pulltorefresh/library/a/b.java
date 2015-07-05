package com.handmark.pulltorefresh.library.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Orientation;

@SuppressLint({"ViewConstructor"})
public class b
  extends e
{
  private final Animation f;
  private final Animation g;
  
  public b(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.Orientation paramOrientation, TypedArray paramTypedArray)
  {
    super(paramContext, paramMode, paramOrientation, paramTypedArray);
    if (paramMode == PullToRefreshBase.Mode.PULL_FROM_START) {}
    for (int i = 65356;; i = 180)
    {
      f = new RotateAnimation(0.0F, i, 1, 0.5F, 1, 0.5F);
      f.setInterpolator(a);
      f.setDuration(150L);
      f.setFillAfter(true);
      g = new RotateAnimation(i, 0.0F, 1, 0.5F, 1, 0.5F);
      g.setInterpolator(a);
      g.setDuration(150L);
      g.setFillAfter(true);
      return;
    }
  }
  
  protected void a()
  {
    if (f == b.getAnimation()) {
      b.startAnimation(g);
    }
  }
  
  protected void a(float paramFloat) {}
  
  protected void a(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      paramDrawable.getIntrinsicHeight();
      paramDrawable.getIntrinsicWidth();
    }
  }
  
  protected void b()
  {
    b.clearAnimation();
    b.setVisibility(4);
    c.setVisibility(0);
  }
  
  protected void c()
  {
    b.startAnimation(f);
  }
  
  protected void d()
  {
    b.clearAnimation();
    c.setVisibility(8);
    b.setVisibility(0);
  }
  
  protected int e()
  {
    return 2130837601;
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */