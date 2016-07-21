package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.dianxinos.lockscreen.aa;

public class InfoProgressView
  extends View
{
  private Paint a;
  private float b;
  private RectF c;
  private int d;
  private int e;
  private int f;
  private float g;
  
  public InfoProgressView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public InfoProgressView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public InfoProgressView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    d = paramContext.getResources().getDimensionPixelSize(aa.lock_screen_info_cycle_progress_width);
    a = new Paint();
    a.setAntiAlias(true);
    a.setStyle(Paint.Style.STROKE);
    a.setStrokeWidth(d);
    c = new RectF();
  }
  
  private void a(Canvas paramCanvas)
  {
    a.setStyle(Paint.Style.STROKE);
    a.setColor(-1694498817);
    paramCanvas.drawArc(c, -90.0F, b, false, a);
    a.setStyle(Paint.Style.FILL);
    a.setColor(-12220187);
    paramCanvas.drawCircle(e, f, g, a);
  }
  
  public void a(int paramInt)
  {
    int i;
    if (paramInt <= 0) {
      i = 0;
    }
    for (;;)
    {
      b = (3.6F * i);
      postInvalidate();
      return;
      if (paramInt >= 100)
      {
        i = 100;
      }
      else if (paramInt <= 1)
      {
        i = 1;
      }
      else
      {
        i = paramInt;
        if (paramInt >= 99) {
          i = 99;
        }
      }
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    a(paramCanvas);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (d % 2 == 1) {
      d += 1;
    }
    paramInt3 = d >> 1;
    if (paramInt1 > paramInt2) {}
    for (;;)
    {
      paramInt1 = paramInt2;
      if (paramInt2 % 2 == 1) {
        paramInt1 = paramInt2 - 1;
      }
      c.left = paramInt3;
      c.top = paramInt3;
      c.right = (paramInt1 - paramInt3);
      c.bottom = (paramInt1 - paramInt3);
      paramInt1 >>= 1;
      e = paramInt1;
      f = paramInt1;
      g = (paramInt1 - d);
      return;
      paramInt2 = paramInt1;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.InfoProgressView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */