package com.estrongs.android.ui.theme;

import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;

class ao
  implements View.OnTouchListener
{
  ao(ThemeLayoutActivity paramThemeLayoutActivity) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    if (i == 0)
    {
      paramMotionEvent = new ColorMatrix();
      paramMotionEvent.setSaturation(0.2F);
      float[] arrayOfFloat = paramMotionEvent.getArray();
      float f = -77;
      arrayOfFloat[14] = f;
      arrayOfFloat[9] = f;
      arrayOfFloat[4] = f;
      paramMotionEvent.set(arrayOfFloat);
      ((ImageView)paramView).setColorFilter(new ColorMatrixColorFilter(paramMotionEvent));
    }
    for (;;)
    {
      return false;
      if (i != 2) {
        if (i == 3) {
          ((ImageView)paramView).clearColorFilter();
        } else if (i == 1) {
          ((ImageView)paramView).clearColorFilter();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */