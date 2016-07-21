package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.PathShape;
import android.os.Build.VERSION;
import android.view.View;
import android.widget.TextView;

public class hh
{
  private static int a;
  private static int b;
  private Path c = null;
  private PathShape d = null;
  private ShapeDrawable e = null;
  private TextView f = null;
  private int g = 0;
  private float h = 0.0F;
  private RectF i = null;
  private final float j = -90.0F;
  
  public hh()
  {
    a = 3;
    b = 1;
  }
  
  public hh(Context paramContext, int paramInt1, int paramInt2)
  {
    a = lr.b(2);
    b = lr.b(1);
    g = a(paramInt1, paramInt2);
    a(paramContext);
  }
  
  private int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2) {
      return paramInt1 / 2;
    }
    return paramInt2 / 2;
  }
  
  private void a(Context paramContext)
  {
    f = new TextView(paramContext);
    f.setTextColor(-1);
    f.setTypeface(Typeface.MONOSPACE);
    f.setTextSize(1, 12.0F);
    f.setGravity(17);
  }
  
  @SuppressLint({"NewApi"})
  private void d(int paramInt)
  {
    Drawable localDrawable = c(paramInt);
    if (Build.VERSION.SDK_INT >= 16)
    {
      f.setBackground(localDrawable);
      return;
    }
    f.setBackgroundDrawable(localDrawable);
  }
  
  private void e(int paramInt)
  {
    js.a().a(new hh.2(this, paramInt));
  }
  
  private void f(int paramInt)
  {
    js.a().a(new hh.3(this, paramInt));
  }
  
  public View a()
  {
    return f;
  }
  
  public void a(int paramInt)
  {
    if (f != null)
    {
      e(paramInt);
      f(paramInt);
    }
  }
  
  public void b(int paramInt)
  {
    h = (360.0F / (paramInt / 1000));
    js.a().a(new hh.1(this, paramInt));
  }
  
  public Drawable c(int paramInt)
  {
    Object localObject = null;
    if (0 == 0)
    {
      i = new RectF();
      i.set(a, a, g - a, g - a);
      c = new Path();
      c.arcTo(i, -90.0F, -paramInt * h + 1.0F, false);
      d = new PathShape(c, g, g);
      e = new ShapeDrawable(d);
      e.setIntrinsicHeight(g * 2);
      e.setIntrinsicWidth(g * 2);
      e.getPaint().setStyle(Paint.Style.STROKE);
      e.getPaint().setColor(-1);
      e.getPaint().setStrokeWidth(b);
      e.getPaint().setAntiAlias(true);
      localObject = new GradientDrawable();
      ((GradientDrawable)localObject).setColor(-16777216);
      ((GradientDrawable)localObject).setShape(1);
      ((GradientDrawable)localObject).setAlpha(178);
      localObject = new LayerDrawable(new Drawable[] { localObject, e });
    }
    return (Drawable)localObject;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */