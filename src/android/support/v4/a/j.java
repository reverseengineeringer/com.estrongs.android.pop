package android.support.v4.a;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;

class j
  implements l
{
  final Animator a;
  
  public j(Animator paramAnimator)
  {
    a = paramAnimator;
  }
  
  public void a()
  {
    a.start();
  }
  
  public void a(long paramLong)
  {
    a.setDuration(paramLong);
  }
  
  public void a(b paramb)
  {
    a.addListener(new i(paramb, this));
  }
  
  public void a(d paramd)
  {
    if ((a instanceof ValueAnimator)) {
      ((ValueAnimator)a).addUpdateListener(new k(this, paramd));
    }
  }
  
  public void a(View paramView)
  {
    a.setTarget(paramView);
  }
  
  public void b()
  {
    a.cancel();
  }
  
  public float c()
  {
    return ((ValueAnimator)a).getAnimatedFraction();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */