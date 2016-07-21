package android.support.design.internal;

import android.graphics.Rect;
import android.support.v4.view.bv;
import android.support.v4.view.cn;
import android.support.v4.view.fr;
import android.view.View;

class p
  implements bv
{
  p(ScrimInsetsFrameLayout paramScrimInsetsFrameLayout) {}
  
  public fr onApplyWindowInsets(View paramView, fr paramfr)
  {
    if (ScrimInsetsFrameLayout.a(a) == null) {
      ScrimInsetsFrameLayout.a(a, new Rect());
    }
    ScrimInsetsFrameLayout.a(a).set(paramfr.a(), paramfr.b(), paramfr.c(), paramfr.d());
    a.a(ScrimInsetsFrameLayout.a(a));
    paramView = a;
    if ((ScrimInsetsFrameLayout.a(a).isEmpty()) || (ScrimInsetsFrameLayout.b(a) == null)) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.setWillNotDraw(bool);
      cn.d(a);
      return paramfr.f();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */