package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.design.b;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;

class ah
  extends aq
{
  az a;
  private int m;
  private bu n;
  private boolean o;
  
  ah(VisibilityAwareImageButton paramVisibilityAwareImageButton, ba paramba)
  {
    super(paramVisibilityAwareImageButton, paramba);
    m = paramVisibilityAwareImageButton.getResources().getInteger(17694720);
    n = new bu();
    n.a(paramVisibilityAwareImageButton);
    n.a(h, a(new al(this, null)));
    n.a(i, a(new al(this, null)));
    n.a(j, a(new am(this, null)));
  }
  
  private Animation a(Animation paramAnimation)
  {
    paramAnimation.setInterpolator(a.b);
    paramAnimation.setDuration(m);
    return paramAnimation;
  }
  
  private static ColorStateList b(int paramInt)
  {
    return new ColorStateList(new int[][] { i, h, new int[0] }, new int[] { paramInt, paramInt, 0 });
  }
  
  float a()
  {
    return f;
  }
  
  void a(float paramFloat)
  {
    if (a != null)
    {
      a.a(paramFloat, g + paramFloat);
      g();
    }
  }
  
  void a(int paramInt)
  {
    if (c != null) {
      android.support.v4.b.a.a.a(c, b(paramInt));
    }
  }
  
  void a(ColorStateList paramColorStateList)
  {
    if (b != null) {
      android.support.v4.b.a.a.a(b, paramColorStateList);
    }
    if (d != null) {
      d.a(paramColorStateList);
    }
  }
  
  void a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2)
  {
    b = android.support.v4.b.a.a.f(k());
    android.support.v4.b.a.a.a(b, paramColorStateList);
    if (paramMode != null) {
      android.support.v4.b.a.a.a(b, paramMode);
    }
    c = android.support.v4.b.a.a.f(k());
    android.support.v4.b.a.a.a(c, b(paramInt1));
    if (paramInt2 > 0)
    {
      d = a(paramInt2, paramColorStateList);
      paramColorStateList = new Drawable[3];
      paramColorStateList[0] = d;
      paramColorStateList[1] = b;
      paramColorStateList[2] = c;
    }
    for (;;)
    {
      e = new LayerDrawable(paramColorStateList);
      a = new az(k.getResources(), e, l.a(), f, f + g);
      a.a(false);
      l.a(a);
      return;
      d = null;
      paramColorStateList = new Drawable[2];
      paramColorStateList[0] = b;
      paramColorStateList[1] = c;
    }
  }
  
  void a(PorterDuff.Mode paramMode)
  {
    if (b != null) {
      android.support.v4.b.a.a.a(b, paramMode);
    }
  }
  
  void a(Rect paramRect)
  {
    a.getPadding(paramRect);
  }
  
  void a(as paramas, boolean paramBoolean)
  {
    if ((o) || (k.getVisibility() != 0))
    {
      if (paramas != null) {
        paramas.b();
      }
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(k.getContext(), b.design_fab_out);
    localAnimation.setInterpolator(a.c);
    localAnimation.setDuration(200L);
    localAnimation.setAnimationListener(new ai(this, paramBoolean, paramas));
    k.startAnimation(localAnimation);
  }
  
  void a(int[] paramArrayOfInt)
  {
    n.a(paramArrayOfInt);
  }
  
  void b()
  {
    n.b();
  }
  
  void b(float paramFloat)
  {
    if (a != null)
    {
      a.c(f + paramFloat);
      g();
    }
  }
  
  void b(as paramas, boolean paramBoolean)
  {
    if ((k.getVisibility() != 0) || (o))
    {
      k.clearAnimation();
      k.a(0, paramBoolean);
      localAnimation = AnimationUtils.loadAnimation(k.getContext(), b.design_fab_in);
      localAnimation.setDuration(200L);
      localAnimation.setInterpolator(a.d);
      localAnimation.setAnimationListener(new aj(this, paramas));
      k.startAnimation(localAnimation);
    }
    while (paramas == null)
    {
      Animation localAnimation;
      return;
    }
    paramas.a();
  }
  
  void c() {}
}

/* Location:
 * Qualified Name:     android.support.design.widget.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */