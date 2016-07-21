package com.estrongs.android.pop.app.imageviewer;

import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;

public class ar
  extends ScaleGestureDetector.SimpleOnScaleGestureListener
{
  float a = 1.0F;
  
  protected ar(ViewImage paramViewImage) {}
  
  public boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
  {
    ImageViewTouch localImageViewTouch = b.g;
    if (localImageViewTouch.getMaxZoom() < 1.0F) {
      return true;
    }
    a *= paramScaleGestureDetector.getScaleFactor();
    if (a - localImageViewTouch.getDefaultScale() < 0.0F) {
      a = localImageViewTouch.getDefaultScale();
    }
    if (a - 3.0F > 0.0F) {
      a = 3.0F;
    }
    localImageViewTouch.a(a);
    return true;
  }
  
  public boolean onScaleBegin(ScaleGestureDetector paramScaleGestureDetector)
  {
    a = b.g.getScale();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */