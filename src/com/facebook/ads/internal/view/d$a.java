package com.facebook.ads.internal.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.RelativeLayout.LayoutParams;

class d$a
  extends Button
{
  private Paint b;
  private Path c;
  private Path d;
  private Path e;
  private int f;
  private boolean g;
  
  public d$a(d paramd, Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  private void a()
  {
    f = 60;
    c = new Path();
    d = new Path();
    e = new Path();
    b = new d.a.1(this);
    b();
    setClickable(true);
    setBackgroundColor(0);
  }
  
  private void a(boolean paramBoolean)
  {
    g = paramBoolean;
    refreshDrawableState();
    invalidate();
  }
  
  private void b()
  {
    Object localObject = getResources().getDisplayMetrics();
    int i = (int)(f * density);
    float f1 = f;
    localObject = new RelativeLayout.LayoutParams(i, (int)(density * f1));
    ((RelativeLayout.LayoutParams)localObject).addRule(9);
    ((RelativeLayout.LayoutParams)localObject).addRule(12);
    setLayoutParams((ViewGroup.LayoutParams)localObject);
  }
  
  private boolean c()
  {
    return g;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if ((paramCanvas.isHardwareAccelerated()) && (Build.VERSION.SDK_INT < 17)) {
      setLayerType(1, null);
    }
    float f1 = Math.max(paramCanvas.getWidth(), paramCanvas.getHeight()) / 100.0F;
    if (c())
    {
      e.rewind();
      e.moveTo(26.5F * f1, 15.5F * f1);
      e.lineTo(26.5F * f1, 84.5F * f1);
      e.lineTo(82.5F * f1, 50.5F * f1);
      e.lineTo(26.5F * f1, f1 * 15.5F);
      e.close();
      paramCanvas.drawPath(e, b);
    }
    for (;;)
    {
      super.onDraw(paramCanvas);
      return;
      c.rewind();
      c.moveTo(29.0F * f1, 21.0F * f1);
      c.lineTo(29.0F * f1, 79.0F * f1);
      c.lineTo(45.0F * f1, 79.0F * f1);
      c.lineTo(45.0F * f1, 21.0F * f1);
      c.lineTo(29.0F * f1, 21.0F * f1);
      c.close();
      d.rewind();
      d.moveTo(55.0F * f1, 21.0F * f1);
      d.lineTo(55.0F * f1, 79.0F * f1);
      d.lineTo(71.0F * f1, 79.0F * f1);
      d.lineTo(71.0F * f1, 21.0F * f1);
      d.lineTo(55.0F * f1, f1 * 21.0F);
      d.close();
      paramCanvas.drawPath(c, b);
      paramCanvas.drawPath(d, b);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */