package android.support.v4.app;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class t
  implements ViewTreeObserver.OnPreDrawListener
{
  t(q paramq, View paramView, v paramv, int paramInt, Object paramObject) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    q.a(e, b, c, d);
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */