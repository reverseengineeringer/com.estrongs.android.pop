package android.support.design.widget;

import android.support.v4.view.cn;
import android.support.v4.widget.bn;
import android.view.View;

class au
  implements Runnable
{
  private final CoordinatorLayout b;
  private final V c;
  
  au(CoordinatorLayout paramCoordinatorLayout, V paramV)
  {
    b = paramV;
    View localView;
    c = localView;
  }
  
  public void run()
  {
    if ((c != null) && (HeaderBehavior.a(a) != null))
    {
      if (HeaderBehavior.a(a).g())
      {
        a.a_(b, c, HeaderBehavior.a(a).c());
        cn.a(c, this);
      }
    }
    else {
      return;
    }
    a.a(b, c);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */