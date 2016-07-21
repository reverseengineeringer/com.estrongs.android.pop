package android.support.v4.app;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class ap
  implements Animation.AnimationListener
{
  private Animation.AnimationListener a = null;
  private boolean b = false;
  private View c = null;
  
  public ap(View paramView, Animation paramAnimation)
  {
    if ((paramView == null) || (paramAnimation == null)) {
      return;
    }
    c = paramView;
  }
  
  public ap(View paramView, Animation paramAnimation, Animation.AnimationListener paramAnimationListener)
  {
    if ((paramView == null) || (paramAnimation == null)) {
      return;
    }
    a = paramAnimationListener;
    c = paramView;
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if ((c != null) && (b)) {
      c.post(new ar(this));
    }
    if (a != null) {
      a.onAnimationEnd(paramAnimation);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation)
  {
    if (a != null) {
      a.onAnimationRepeat(paramAnimation);
    }
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    if (c != null)
    {
      b = al.a(c, paramAnimation);
      if (b) {
        c.post(new aq(this));
      }
    }
    if (a != null) {
      a.onAnimationStart(paramAnimation);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */