package com.estrongs.android.ui.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;

public class ScanProgressView
  extends View
{
  private Bitmap a;
  private Bitmap b;
  private Bitmap c;
  private Paint d;
  private Paint e;
  private float f;
  private float g;
  private int h;
  private int i;
  private int j;
  private int k = 2000;
  private int l = 800;
  private long m;
  private float n;
  private float o;
  private float p;
  private boolean q;
  private Handler r = new cj(this);
  
  public ScanProgressView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ScanProgressView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ScanProgressView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e();
  }
  
  private void e()
  {
    q = false;
    d = new Paint();
    d.setAntiAlias(true);
    d.setFilterBitmap(true);
    e = new Paint();
    e.setAlpha(51);
    e.setAntiAlias(true);
    e.setFilterBitmap(true);
    a = BitmapFactory.decodeResource(getResources(), 2130837685);
    b = BitmapFactory.decodeResource(getResources(), 2130837686);
    c = BitmapFactory.decodeResource(getResources(), 2130837687);
  }
  
  private void f()
  {
    if (a == null) {
      return;
    }
    int i1 = getPaddingTop();
    int i2 = getPaddingBottom();
    f = getWidth();
    g = (getHeight() - i1 - i2);
    o = (f / 2.0F);
    float f1 = g;
    p = ((i1 + f1 - i2) / 2.0F);
    n = Math.min(f / a.getWidth(), g / a.getHeight());
  }
  
  public void a()
  {
    q = false;
    m = System.currentTimeMillis();
    Message localMessage = new Message();
    what = 1;
    r.sendMessage(localMessage);
  }
  
  public void b()
  {
    q = true;
    r.removeMessages(1);
    invalidate();
  }
  
  public void c()
  {
    q = true;
    invalidate();
  }
  
  public void d()
  {
    if ((a != null) && (!a.isRecycled())) {
      a.recycle();
    }
    if ((b != null) && (!b.isRecycled())) {
      b.recycle();
    }
    if ((c != null) && (!c.isRecycled())) {
      c.recycle();
    }
  }
  
  public int getCenterX()
  {
    return (int)o;
  }
  
  public int getCenterY()
  {
    return (int)p;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (a == null) {}
    do
    {
      return;
      if ((f == 0.0F) || (g == 0.0F)) {
        f();
      }
    } while ((f == 0.0F) || (g == 0.0F));
    paramCanvas.save();
    paramCanvas.translate(getPaddingLeft(), getPaddingTop());
    paramCanvas.scale(n, n);
    paramCanvas.translate((f / n - f) / 2.0F, (g / n - g) / 2.0F);
    paramCanvas.drawBitmap(a, (f - a.getWidth()) / 2.0F, (g - a.getHeight()) / 2.0F, d);
    if (!q)
    {
      paramCanvas.drawBitmap(b, (f - b.getWidth()) / 2.0F, (g - b.getHeight()) / 2.0F, e);
      paramCanvas.save();
      paramCanvas.rotate(h, o, p);
      paramCanvas.drawBitmap(c, (f - c.getWidth()) / 2.0F, (g - c.getHeight()) / 2.0F, d);
      paramCanvas.restore();
    }
    for (;;)
    {
      paramCanvas.restore();
      return;
      paramCanvas.drawBitmap(b, (f - b.getWidth()) / 2.0F, (g - b.getHeight()) / 2.0F, d);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    f();
    invalidate();
  }
  
  public void setDuration(int paramInt)
  {
    k = paramInt;
  }
  
  public void setmEndDuration(int paramInt)
  {
    l = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ScanProgressView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */