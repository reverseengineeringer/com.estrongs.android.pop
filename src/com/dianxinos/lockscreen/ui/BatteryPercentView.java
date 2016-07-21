package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import com.dianxinos.lockscreen.aa;
import com.dianxinos.lockscreen.ab;

public class BatteryPercentView
  extends View
{
  private Paint a;
  private int b;
  private RectF c;
  private Rect d;
  private Rect e;
  private Bitmap f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  
  public BatteryPercentView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public BatteryPercentView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public BatteryPercentView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private int getBatteryHeight()
  {
    return (int)((k - i - j) / 100.0F * b);
  }
  
  public void a()
  {
    b();
    c();
    i = getResources().getDimensionPixelSize(aa.lock_screen_battery_percent_frame);
    j = getResources().getDimensionPixelSize(aa.lock_screen_battery_percent_top);
  }
  
  public void b()
  {
    a = new Paint();
  }
  
  public void c()
  {
    f = ((BitmapDrawable)getResources().getDrawable(ab.lock_screen_battery)).getBitmap();
    h = f.getHeight();
    g = f.getWidth();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawBitmap(f, d, e, a);
    a.setColor(1291845631);
    c.top = (k - getBatteryHeight());
    paramCanvas.drawRect(c, a);
    a.setColor(-1);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    k = paramInt2;
    c = new RectF(i, j + i, paramInt1 - i, paramInt2 - i);
    d = new Rect(0, 0, g, h);
    e = new Rect(0, 0, paramInt1, paramInt2);
  }
  
  public void setPercent(int paramInt)
  {
    if ((paramInt > 100) || (paramInt < 0)) {
      return;
    }
    b = paramInt;
    postInvalidate();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.BatteryPercentView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */