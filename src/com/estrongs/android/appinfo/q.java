package com.estrongs.android.appinfo;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.estrongs.android.pop.FexApplication;

public class q
  extends Drawable
{
  static Bitmap a = null;
  static Paint b = new Paint(1);
  static Rect c = new Rect();
  static RectF d = new RectF();
  Drawable e;
  ColorFilter f;
  
  q(Drawable paramDrawable)
  {
    e = paramDrawable;
    if (a == null)
    {
      paramDrawable = FexApplication.a().getResources().getDrawable(2130837894);
      if ((paramDrawable instanceof BitmapDrawable)) {
        a = ((BitmapDrawable)paramDrawable).getBitmap();
      }
    }
  }
  
  public Bitmap a()
  {
    if (a != null)
    {
      Bitmap localBitmap = Bitmap.createBitmap(getIntrinsicWidth(), getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
      draw(new Canvas(localBitmap));
      return localBitmap;
    }
    return null;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (a != null)
    {
      cleft = 0;
      ctop = 0;
      cbottom = a.getWidth();
      cright = a.getHeight();
      paramCanvas.drawBitmap(a, c, getBounds(), b);
    }
    if ((e instanceof BitmapDrawable))
    {
      float f1 = getBounds().width() / 60.0F;
      dleft = (2.0F * f1);
      dtop = (11.0F * f1);
      dright = (48.0F * f1);
      dbottom = (f1 * 57.0F);
      d.offset(getBoundsleft, getBoundstop);
      b.setColorFilter(f);
      Bitmap localBitmap = ((BitmapDrawable)e).getBitmap();
      cleft = 0;
      ctop = 0;
      cright = localBitmap.getWidth();
      cbottom = localBitmap.getHeight();
      paramCanvas.drawBitmap(localBitmap, c, d, b);
    }
  }
  
  public int getIntrinsicHeight()
  {
    if (a != null) {
      return a.getHeight();
    }
    return super.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    if (a != null) {
      return a.getWidth();
    }
    return super.getIntrinsicWidth();
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    f = paramColorFilter;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */