package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.support.v4.view.b.b;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;

class at
  extends Drawable
  implements Animatable
{
  private static final Interpolator b = new LinearInterpolator();
  private static final Interpolator c = new b();
  boolean a;
  private final int[] d = { -16777216 };
  private final ArrayList<Animation> e = new ArrayList();
  private final ax f;
  private float g;
  private Resources h;
  private View i;
  private Animation j;
  private float k;
  private double l;
  private double m;
  private final Drawable.Callback n = new aw(this);
  
  public at(Context paramContext, View paramView)
  {
    i = paramView;
    h = paramContext.getResources();
    f = new ax(n);
    f.a(d);
    a(1);
    b();
  }
  
  private float a(ax paramax)
  {
    return (float)Math.toRadians(paramax.d() / (6.283185307179586D * paramax.j()));
  }
  
  private int a(float paramFloat, int paramInt1, int paramInt2)
  {
    int i3 = Integer.valueOf(paramInt1).intValue();
    paramInt1 = i3 >> 24 & 0xFF;
    int i1 = i3 >> 16 & 0xFF;
    int i2 = i3 >> 8 & 0xFF;
    i3 &= 0xFF;
    paramInt2 = Integer.valueOf(paramInt2).intValue();
    int i4 = (int)(((paramInt2 >> 24 & 0xFF) - paramInt1) * paramFloat);
    int i5 = (int)(((paramInt2 >> 16 & 0xFF) - i1) * paramFloat);
    int i6 = (int)(((paramInt2 >> 8 & 0xFF) - i2) * paramFloat);
    return i3 + (int)(((paramInt2 & 0xFF) - i3) * paramFloat) | paramInt1 + i4 << 24 | i1 + i5 << 16 | i6 + i2 << 8;
  }
  
  private void a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, float paramFloat1, float paramFloat2)
  {
    ax localax = f;
    float f1 = h.getDisplayMetrics().density;
    l = (f1 * paramDouble1);
    m = (f1 * paramDouble2);
    localax.a((float)paramDouble4 * f1);
    localax.a(f1 * paramDouble3);
    localax.c(0);
    localax.a(paramFloat1 * f1, f1 * paramFloat2);
    localax.a((int)l, (int)m);
  }
  
  private void a(float paramFloat, ax paramax)
  {
    if (paramFloat > 0.75F) {
      paramax.b(a((paramFloat - 0.75F) / 0.25F, paramax.h(), paramax.a()));
    }
  }
  
  private void b()
  {
    ax localax = f;
    au localau = new au(this, localax);
    localau.setRepeatCount(-1);
    localau.setRepeatMode(1);
    localau.setInterpolator(b);
    localau.setAnimationListener(new av(this, localax));
    j = localau;
  }
  
  private void b(float paramFloat, ax paramax)
  {
    a(paramFloat, paramax);
    float f1 = (float)(Math.floor(paramax.k() / 0.8F) + 1.0D);
    float f2 = a(paramax);
    float f3 = paramax.f();
    paramax.b((paramax.g() - f2 - paramax.f()) * paramFloat + f3);
    paramax.c(paramax.g());
    f2 = paramax.k();
    paramax.d((f1 - paramax.k()) * paramFloat + f2);
  }
  
  public void a(float paramFloat)
  {
    f.e(paramFloat);
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    f.b(paramFloat1);
    f.c(paramFloat2);
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 0)
    {
      a(56.0D, 56.0D, 12.5D, 3.0D, 12.0F, 6.0F);
      return;
    }
    a(40.0D, 40.0D, 8.75D, 2.5D, 10.0F, 5.0F);
  }
  
  public void a(boolean paramBoolean)
  {
    f.a(paramBoolean);
  }
  
  public void a(int... paramVarArgs)
  {
    f.a(paramVarArgs);
    f.c(0);
  }
  
  public void b(float paramFloat)
  {
    f.d(paramFloat);
  }
  
  public void b(int paramInt)
  {
    f.a(paramInt);
  }
  
  void c(float paramFloat)
  {
    g = paramFloat;
    invalidateSelf();
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int i1 = paramCanvas.save();
    paramCanvas.rotate(g, localRect.exactCenterX(), localRect.exactCenterY());
    f.a(paramCanvas, localRect);
    paramCanvas.restoreToCount(i1);
  }
  
  public int getAlpha()
  {
    return f.c();
  }
  
  public int getIntrinsicHeight()
  {
    return (int)m;
  }
  
  public int getIntrinsicWidth()
  {
    return (int)l;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public boolean isRunning()
  {
    ArrayList localArrayList = e;
    int i2 = localArrayList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      Animation localAnimation = (Animation)localArrayList.get(i1);
      if ((localAnimation.hasStarted()) && (!localAnimation.hasEnded())) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public void setAlpha(int paramInt)
  {
    f.d(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    f.a(paramColorFilter);
  }
  
  public void start()
  {
    j.reset();
    f.l();
    if (f.i() != f.e())
    {
      a = true;
      j.setDuration(666L);
      i.startAnimation(j);
      return;
    }
    f.c(0);
    f.m();
    j.setDuration(1332L);
    i.startAnimation(j);
  }
  
  public void stop()
  {
    i.clearAnimation();
    c(0.0F);
    f.a(false);
    f.c(0);
    f.m();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */