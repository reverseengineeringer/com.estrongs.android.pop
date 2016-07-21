package android.support.design.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.support.v4.b.a.a;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

@TargetApi(21)
class at
  extends an
{
  private final Interpolator m;
  private InsetDrawable n;
  
  at(VisibilityAwareImageButton paramVisibilityAwareImageButton, ba paramba)
  {
    super(paramVisibilityAwareImageButton, paramba);
    if (paramVisibilityAwareImageButton.isInEditMode()) {}
    for (paramVisibilityAwareImageButton = null;; paramVisibilityAwareImageButton = AnimationUtils.loadInterpolator(k.getContext(), 17563661))
    {
      m = paramVisibilityAwareImageButton;
      return;
    }
  }
  
  private Animator a(Animator paramAnimator)
  {
    paramAnimator.setInterpolator(m);
    return paramAnimator;
  }
  
  public float a()
  {
    return k.getElevation();
  }
  
  public void a(float paramFloat)
  {
    k.setElevation(paramFloat);
    if (l.b()) {
      g();
    }
  }
  
  void a(int paramInt)
  {
    if ((c instanceof RippleDrawable))
    {
      ((RippleDrawable)c).setColor(ColorStateList.valueOf(paramInt));
      return;
    }
    super.a(paramInt);
  }
  
  void a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2)
  {
    b = a.f(k());
    a.a(b, paramColorStateList);
    if (paramMode != null) {
      a.a(b, paramMode);
    }
    if (paramInt2 > 0) {
      d = a(paramInt2, paramColorStateList);
    }
    for (paramColorStateList = new LayerDrawable(new Drawable[] { d, b });; paramColorStateList = b)
    {
      c = new RippleDrawable(ColorStateList.valueOf(paramInt1), paramColorStateList, null);
      e = c;
      l.a(c);
      return;
      d = null;
    }
  }
  
  void a(Rect paramRect)
  {
    if (l.b())
    {
      float f1 = l.a();
      float f2 = a() + g;
      int i = (int)Math.ceil(az.b(f2, f1, false));
      int j = (int)Math.ceil(az.a(f2, f1, false));
      paramRect.set(i, j, i, j);
      return;
    }
    paramRect.set(0, 0, 0, 0);
  }
  
  void a(int[] paramArrayOfInt) {}
  
  void b() {}
  
  void b(float paramFloat)
  {
    StateListAnimator localStateListAnimator = new StateListAnimator();
    localStateListAnimator.addState(h, a(ObjectAnimator.ofFloat(k, "translationZ", new float[] { paramFloat })));
    localStateListAnimator.addState(i, a(ObjectAnimator.ofFloat(k, "translationZ", new float[] { paramFloat })));
    localStateListAnimator.addState(j, a(ObjectAnimator.ofFloat(k, "translationZ", new float[] { 0.0F })));
    k.setStateListAnimator(localStateListAnimator);
    if (l.b()) {
      g();
    }
  }
  
  void b(Rect paramRect)
  {
    if (l.b())
    {
      n = new InsetDrawable(c, left, top, right, bottom);
      l.a(n);
      return;
    }
    l.a(c);
  }
  
  void c()
  {
    g();
  }
  
  boolean d()
  {
    return false;
  }
  
  l j()
  {
    return new m();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */