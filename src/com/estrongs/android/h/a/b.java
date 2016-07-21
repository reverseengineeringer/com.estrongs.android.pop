package com.estrongs.android.h.a;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;

public class b
  extends Drawable
{
  protected float a;
  protected final RectF b = new RectF();
  protected final RectF c;
  protected final BitmapShader d;
  protected final Paint e;
  protected final Paint f;
  protected final float g;
  protected float h;
  
  public b(Bitmap paramBitmap, Integer paramInteger, float paramFloat)
  {
    a = (Math.min(paramBitmap.getWidth(), paramBitmap.getHeight()) / 2);
    d = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    c = new RectF(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight());
    e = new Paint();
    e.setAntiAlias(true);
    e.setShader(d);
    e.setFilterBitmap(true);
    e.setDither(true);
    if (paramInteger == null) {
      f = null;
    }
    for (;;)
    {
      g = paramFloat;
      h = (a - paramFloat / 2.0F);
      return;
      f = new Paint();
      f.setStyle(Paint.Style.STROKE);
      f.setColor(paramInteger.intValue());
      f.setStrokeWidth(paramFloat);
      f.setAntiAlias(true);
    }
  }
  
  public RectF a()
  {
    return c;
  }
  
  public void draw(Canvas paramCanvas)
  {
    paramCanvas.drawCircle(a, a, a, e);
    if (f != null) {
      paramCanvas.drawCircle(a, a, h, f);
    }
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    b.set(0.0F, 0.0F, paramRect.width(), paramRect.height());
    a = (Math.min(paramRect.width(), paramRect.height()) / 2);
    h = (a - g / 2.0F);
    paramRect = new Matrix();
    paramRect.setRectToRect(c, b, Matrix.ScaleToFit.FILL);
    d.setLocalMatrix(paramRect);
  }
  
  public void setAlpha(int paramInt)
  {
    e.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    e.setColorFilter(paramColorFilter);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.h.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */