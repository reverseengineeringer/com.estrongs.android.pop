package com.handmark.pulltorefresh.library.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Orientation;

public class g
  extends e
{
  private final Animation f;
  private final Matrix g;
  private float h;
  private float i;
  private final boolean j;
  
  public g(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.Orientation paramOrientation, TypedArray paramTypedArray)
  {
    super(paramContext, paramMode, paramOrientation, paramTypedArray);
    j = paramTypedArray.getBoolean(15, true);
    g = new Matrix();
    f = new RotateAnimation(0.0F, 720.0F, 1, 0.5F, 1, 0.5F);
    f.setInterpolator(a);
    f.setDuration(1200L);
    f.setRepeatCount(-1);
    f.setRepeatMode(1);
  }
  
  private void k()
  {
    if (g != null) {
      g.reset();
    }
  }
  
  protected void a() {}
  
  protected void a(float paramFloat)
  {
    if (j) {
      return;
    }
    Math.max(0.0F, Math.min(180.0F, 360.0F * paramFloat - 180.0F));
  }
  
  public void a(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      h = Math.round(paramDrawable.getIntrinsicWidth() / 2.0F);
      i = Math.round(paramDrawable.getIntrinsicHeight() / 2.0F);
    }
  }
  
  protected void b() {}
  
  protected void c() {}
  
  protected void d()
  {
    k();
  }
  
  protected int e()
  {
    return 2130837602;
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */