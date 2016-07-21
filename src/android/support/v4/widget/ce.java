package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class ce
  implements Animation.AnimationListener
{
  ce(SwipeRefreshLayout paramSwipeRefreshLayout) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (SwipeRefreshLayout.a(a))
    {
      SwipeRefreshLayout.b(a).setAlpha(255);
      SwipeRefreshLayout.b(a).start();
      if ((SwipeRefreshLayout.c(a)) && (SwipeRefreshLayout.d(a) != null)) {
        SwipeRefreshLayout.d(a).a();
      }
      SwipeRefreshLayout.a(a, SwipeRefreshLayout.e(a).getTop());
      return;
    }
    SwipeRefreshLayout.f(a);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */