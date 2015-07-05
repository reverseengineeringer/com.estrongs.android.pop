package com.estrongs.android.pop.app.imageviewer;

import android.annotation.TargetApi;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

@TargetApi(8)
public class ViewImage
  extends ViewImage21
{
  private ScaleGestureDetector t = null;
  
  protected void a(MotionEvent paramMotionEvent)
  {
    if (t == null) {
      t = new ScaleGestureDetector(this, new ar(this));
    }
    t.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ViewImage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */