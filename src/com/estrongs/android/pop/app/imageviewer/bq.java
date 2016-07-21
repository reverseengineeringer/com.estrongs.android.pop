package com.estrongs.android.pop.app.imageviewer;

import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.estrongs.android.widget.RealViewSwitcher;

class bq
  implements View.OnTouchListener
{
  boolean a = false;
  am b = null;
  
  bq(ViewImage21 paramViewImage21, View.OnTouchListener paramOnTouchListener) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    c.onTouch(paramView, paramMotionEvent);
    if (paramMotionEvent.getPointerCount() > 1)
    {
      d.a(paramMotionEvent);
      return true;
    }
    if ((d.g == null) || (d.g.getScale() <= d.g.getDefaultScale()) || ((d.g.getScaledWidth() <= d.k.widthPixels) && (d.g.getScaledHeight() <= d.k.heightPixels)) || (a)) {
      d.i.onTouchEvent(paramMotionEvent);
    }
    for (;;)
    {
      if ((a) && (paramMotionEvent.getAction() == 1))
      {
        d.i.f();
        a = false;
      }
      d.f.onTouchEvent(paramMotionEvent);
      return true;
      if (b == null) {
        b = new br(this, paramMotionEvent);
      }
      d.g.setOnImageEdgeDetector(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */