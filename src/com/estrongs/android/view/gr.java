package com.estrongs.android.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class gr
  implements View.OnTouchListener
{
  gr(WebViewWrapper paramWebViewWrapper, View.OnTouchListener paramOnTouchListener) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getPointerCount() > 1) {
      return a.onTouch(paramView, paramMotionEvent);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.gr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */