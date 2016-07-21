package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.design.d;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

abstract class aq
{
  static final int[] h = { 16842919, 16842910 };
  static final int[] i = { 16842908, 16842910 };
  static final int[] j = new int[0];
  private final Rect a = new Rect();
  Drawable b;
  Drawable c;
  l d;
  Drawable e;
  float f;
  float g;
  final VisibilityAwareImageButton k;
  final ba l;
  private ViewTreeObserver.OnPreDrawListener m;
  
  aq(VisibilityAwareImageButton paramVisibilityAwareImageButton, ba paramba)
  {
    k = paramVisibilityAwareImageButton;
    l = paramba;
  }
  
  private void l()
  {
    if (m == null) {
      m = new ar(this);
    }
  }
  
  abstract float a();
  
  l a(int paramInt, ColorStateList paramColorStateList)
  {
    Resources localResources = k.getResources();
    l locall = j();
    locall.a(localResources.getColor(d.design_fab_stroke_top_outer_color), localResources.getColor(d.design_fab_stroke_top_inner_color), localResources.getColor(d.design_fab_stroke_end_inner_color), localResources.getColor(d.design_fab_stroke_end_outer_color));
    locall.a(paramInt);
    locall.a(paramColorStateList);
    return locall;
  }
  
  abstract void a(float paramFloat);
  
  abstract void a(int paramInt);
  
  abstract void a(ColorStateList paramColorStateList);
  
  abstract void a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2);
  
  abstract void a(PorterDuff.Mode paramMode);
  
  abstract void a(Rect paramRect);
  
  abstract void a(as paramas, boolean paramBoolean);
  
  abstract void a(int[] paramArrayOfInt);
  
  abstract void b();
  
  abstract void b(float paramFloat);
  
  void b(Rect paramRect) {}
  
  abstract void b(as paramas, boolean paramBoolean);
  
  abstract void c();
  
  final void c(float paramFloat)
  {
    if (f != paramFloat)
    {
      f = paramFloat;
      a(paramFloat);
    }
  }
  
  final void d(float paramFloat)
  {
    if (g != paramFloat)
    {
      g = paramFloat;
      b(paramFloat);
    }
  }
  
  boolean d()
  {
    return false;
  }
  
  void e() {}
  
  final Drawable f()
  {
    return e;
  }
  
  final void g()
  {
    Rect localRect = a;
    a(localRect);
    b(localRect);
    l.a(left, top, right, bottom);
  }
  
  void h()
  {
    if (d())
    {
      l();
      k.getViewTreeObserver().addOnPreDrawListener(m);
    }
  }
  
  void i()
  {
    if (m != null)
    {
      k.getViewTreeObserver().removeOnPreDrawListener(m);
      m = null;
    }
  }
  
  l j()
  {
    return new l();
  }
  
  GradientDrawable k()
  {
    GradientDrawable localGradientDrawable = new GradientDrawable();
    localGradientDrawable.setShape(1);
    localGradientDrawable.setColor(-1);
    return localGradientDrawable;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */