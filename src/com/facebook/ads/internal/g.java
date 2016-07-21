package com.facebook.ads.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;

public class g
  extends View
{
  private Paint a;
  private Paint b;
  private Paint c;
  private int d;
  private boolean e;
  
  public g(Context paramContext)
  {
    this(paramContext, 60, true);
  }
  
  public g(Context paramContext, int paramInt, boolean paramBoolean)
  {
    super(paramContext);
    d = paramInt;
    e = paramBoolean;
    if (paramBoolean)
    {
      a = new Paint();
      a.setColor(-3355444);
      a.setStyle(Paint.Style.STROKE);
      a.setStrokeWidth(3.0F);
      a.setAntiAlias(true);
      b = new Paint();
      b.setColor(-1287371708);
      b.setStyle(Paint.Style.FILL);
      b.setAntiAlias(true);
      c = new Paint();
      c.setColor(-1);
      c.setStyle(Paint.Style.STROKE);
      c.setStrokeWidth(6.0F);
      c.setAntiAlias(true);
    }
    a();
  }
  
  private void a()
  {
    Object localObject = getResources().getDisplayMetrics();
    int i = (int)(d * density);
    float f = d;
    localObject = new RelativeLayout.LayoutParams(i, (int)(density * f));
    ((RelativeLayout.LayoutParams)localObject).addRule(10);
    ((RelativeLayout.LayoutParams)localObject).addRule(11);
    setLayoutParams((ViewGroup.LayoutParams)localObject);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (e)
    {
      if ((paramCanvas.isHardwareAccelerated()) && (Build.VERSION.SDK_INT < 17)) {
        setLayerType(1, null);
      }
      int i = Math.min(paramCanvas.getWidth(), paramCanvas.getHeight());
      int j = i / 2;
      int k = i / 2;
      int m = j * 2 / 3;
      paramCanvas.drawCircle(j, k, m, a);
      paramCanvas.drawCircle(j, k, m - 2, b);
      j = i / 3;
      i /= 3;
      paramCanvas.drawLine(j, i, j * 2, i * 2, c);
      paramCanvas.drawLine(j * 2, i, j, i * 2, c);
    }
    super.onDraw(paramCanvas);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */