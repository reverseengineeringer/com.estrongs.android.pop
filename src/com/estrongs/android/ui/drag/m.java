package com.estrongs.android.ui.drag;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.os.IBinder;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;

public class m
  extends View
  implements w
{
  u a;
  private Bitmap b;
  private Paint c;
  private int d;
  private int e;
  private float f;
  private float g = 1.0F;
  private WindowManager.LayoutParams h;
  private WindowManager i;
  
  public m(Context paramContext, Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Runnable paramRunnable)
  {
    super(paramContext);
    i = ((WindowManager)paramContext.getSystemService("window"));
    a = new u(false, 110, this);
    paramContext = new Matrix();
    float f1 = paramInt5;
    f1 = (40.0F + f1) / f1;
    f = f1;
    paramContext.setScale(f1, f1);
    b = Bitmap.createBitmap(paramBitmap, paramInt3, paramInt4, paramInt5, paramInt6, paramContext, true);
    d = (paramInt1 + 20);
    e = (paramInt2 + 20);
    setOnClickListener(new n(this, paramRunnable));
    setOnKeyListener(new o(this, paramRunnable));
  }
  
  public void a() {}
  
  public void a(float paramFloat1, float paramFloat2)
  {
    g = (((f - 1.0F) * paramFloat1 + 1.0F) / f);
    invalidate();
  }
  
  void a(int paramInt1, int paramInt2)
  {
    WindowManager.LayoutParams localLayoutParams = h;
    x = (paramInt1 - d);
    y = (paramInt2 - e);
    i.updateViewLayout(this, localLayoutParams);
  }
  
  void a(Bitmap paramBitmap, int paramInt)
  {
    b = paramBitmap;
    e += paramInt;
  }
  
  public void a(IBinder paramIBinder, int paramInt1, int paramInt2)
  {
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams(-2, -2, paramInt1 - d, paramInt2 - e, 1002, 768, -3);
    gravity = 51;
    token = paramIBinder;
    localLayoutParams.setTitle("NaviDragView");
    h = localLayoutParams;
    i.addView(this, localLayoutParams);
    g = (1.0F / f);
    a.a(true);
  }
  
  public void b() {}
  
  void c()
  {
    try
    {
      i.removeView(this);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  Bitmap getBitmap()
  {
    return b;
  }
  
  int getRegistrationX()
  {
    return d - 20;
  }
  
  int getRegistrationY()
  {
    return e - 20;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    b.recycle();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    float f1 = g;
    if (f1 < 0.999F)
    {
      float f2 = b.getWidth();
      f2 = (f2 - f2 * f1) / 2.0F;
      paramCanvas.translate(f2, f2);
      paramCanvas.scale(f1, f1);
    }
    if (c == null) {
      c = new Paint();
    }
    c.setAlpha(200);
    if (!b.isRecycled()) {
      paramCanvas.drawBitmap(b, 0.0F, 0.0F, c);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(b.getWidth(), b.getHeight());
  }
  
  public void setPaint(Paint paramPaint)
  {
    c = paramPaint;
    invalidate();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */