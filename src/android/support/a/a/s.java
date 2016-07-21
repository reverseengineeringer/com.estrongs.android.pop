package android.support.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

class s
  extends Drawable.ConstantState
{
  int a;
  r b;
  ColorStateList c = null;
  PorterDuff.Mode d = l.b;
  boolean e;
  Bitmap f;
  ColorStateList g;
  PorterDuff.Mode h;
  int i;
  boolean j;
  boolean k;
  Paint l;
  
  public s()
  {
    b = new r();
  }
  
  public s(s params)
  {
    if (params != null)
    {
      a = a;
      b = new r(b);
      if (r.b(b) != null) {
        r.a(b, new Paint(r.b(b)));
      }
      if (r.c(b) != null) {
        r.b(b, new Paint(r.c(b)));
      }
      c = c;
      d = d;
      e = e;
    }
  }
  
  public Paint a(ColorFilter paramColorFilter)
  {
    if ((!a()) && (paramColorFilter == null)) {
      return null;
    }
    if (l == null)
    {
      l = new Paint();
      l.setFilterBitmap(true);
    }
    l.setAlpha(b.a());
    l.setColorFilter(paramColorFilter);
    return l;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    f.eraseColor(0);
    Canvas localCanvas = new Canvas(f);
    b.a(localCanvas, paramInt1, paramInt2, null);
  }
  
  public void a(Canvas paramCanvas, ColorFilter paramColorFilter, Rect paramRect)
  {
    paramColorFilter = a(paramColorFilter);
    paramCanvas.drawBitmap(f, null, paramRect, paramColorFilter);
  }
  
  public boolean a()
  {
    return b.a() < 255;
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    if ((f == null) || (!c(paramInt1, paramInt2)))
    {
      f = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
      k = true;
    }
  }
  
  public boolean b()
  {
    return (!k) && (g == c) && (h == d) && (j == e) && (i == b.a());
  }
  
  public void c()
  {
    g = c;
    h = d;
    i = b.a();
    j = e;
    k = false;
  }
  
  public boolean c(int paramInt1, int paramInt2)
  {
    return (paramInt1 == f.getWidth()) && (paramInt2 == f.getHeight());
  }
  
  public int getChangingConfigurations()
  {
    return a;
  }
  
  public Drawable newDrawable()
  {
    return new l(this, null);
  }
  
  public Drawable newDrawable(Resources paramResources)
  {
    return new l(this, null);
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */