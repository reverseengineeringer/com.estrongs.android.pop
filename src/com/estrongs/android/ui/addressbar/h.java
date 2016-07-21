package com.estrongs.android.ui.addressbar;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

public class h
  extends Drawable
  implements Animatable, Runnable
{
  private Drawable a;
  private int b;
  private boolean c = false;
  private long d;
  private int e;
  private int f;
  private float g;
  private float h;
  
  public h(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    a = paramDrawable;
    e = 150;
    f = 12;
    g = paramFloat1;
    h = paramFloat2;
    d = -1L;
    b = 0;
  }
  
  public void draw(Canvas paramCanvas)
  {
    int j = paramCanvas.save();
    Drawable localDrawable = a;
    Rect localRect = localDrawable.getBounds();
    int i = right;
    int k = left;
    int m = bottom;
    int n = top;
    float f1 = left;
    float f2 = g;
    float f3 = i - k;
    float f4 = top;
    float f5 = h;
    float f6 = m - n;
    if (c) {}
    for (i = b;; i = 0)
    {
      paramCanvas.rotate(i, f3 * f2 + f1, f6 * f5 + f4);
      localDrawable.draw(paramCanvas);
      paramCanvas.restoreToCount(j);
      return;
    }
  }
  
  public int getIntrinsicHeight()
  {
    return a.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return a.getIntrinsicWidth();
  }
  
  public int getOpacity()
  {
    return a.getOpacity();
  }
  
  public boolean isRunning()
  {
    return c;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    a.setBounds(paramRect);
  }
  
  public void run()
  {
    b = ((int)((float)(SystemClock.uptimeMillis() - d) * 1.0F / (e * f) * 360.0F));
    invalidateSelf();
    unscheduleSelf(this);
    scheduleSelf(this, SystemClock.uptimeMillis() + e);
  }
  
  public void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
  }
  
  public void start()
  {
    d = SystemClock.uptimeMillis();
    c = true;
    b = 0;
    unscheduleSelf(this);
    scheduleSelf(this, d + e);
  }
  
  public void stop()
  {
    c = false;
    unscheduleSelf(this);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.addressbar.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */