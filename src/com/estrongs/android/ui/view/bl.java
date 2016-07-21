package com.estrongs.android.ui.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import java.util.List;

class bl
  implements View.OnTouchListener
{
  bl(IndicatorView paramIndicatorView) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    try
    {
      if (paramMotionEvent.getAction() == 0)
      {
        IndicatorView.a(a, IndicatorView.b(a, (int)paramMotionEvent.getX()));
        if (IndicatorView.f(a) >= 0)
        {
          bn.a((bn)IndicatorView.d(a).get(IndicatorView.f(a)), true);
          a.invalidate();
          return false;
        }
      }
      else if ((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 3))
      {
        if (IndicatorView.f(a) >= 0)
        {
          int i = (int)paramMotionEvent.getY();
          bn.a((bn)IndicatorView.d(a).get(IndicatorView.f(a)), false);
          if ((i < 0) || (i > a.getHeight())) {
            break label172;
          }
          a.c(IndicatorView.f(a));
        }
        for (;;)
        {
          IndicatorView.a(a, -1);
          return false;
          label172:
          a.invalidate();
        }
      }
      return false;
    }
    catch (Exception paramView) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */