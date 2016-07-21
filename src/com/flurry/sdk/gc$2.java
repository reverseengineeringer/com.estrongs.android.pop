package com.flurry.sdk;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class gc$2
  implements View.OnTouchListener
{
  gc$2(gc paramgc) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (gc.b(a) != null) {
      gc.b(a).onTouchEvent(paramMotionEvent);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gc.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */