package com.estrongs.android.ui.navigation;

import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.b;
import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.guesture.ESGesturePanel;

class o
  implements b
{
  o(n paramn) {}
  
  public void a(int paramInt) {}
  
  public void a(View paramView)
  {
    if (paramView == n.a(a))
    {
      ((FileExplorerActivity)n.b(a)).m();
      if (a.f != null) {
        a.f.b();
      }
      if (a.e) {
        n.c(a).b(1, 8388611);
      }
    }
    for (;;)
    {
      paramView.requestFocus();
      return;
      if (paramView == n.d(a)) {
        n.c(a).b(1, 8388613);
      }
    }
  }
  
  public void a(View paramView, float paramFloat)
  {
    if (paramFloat > 0.2D) {
      JE.setVisibility(4);
    }
    while (paramFloat > 0.2D) {
      return;
    }
    JE.setVisibility(0);
  }
  
  public void b(View paramView)
  {
    if ((a.e) && (paramView == n.d(a)))
    {
      n.c(a).b(0, 8388613);
      if (n.e(a) != null) {
        n.e(a).a(paramView);
      }
    }
    do
    {
      n.a(a, null);
      do
      {
        return;
      } while (paramView != n.a(a));
      if (a.e) {
        n.c(a).b(0, 8388611);
      }
    } while (n.f(a) == null);
    n.f(a).a(paramView);
    n.b(a, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */