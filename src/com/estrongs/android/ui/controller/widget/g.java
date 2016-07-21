package com.estrongs.android.ui.controller.widget;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.DisplayMetrics;

public abstract class g
{
  public static float a(Resources paramResources, float paramFloat)
  {
    return getDisplayMetricsdensityDpi / 160.0F * paramFloat;
  }
  
  public static int a(Paint paramPaint, String paramString)
  {
    int j = 0;
    int i = 0;
    int k = j;
    if (paramString != null)
    {
      k = j;
      if (paramString.length() > 0)
      {
        int m = paramString.length();
        float[] arrayOfFloat = new float[m];
        paramPaint.getTextWidths(paramString, arrayOfFloat);
        j = 0;
        for (;;)
        {
          k = i;
          if (j >= m) {
            break;
          }
          k = (int)Math.ceil(arrayOfFloat[j]);
          j += 1;
          i = k + i;
        }
      }
    }
    return k;
  }
  
  public static void a(Canvas paramCanvas, Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    Rect localRect1 = new Rect();
    Rect localRect2 = new Rect();
    left = paramInt5;
    top = paramInt6;
    right = (paramInt5 + paramInt3);
    bottom = (paramInt6 + paramInt4);
    left = paramInt1;
    top = paramInt2;
    right = (paramInt1 + paramInt3);
    bottom = (paramInt2 + paramInt4);
    paramCanvas.drawBitmap(paramBitmap, null, localRect2, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.widget.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */