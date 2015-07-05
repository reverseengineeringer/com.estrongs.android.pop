package com.estrongs.android.pop.app.imageviewer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.ImageView.ScaleType;
import com.estrongs.android.pop.esclasses.ESImageView;

abstract class ImageViewTouchBase
  extends ESImageView
{
  private final Matrix a = new Matrix();
  private final float[] b = new float[9];
  private ad c;
  private Runnable d = null;
  protected Matrix f = new Matrix();
  protected Matrix g = new Matrix();
  protected final an h = new an(null);
  int i = -1;
  int j = -1;
  float k;
  float l = -1.0F;
  int m;
  int n;
  protected Handler o = new Handler();
  
  public ImageViewTouchBase(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ImageViewTouchBase(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    setScaleType(ImageView.ScaleType.MATRIX);
  }
  
  private void a(Bitmap paramBitmap, int paramInt)
  {
    super.setImageBitmap(paramBitmap);
    Object localObject = getDrawable();
    if (localObject != null) {
      ((Drawable)localObject).setDither(true);
    }
    localObject = h.b();
    h.a(paramBitmap);
    h.a(paramInt);
    if ((localObject != null) && (localObject != paramBitmap) && (c != null)) {
      c.a((Bitmap)localObject);
    }
    if (paramBitmap != null)
    {
      m = paramBitmap.getWidth();
      n = paramBitmap.getHeight();
    }
  }
  
  private void a(an paraman, Matrix paramMatrix)
  {
    float f1 = getWidth();
    float f2 = getHeight();
    float f3 = paraman.f();
    float f4 = paraman.e();
    paramMatrix.reset();
    float f5 = Math.min(Math.min(f1 / f3, 3.0F), Math.min(f2 / f4, 3.0F));
    paramMatrix.postConcat(paraman.c());
    paramMatrix.postScale(f5, f5);
    paramMatrix.postTranslate((f1 - f3 * f5) / 2.0F, (f2 - f4 * f5) / 2.0F);
  }
  
  protected float a(Matrix paramMatrix)
  {
    return a(paramMatrix, 0);
  }
  
  protected float a(Matrix paramMatrix, int paramInt)
  {
    paramMatrix.getValues(b);
    return b[paramInt];
  }
  
  protected void a(float paramFloat)
  {
    a(paramFloat, getWidth() / 2.0F, getHeight() / 2.0F);
  }
  
  protected void a(float paramFloat1, float paramFloat2)
  {
    g.postTranslate(paramFloat1, paramFloat2);
  }
  
  protected void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = paramFloat1;
    if (paramFloat1 > k) {
      f1 = k;
    }
    paramFloat1 = f1 / f();
    g.postScale(paramFloat1, paramFloat1, paramFloat2, paramFloat3);
    setImageMatrix(g());
    a(true, true);
  }
  
  protected void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat1 = (paramFloat1 - f()) / paramFloat4;
    float f1 = f();
    long l1 = System.currentTimeMillis();
    o.post(new ac(this, paramFloat4, l1, f1, paramFloat1, paramFloat2, paramFloat3));
  }
  
  public void a(int paramInt)
  {
    int i1 = h.a() + paramInt;
    paramInt = i1;
    if (i1 >= 360) {
      paramInt = i1 - 360;
    }
    h.a(paramInt);
    a(h, false);
  }
  
  public void a(Bitmap paramBitmap, boolean paramBoolean)
  {
    a(new an(paramBitmap), paramBoolean);
  }
  
  public void a(an paraman, boolean paramBoolean)
  {
    if (getWidth() <= 0)
    {
      d = new ab(this, paraman, paramBoolean);
      return;
    }
    if (paraman.b() != null)
    {
      a(paraman, f);
      a(paraman.b(), paraman.a());
    }
    for (;;)
    {
      if (paramBoolean) {
        g.reset();
      }
      setImageMatrix(g());
      k = h();
      if (l >= 0.0F) {
        break;
      }
      l = f();
      return;
      f.reset();
      setImageBitmap(null);
    }
  }
  
  protected void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    float f3 = 0.0F;
    if (h.b() == null) {
      return;
    }
    Matrix localMatrix = g();
    RectF localRectF = new RectF(0.0F, 0.0F, h.b().getWidth(), h.b().getHeight());
    localMatrix.mapRect(localRectF);
    float f1 = localRectF.height();
    float f4 = localRectF.width();
    m = ((int)f4);
    n = ((int)f1);
    int i1;
    if (paramBoolean2)
    {
      i1 = getHeight();
      if (f1 < i1) {
        f1 = (i1 - f1) / 2.0F - top;
      }
    }
    for (;;)
    {
      float f2 = f3;
      if (paramBoolean1)
      {
        i1 = getWidth();
        if (f4 >= i1) {
          break label221;
        }
        f2 = (i1 - f4) / 2.0F - left;
      }
      for (;;)
      {
        a(f2, f1);
        setImageMatrix(g());
        return;
        if (top > 0.0F)
        {
          f1 = -top;
          break;
        }
        if (bottom >= i1) {
          break label272;
        }
        f1 = getHeight() - bottom;
        break;
        label221:
        if (left > 0.0F)
        {
          f2 = -left;
        }
        else
        {
          f2 = f3;
          if (right < i1) {
            f2 = i1 - right;
          }
        }
      }
      label272:
      f1 = 0.0F;
    }
  }
  
  public float b()
  {
    return l;
  }
  
  protected void b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = getWidth() / 2.0F;
    float f2 = getHeight() / 2.0F;
    c(f1 - paramFloat2, f2 - paramFloat3);
    a(paramFloat1, f1, f2);
  }
  
  public int c()
  {
    return n;
  }
  
  protected void c(float paramFloat1, float paramFloat2)
  {
    a(paramFloat1, paramFloat2);
    setImageMatrix(g());
  }
  
  public int d()
  {
    return m;
  }
  
  public void e()
  {
    a(null, true);
  }
  
  protected float f()
  {
    return a(g);
  }
  
  protected Matrix g()
  {
    a.set(f);
    a.postConcat(g);
    return a;
  }
  
  protected float h()
  {
    if (h.b() == null) {
      return 1.0F;
    }
    return Math.max(h.f() / i, h.e() / j) * 4.0F;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      ((Activity)getContext()).finish();
      return true;
    }
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0)) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (f() > 1.0F))
    {
      a(1.0F);
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    i = (paramInt3 - paramInt1);
    j = (paramInt4 - paramInt2);
    Runnable localRunnable = d;
    if (localRunnable != null)
    {
      d = null;
      localRunnable.run();
    }
    if (h.b() != null)
    {
      a(h, f);
      setImageMatrix(g());
    }
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    a(paramBitmap, 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ImageViewTouchBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */