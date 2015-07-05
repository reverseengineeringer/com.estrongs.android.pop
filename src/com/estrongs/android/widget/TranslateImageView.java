package com.estrongs.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.estrongs.android.pop.esclasses.ESImageView;

public class TranslateImageView
  extends ESImageView
{
  private Handler a = new Handler();
  private Bitmap b;
  private int c;
  private int d;
  private int e;
  private int f = 250;
  private long g;
  private bu h;
  private bt i;
  private Rect j = new Rect();
  private boolean k = false;
  private Runnable l;
  private Drawable m;
  private Drawable n;
  private Paint o;
  private ColorMatrixColorFilter r;
  private ColorMatrix s;
  private int t;
  private int u;
  private int v;
  private int w;
  private int x;
  private VelocityTracker y;
  
  public TranslateImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public TranslateImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    c = 0;
    d = 0;
    e = 0;
    k = false;
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    w = localViewConfiguration.getScaledTouchSlop();
    x = localViewConfiguration.getScaledMinimumFlingVelocity();
    l = new bs(this);
    m = getContext().getResources().getDrawable(2130837809);
    n = getContext().getResources().getDrawable(2130837808);
    o = new Paint();
    s = new ColorMatrix();
    r = new ColorMatrixColorFilter(s);
    o.setColorFilter(r);
  }
  
  private void b()
  {
    if (f == 0)
    {
      d = e;
      return;
    }
    int i3 = e;
    int i4 = c;
    int i2 = (int)(System.currentTimeMillis() - g);
    int i1 = i2;
    if (i2 > f) {
      i1 = f;
    }
    d = (i1 * (i3 - i4) / f + c);
  }
  
  private Rect c()
  {
    if (d > 0) {
      j.set(d, 0, getRight(), getBottom());
    }
    for (;;)
    {
      return j;
      if (d < 0) {
        j.set(0, 0, getRight() + d, getBottom());
      } else {
        j.set(0, 0, getRight(), getBottom());
      }
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (k) {
      return;
    }
    e = paramInt1;
    f = paramInt2;
    k = true;
    g = System.currentTimeMillis();
    a.post(l);
    invalidate();
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    int i1 = 0;
    super.dispatchDraw(paramCanvas);
    paramCanvas.save();
    for (;;)
    {
      try
      {
        if (k) {
          b();
        }
        i2 = b.getWidth();
        if (d <= 0) {
          continue;
        }
        if (d - m.getIntrinsicWidth() >= 0) {
          continue;
        }
        i1 = d;
        int i3 = Math.abs(d * 80 / i2);
        float[] arrayOfFloat = s.getArray();
        float f1 = 0 - i3;
        arrayOfFloat[14] = f1;
        arrayOfFloat[9] = f1;
        arrayOfFloat[4] = f1;
        s.set(arrayOfFloat);
        r = new ColorMatrixColorFilter(s);
        o.setColorFilter(r);
        paramCanvas.translate(d - i1, 0.0F);
        if (d <= 0) {
          continue;
        }
        paramCanvas.drawBitmap(b, i1, 0.0F, o);
        m.setBounds(i1 - m.getIntrinsicWidth(), 0, i1, getMeasuredHeight());
        m.draw(paramCanvas);
      }
      catch (Throwable localThrowable)
      {
        int i2;
        continue;
      }
      paramCanvas.restore();
      if (k) {
        a.post(l);
      }
      return;
      i1 = m.getIntrinsicWidth();
      continue;
      if (d < 0) {
        if (d + n.getIntrinsicWidth() < 0)
        {
          i1 = 0 - n.getIntrinsicWidth();
        }
        else
        {
          i1 = d;
          continue;
          if (d < 0)
          {
            paramCanvas.drawBitmap(b, i1, 0.0F, o);
            n.setBounds(i2 + i1, 0, i1 + i2 + n.getIntrinsicWidth(), getMeasuredHeight());
            n.draw(paramCanvas);
          }
          else
          {
            paramCanvas.drawBitmap(b, i1, 0.0F, o);
          }
        }
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    int i1 = (int)paramMotionEvent.getX();
    int i2 = (int)paramMotionEvent.getY();
    int i3;
    int i4;
    int i5;
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
    case 2: 
      label162:
      do
      {
        do
        {
          for (;;)
          {
            bool = super.onTouchEvent(paramMotionEvent);
            do
            {
              return bool;
            } while (!c().contains(i1, i2));
            u = i1;
            v = i2;
            y = VelocityTracker.obtain();
            y.addMovement(paramMotionEvent);
          }
          if (t != -1) {
            break;
          }
          i3 = u;
          i4 = u;
          i5 = v;
          if ((int)Math.sqrt((i2 - v) * (i2 - i5) + (i1 - i3) * (i1 - i4)) > w) {
            t = 0;
          }
        } while (t != 0);
        i2 = u;
      } while (t != 0);
      d = (i1 - i2 + e);
      if (e > 0) {
        if (d < 0) {
          d = 0;
        }
      }
      for (;;)
      {
        invalidate();
        break;
        y.addMovement(paramMotionEvent);
        break label162;
        if (d > e)
        {
          d = e;
          continue;
          if (e < 0) {
            if (d > 0) {
              d = 0;
            } else if (d < e) {
              d = e;
            }
          }
        }
      }
    }
    if (t == -1)
    {
      i3 = u;
      i4 = u;
      i5 = v;
      if ((int)Math.sqrt((i1 - i4) * (i1 - i3) + (i2 - v) * (i2 - i5)) > w) {
        t = 0;
      }
    }
    if (t == 0)
    {
      y.computeCurrentVelocity(100);
      i1 = (int)y.getXVelocity();
      if (e > 0) {
        if (d >= e)
        {
          h = null;
          i1 = (d - e) * 250 / e;
          c = d;
          a(e, i1);
          label444:
          t = -1;
        }
      }
    }
    for (;;)
    {
      y.recycle();
      break;
      if ((i1 > 0) && (i1 > x))
      {
        h = null;
        i1 = (e - d) * 250 / e;
        c = d;
        a(e, i1);
        break label444;
      }
      h = null;
      i1 = (d + 0) * 250 / e;
      c = d;
      a(0, i1);
      break label444;
      if (e >= 0) {
        break label444;
      }
      if (d >= e)
      {
        if ((i1 < 0) && (i1 < 0 - x))
        {
          h = null;
          i1 = (e - d) * 250 / e;
          c = d;
          a(e, i1);
          break label444;
        }
        h = null;
        i1 = (d + 0) * 250 / e;
        c = d;
        a(0, i1);
        break label444;
      }
      h = null;
      i1 = (d - e) * 250 / e;
      c = d;
      a(e, i1);
      break label444;
      if (t == -1) {
        a(0, 300);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.TranslateImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */