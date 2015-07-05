package com.estrongs.android.ui.view;

import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;

class bs
  implements View.OnTouchListener
{
  bs(PopMultiWindowGrid paramPopMultiWindowGrid) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    if (i == 0)
    {
      paramView = new ColorMatrix();
      paramView.setSaturation(0.2F);
      paramMotionEvent = paramView.getArray();
      float f = -77;
      paramMotionEvent[14] = f;
      paramMotionEvent[9] = f;
      paramMotionEvent[4] = f;
      paramView.set(paramMotionEvent);
      PopMultiWindowGrid.a(a).setColorFilter(new ColorMatrixColorFilter(paramView));
    }
    for (;;)
    {
      return false;
      if (i != 2) {
        if (i == 3) {
          PopMultiWindowGrid.a(a).clearColorFilter();
        } else if (i == 1) {
          PopMultiWindowGrid.a(a).clearColorFilter();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */