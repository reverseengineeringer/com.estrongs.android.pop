package com.estrongs.android.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;

public class ColorPickerView
  extends View
{
  public static float a = 1.0F;
  private Paint b;
  private Paint c;
  private final int[] d = { -65536, -65281, -16776961, -16711681, -16711936, 65280, -1, -16777216, -65536 };
  private a e;
  private int f;
  private RectF g = new RectF();
  private boolean h;
  private boolean i;
  private int j = -1;
  private int k = -1;
  private int l = -1;
  
  public ColorPickerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public ColorPickerView(Context paramContext, a parama, int paramInt)
  {
    super(paramContext);
    e = parama;
    c.setColor(paramInt);
    a();
  }
  
  private int a(int paramInt1, int paramInt2, float paramFloat)
  {
    return Math.round((paramInt2 - paramInt1) * paramFloat) + paramInt1;
  }
  
  private int a(int[] paramArrayOfInt, float paramFloat)
  {
    if (paramFloat <= 0.0F) {
      return paramArrayOfInt[0];
    }
    if (paramFloat >= 1.0F) {
      return paramArrayOfInt[(paramArrayOfInt.length - 1)];
    }
    paramFloat = (paramArrayOfInt.length - 1) * paramFloat;
    int n = (int)paramFloat;
    paramFloat -= n;
    int m = paramArrayOfInt[n];
    n = paramArrayOfInt[(n + 1)];
    return Color.argb(a(Color.alpha(m), Color.alpha(n), paramFloat), a(Color.red(m), Color.red(n), paramFloat), a(Color.green(m), Color.green(n), paramFloat), a(Color.blue(m), Color.blue(n), paramFloat));
  }
  
  private void a()
  {
    SweepGradient localSweepGradient = new SweepGradient(0.0F, 0.0F, d, null);
    b = new Paint(1);
    b.setShader(localSweepGradient);
    b.setStyle(Paint.Style.STROKE);
    c = new Paint(1);
    c.setStrokeWidth(5.0F);
  }
  
  public int getCurrentColor()
  {
    return f;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    b.setStrokeWidth(j * 0.4F);
    float f1 = j - b.getStrokeWidth() * 0.5F;
    paramCanvas.translate(j, j);
    g.set(-f1, -f1, f1, f1);
    paramCanvas.drawOval(g, b);
    paramCanvas.drawCircle(0.0F, 0.0F, l, c);
    int m;
    if (h)
    {
      m = c.getColor();
      c.setStyle(Paint.Style.STROKE);
      if (!i) {
        break label170;
      }
      c.setAlpha(255);
    }
    for (;;)
    {
      paramCanvas.drawCircle(0.0F, 0.0F, l + c.getStrokeWidth(), c);
      c.setStyle(Paint.Style.FILL);
      c.setColor(m);
      return;
      label170:
      c.setAlpha(128);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt1 = Math.min(View.MeasureSpec.getSize(paramInt1), View.MeasureSpec.getSize(paramInt2)) / 2;
    j = paramInt1;
    k = paramInt1;
    l = ((int)(paramInt1 * 0.3D));
    setMeasuredDimension(j * 2, k * 2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX() - j;
    float f2 = paramMotionEvent.getY() - k;
    boolean bool;
    if (Math.sqrt(f1 * f1 + f2 * f2) <= l)
    {
      bool = true;
      switch (paramMotionEvent.getAction())
      {
      }
    }
    label138:
    do
    {
      do
      {
        return true;
        bool = false;
        break;
        h = bool;
        if (bool)
        {
          i = true;
          invalidate();
          return true;
        }
        if (!h) {
          break label138;
        }
      } while (i == bool);
      i = bool;
      invalidate();
      return true;
      f2 = (float)Math.atan2(f2, f1) / 6.283185F;
      f1 = f2;
      if (f2 < 0.0F) {
        f1 = f2 + 1.0F;
      }
      c.setColor(a(d, f1));
      f = c.getColor();
      e.a(f);
      invalidate();
      return true;
    } while (!h);
    e.a(c.getColor());
    h = false;
    invalidate();
    return true;
  }
  
  public void setColor(int paramInt)
  {
    c.setColor(paramInt);
    f = paramInt;
    if (e != null) {
      e.a(paramInt);
    }
    invalidate();
  }
  
  public void setOnColorChangeListener(a parama)
  {
    e = parama;
  }
  
  public void setScale(float paramFloat)
  {
    a = paramFloat;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ColorPickerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */