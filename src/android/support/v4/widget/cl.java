package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class cl
  extends Animation
{
  cl(SwipeRefreshLayout paramSwipeRefreshLayout) {}
  
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = SwipeRefreshLayout.j(a);
    float f2 = -SwipeRefreshLayout.j(a);
    SwipeRefreshLayout.a(a, f1 + f2 * paramFloat);
    SwipeRefreshLayout.b(a, paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */