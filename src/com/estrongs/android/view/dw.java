package com.estrongs.android.view;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.util.bd;

class dw
  implements View.OnTouchListener
{
  dw(dt paramdt) {}
  
  @SuppressLint({"NewApi"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!dt.a(a)) {
      return false;
    }
    if (ac.a() >= 8) {}
    for (;;)
    {
      try
      {
        i = paramMotionEvent.getActionIndex();
        if (i != 0) {
          break;
        }
        dt.b(a).removeCallbacks(a.a);
        if (paramMotionEvent.getAction() != 0) {
          break;
        }
        paramView = FileExplorerActivity.J();
        if (paramView == null) {
          break;
        }
        if (!E.b)
        {
          E.b = true;
          dt.b(a).postDelayed(a.a, 3000L);
          E.postInvalidate();
          return false;
        }
      }
      catch (Exception paramView)
      {
        i = 0;
        continue;
        if (E.b(paramMotionEvent.getX(), paramMotionEvent.getY()))
        {
          E.b = false;
          if (!bd.b(dt.c(a))) {
            continue;
          }
          dt.a(dt.d(a).getContext(), dt.c(a));
          continue;
        }
        E.b = false;
        continue;
      }
      int i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */