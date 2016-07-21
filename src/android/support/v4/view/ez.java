package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class ez
  implements fh
{
  WeakHashMap<View, Runnable> a = null;
  
  private void a(View paramView)
  {
    if (a != null)
    {
      Runnable localRunnable = (Runnable)a.get(paramView);
      if (localRunnable != null) {
        paramView.removeCallbacks(localRunnable);
      }
    }
  }
  
  private void d(ex paramex, View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof fo)) {}
    for (localObject = (fo)localObject;; localObject = null)
    {
      Runnable localRunnable1 = ex.a(paramex);
      Runnable localRunnable2 = ex.b(paramex);
      ex.b(paramex, null);
      ex.a(paramex, null);
      if (localRunnable1 != null) {
        localRunnable1.run();
      }
      if (localObject != null)
      {
        ((fo)localObject).onAnimationStart(paramView);
        ((fo)localObject).onAnimationEnd(paramView);
      }
      if (localRunnable2 != null) {
        localRunnable2.run();
      }
      if (a != null) {
        a.remove(paramView);
      }
      return;
    }
  }
  
  private void e(ex paramex, View paramView)
  {
    if (a != null) {}
    for (Runnable localRunnable = (Runnable)a.get(paramView);; localRunnable = null)
    {
      Object localObject = localRunnable;
      if (localRunnable == null)
      {
        localObject = new fa(this, paramex, paramView, null);
        if (a == null) {
          a = new WeakHashMap();
        }
        a.put(paramView, localObject);
      }
      paramView.removeCallbacks((Runnable)localObject);
      paramView.post((Runnable)localObject);
      return;
    }
  }
  
  public long a(ex paramex, View paramView)
  {
    return 0L;
  }
  
  public void a(ex paramex, View paramView, float paramFloat)
  {
    e(paramex, paramView);
  }
  
  public void a(ex paramex, View paramView, long paramLong) {}
  
  public void a(ex paramex, View paramView, fo paramfo)
  {
    paramView.setTag(2113929216, paramfo);
  }
  
  public void a(ex paramex, View paramView, fq paramfq) {}
  
  public void a(ex paramex, View paramView, Interpolator paramInterpolator) {}
  
  public void b(ex paramex, View paramView)
  {
    e(paramex, paramView);
  }
  
  public void b(ex paramex, View paramView, float paramFloat)
  {
    e(paramex, paramView);
  }
  
  public void b(ex paramex, View paramView, long paramLong) {}
  
  public void c(ex paramex, View paramView)
  {
    a(paramView);
    d(paramex, paramView);
  }
  
  public void c(ex paramex, View paramView, float paramFloat)
  {
    e(paramex, paramView);
  }
  
  public void d(ex paramex, View paramView, float paramFloat)
  {
    e(paramex, paramView);
  }
  
  public void e(ex paramex, View paramView, float paramFloat)
  {
    e(paramex, paramView);
  }
  
  public void f(ex paramex, View paramView, float paramFloat)
  {
    e(paramex, paramView);
  }
  
  public void g(ex paramex, View paramView, float paramFloat)
  {
    e(paramex, paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */