package com.estrongs.android.ui.navigation;

import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.ab;
import android.view.View;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.guesture.ESGesturePanel;

class n
  implements ab
{
  n(m paramm) {}
  
  public void onDrawerClosed(View paramView)
  {
    if ((a.e) && (paramView == m.f(a)))
    {
      m.e(a).b(0, 8388613);
      if (m.g(a) != null) {
        m.g(a).a(paramView);
      }
    }
    do
    {
      m.a(a, null);
      do
      {
        return;
      } while (paramView != m.c(a));
      if (a.e) {
        m.e(a).b(0, 8388611);
      }
    } while (m.h(a) == null);
    m.h(a).a(paramView);
    m.b(a, null);
  }
  
  public void onDrawerOpened(View paramView)
  {
    if (paramView == m.c(a)) {
      ((FileExplorerActivity)m.d(a)).t();
    }
    for (;;)
    {
      try
      {
        ((FileExplorerActivity)m.d(a)).at().a("function", "clipboard_show");
        if (a.e) {
          m.e(a).b(1, 8388611);
        }
        paramView.requestFocus();
        return;
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        continue;
      }
      if (paramView == m.f(a))
      {
        m.e(a).b(1, 8388613);
        try
        {
          ((FileExplorerActivity)m.d(a)).at().a("function", "fastaccess_show");
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
        }
      }
    }
  }
  
  public void onDrawerSlide(View paramView, float paramFloat)
  {
    m.a(a);
    m.b(a);
    if (paramFloat > 0.2D) {
      XA.setVisibility(4);
    }
    while (paramFloat > 0.2D) {
      return;
    }
    XA.setVisibility(0);
  }
  
  public void onDrawerStateChanged(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */