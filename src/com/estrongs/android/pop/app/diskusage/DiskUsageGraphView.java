package com.estrongs.android.pop.app.diskusage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;

public class DiskUsageGraphView
  extends View
{
  private static int f = 6;
  private static DisplayMetrics m = new DisplayMetrics();
  int[] a = null;
  float[] b = null;
  int[] c = null;
  long[] d = null;
  private boolean e = false;
  private Path g = null;
  private int h = 0;
  private int i = 0;
  private Drawable j = null;
  private Paint k = new Paint();
  private Rect l = new Rect();
  
  public DiskUsageGraphView(Context paramContext)
  {
    super(paramContext);
  }
  
  public DiskUsageGraphView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public DiskUsageGraphView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private Path a(int paramInt1, int paramInt2)
  {
    Path localPath = new Path();
    double d2 = f;
    if (mdensity == 0.0F) {}
    for (double d1 = 1.5D;; d1 = mdensity)
    {
      int n = (int)(d1 * d2);
      localPath.moveTo(n, 0.0F);
      localPath.lineTo(paramInt1 - n * 2, 0.0F);
      localPath.arcTo(new RectF(paramInt1 - n * 2, 0.0F, paramInt1, n * 2), 270.0F, 90.0F);
      localPath.lineTo(paramInt1, paramInt2 - n);
      localPath.arcTo(new RectF(paramInt1 - n * 2, paramInt2 - n * 2, paramInt1, paramInt2), 0.0F, 90.0F);
      localPath.lineTo(n, paramInt2);
      localPath.arcTo(new RectF(0.0F, paramInt2 - n * 2, n * 2, paramInt2), 90.0F, 90.0F);
      localPath.lineTo(0.0F, n);
      localPath.arcTo(new RectF(0.0F, 0.0F, n * 2, n * 2), 180.0F, 90.0F);
      return localPath;
    }
  }
  
  public void a(long[] paramArrayOfLong, int[] paramArrayOfInt)
  {
    b = new float[paramArrayOfLong.length - 1];
    float f2 = (float)paramArrayOfLong[(paramArrayOfLong.length - 1)];
    int n = 0;
    if (n < paramArrayOfLong.length - 1)
    {
      float[] arrayOfFloat = b;
      if (paramArrayOfLong[(paramArrayOfLong.length - 1)] == 0L) {}
      for (float f1 = 0.0F;; f1 = (float)paramArrayOfLong[n] / f2)
      {
        arrayOfFloat[n] = f1;
        n += 1;
        break;
      }
    }
    d = paramArrayOfLong;
    c = paramArrayOfInt;
    e = true;
    postInvalidate();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i3 = getWidth();
    int i4 = getHeight();
    if ((h != i3) || (i != i4) || (g == null))
    {
      g = a(i3, i4);
      h = i3;
      i = i4;
    }
    int i1;
    int n;
    if ((e) || (a == null) || (d[(d.length - 1)] != 0L))
    {
      e = false;
      a = new int[b.length];
      i1 = 0;
      int i2 = 0;
      if (i1 < b.length)
      {
        if (d[i1] == 0L)
        {
          a[i1] = 0;
          n = i2;
        }
        for (;;)
        {
          i1 += 1;
          i2 = n;
          break;
          a[i1] = ((int)(i4 * b[i1]));
          if (a[i1] < 2)
          {
            n = i2 + (2 - a[i1]);
            a[i1] = 2;
          }
          else
          {
            n = i2;
            if (i2 != 0)
            {
              int[] arrayOfInt;
              if (a[i1] > i2 + 2)
              {
                arrayOfInt = a;
                arrayOfInt[i1] -= i2;
                n = 0;
              }
              else
              {
                n = i2;
                if (a[i1] > 4)
                {
                  arrayOfInt = a;
                  arrayOfInt[i1] -= 2;
                  n = i2 - 2;
                }
              }
            }
          }
        }
      }
    }
    paramCanvas.save();
    try
    {
      paramCanvas.clipPath(g);
      try
      {
        k.setDither(true);
        k.setAntiAlias(true);
        if (d[(d.length - 1)] != 0L)
        {
          i1 = 0;
          n = 0;
          if (i1 < a.length - 1)
          {
            if (a[i1] == 0) {}
            for (;;)
            {
              i1 += 1;
              break;
              k.setColor(c[i1]);
              paramCanvas.drawRect(0.0F, n, i3, a[i1] + n, k);
              n = a[i1] + n;
            }
          }
          if (a[(a.length - 1)] != 0)
          {
            k.setColor(c[(a.length - 1)]);
            paramCanvas.drawRect(0.0F, n, i3, i4, k);
          }
        }
        for (;;)
        {
          if (j == null) {
            j = getContext().getResources().getDrawable(2130838059);
          }
          paramCanvas.getClipBounds(l);
          j.setBounds(l);
          j.draw(paramCanvas);
          paramCanvas.restore();
          return;
          k.setColor(-4012083);
          paramCanvas.drawRect(0.0F, 0, i3, i4, k);
        }
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.DiskUsageGraphView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */