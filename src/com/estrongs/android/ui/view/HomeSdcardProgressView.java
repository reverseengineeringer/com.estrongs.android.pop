package com.estrongs.android.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.RectF;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import java.text.DecimalFormat;

public class HomeSdcardProgressView
  extends View
{
  private Paint a;
  private TextPaint b;
  private TextPaint c;
  private Paint d;
  private RectF e;
  private PointF f;
  private int g = 2131165319;
  private int h = 2131165262;
  private int i = 2131165255;
  private String j = "#000000";
  private int k = 2131558514;
  private int l = 2131558482;
  private DecimalFormat m = new DecimalFormat("#.##");
  private float n;
  private int o;
  private float p;
  private int q;
  private int r;
  
  public HomeSdcardProgressView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public HomeSdcardProgressView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public HomeSdcardProgressView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private int a(int paramInt)
  {
    return getContext().getResources().getDimensionPixelSize(paramInt);
  }
  
  private void a()
  {
    a = new Paint(1);
    a.setStyle(Paint.Style.FILL);
    a.setColor(getResources().getColor(l));
    b = new TextPaint(1);
    b.setColor(Color.parseColor(j));
    b.setTextSize(a(h));
    c = new TextPaint(1);
    c.setColor(Color.parseColor(j));
    c.setTextSize(a(i));
    d = new Paint(1);
    d.setStyle(Paint.Style.FILL);
    d.setColor(getResources().getColor(k));
    d.setAlpha(250);
  }
  
  private void a(Canvas paramCanvas)
  {
    a.setColor(o);
    paramCanvas.drawArc(e, -90.0F, p, true, a);
  }
  
  private void b(Canvas paramCanvas)
  {
    paramCanvas.drawCircle(f.x, f.y, r, d);
  }
  
  private void c(Canvas paramCanvas)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if ((n > 0.0F) && (n <= 0.01F))
    {
      localStringBuffer.append(0.01F);
      float f1 = (b.descent() - b.ascent()) / 2.0F - b.descent();
      float f2 = (b.measureText(localStringBuffer.toString()) + c.measureText("%")) / 2.0F;
      paramCanvas.drawText(localStringBuffer.toString(), f.x - f2, f.y + f1, b);
      float f3 = f.x;
      paramCanvas.drawText("%", b.measureText(localStringBuffer.toString()) + (f3 - f2), f1 + f.y, c);
      return;
    }
    if (n > 10.0F) {}
    for (Object localObject = Integer.valueOf(Math.round(n));; localObject = m.format(n))
    {
      localStringBuffer.append(localObject);
      break;
    }
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    if (paramLong1 <= 0L) {}
    for (n = 0.0F;; n = ((float)paramLong1 * 1.0F / (float)paramLong2 * 100.0F))
    {
      p = ((float)paramLong1 * 1.0F / (float)paramLong2 * 360.0F);
      postInvalidate();
      return;
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawColor(0);
    if (getWidth() > getHeight()) {}
    for (int i1 = getHeight() / 2;; i1 = getWidth() / 2)
    {
      q = i1;
      r = a(2131165280);
      e = new RectF(0.0F, 0.0F, getWidth(), getHeight());
      f = new PointF(e.centerX(), e.centerY());
      a(paramCanvas);
      b(paramCanvas);
      c(paramCanvas);
      return;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i1 = a(g);
    setMeasuredDimension(Math.max(getSuggestedMinimumWidth(), resolveSize(i1, paramInt1)), Math.max(getSuggestedMinimumHeight(), resolveSize(i1, paramInt2)));
  }
  
  public void setProgressColor(int paramInt)
  {
    o = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.HomeSdcardProgressView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */