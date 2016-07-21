package android.support.v4.app;

import android.support.v4.e.a;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;

class s
  implements ViewTreeObserver.OnPreDrawListener
{
  s(q paramq, View paramView, Object paramObject, ArrayList paramArrayList, v paramv, boolean paramBoolean, Fragment paramFragment1, Fragment paramFragment2) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    if (b != null)
    {
      ba.a(b, c);
      c.clear();
      a locala = q.a(h, d, e, f);
      ba.a(b, d.d, locala, c);
      q.a(h, locala, d);
      q.a(h, d, f, g, e, locala);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */