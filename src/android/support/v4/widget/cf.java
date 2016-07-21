package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class cf
  extends Animation
{
  cf(SwipeRefreshLayout paramSwipeRefreshLayout) {}
  
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    SwipeRefreshLayout.a(a, paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */