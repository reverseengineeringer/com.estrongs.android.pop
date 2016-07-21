package android.support.v4.view;

import android.graphics.Rect;
import android.view.View;

class eg
  implements bv
{
  private final Rect b = new Rect();
  
  eg(ViewPager paramViewPager) {}
  
  public fr onApplyWindowInsets(View paramView, fr paramfr)
  {
    paramView = cn.a(paramView, paramfr);
    if (paramView.e()) {
      return paramView;
    }
    paramfr = b;
    left = paramView.a();
    top = paramView.b();
    right = paramView.c();
    bottom = paramView.d();
    int i = 0;
    int j = a.getChildCount();
    while (i < j)
    {
      fr localfr = cn.b(a.getChildAt(i), paramView);
      left = Math.min(localfr.a(), left);
      top = Math.min(localfr.b(), top);
      right = Math.min(localfr.c(), right);
      bottom = Math.min(localfr.d(), bottom);
      i += 1;
    }
    return paramView.a(left, top, right, bottom);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */