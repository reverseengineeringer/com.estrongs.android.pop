package com.estrongs.android.pop.app.unlock;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;

public class c
  extends Drawable
{
  protected final float a;
  protected final RectF b = new RectF();
  protected final RectF c;
  protected final BitmapShader d;
  protected final Paint e;
  private int f;
  
  public c(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    a = paramInt1;
    f = paramInt2;
    d = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    c = new RectF(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight());
    e = new Paint();
    e.setAntiAlias(true);
    e.setShader(d);
  }
  
  public void draw(Canvas paramCanvas)
  {
    paramCanvas.drawRoundRect(b, a, a, e);
    int i = f ^ 0xF;
    if ((i & 0x1) != 0) {
      paramCanvas.drawRect(0.0F, 0.0F, a, a, e);
    }
    if ((i & 0x2) != 0) {
      paramCanvas.drawRect(b.right - a, 0.0F, b.right, a, e);
    }
    if ((i & 0x4) != 0) {
      paramCanvas.drawRect(0.0F, b.bottom - a, a, b.bottom, e);
    }
    if ((i & 0x8) != 0) {
      paramCanvas.drawRect(b.right - a, b.bottom - a, b.right, b.bottom, e);
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
 * Qualified Name:     com.estrongs.android.pop.app.unlock.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */