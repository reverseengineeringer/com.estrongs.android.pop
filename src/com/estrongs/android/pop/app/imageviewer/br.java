package com.estrongs.android.pop.app.imageviewer;

import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.estrongs.android.widget.RealViewSwitcher;

class br
  implements View.OnTouchListener
{
  boolean a = false;
  am b = null;
  
  br(ViewImage21 paramViewImage21, View.OnTouchListener paramOnTouchListener) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    c.onTouch(paramView, paramMotionEvent);
    if (paramMotionEvent.getPointerCount() > 1)
    {
      d.a(paramMotionEvent);
      return true;
    }
    if ((d.g == null) || (d.g.f() <= d.g.b()) || ((d.g.d() <= d.k.widthPixels) && (d.g.c() <= d.k.heightPixels)) || (a)) {
      d.i.onTouchEvent(paramMotionEvent);
    }
    for (;;)
    {
      if ((a) && (paramMotionEvent.getAction() == 1))
      {
        d.i.g();
        a = false;
      }
      d.f.onTouchEvent(paramMotionEvent);
      return true;
      if (b == null) {
        b = new bs(this, paramMotionEvent);
      }
      d.g.a(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */