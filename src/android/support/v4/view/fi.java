package android.support.v4.view;

import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;

class fi
{
  public static long a(View paramView)
  {
    return paramView.animate().getDuration();
  }
  
  public static void a(View paramView, float paramFloat)
  {
    paramView.animate().alpha(paramFloat);
  }
  
  public static void a(View paramView, long paramLong)
  {
    paramView.animate().setDuration(paramLong);
  }
  
  public static void a(View paramView, fo paramfo)
  {
    if (paramfo != null)
    {
      paramView.animate().setListener(new fj(paramfo, paramView));
      return;
    }
    paramView.animate().setListener(null);
  }
  
  public static void a(View paramView, Interpolator paramInterpolator)
  {
    paramView.animate().setInterpolator(paramInterpolator);
  }
  
  public static void b(View paramView)
  {
    paramView.animate().cancel();
  }
  
  public static void b(View paramView, float paramFloat)
  {
    paramView.animate().translationX(paramFloat);
  }
  
  public static void b(View paramView, long paramLong)
  {
    paramView.animate().setStartDelay(paramLong);
  }
  
  public static void c(View paramView)
  {
    paramView.animate().start();
  }
  
  public static void c(View paramView, float paramFloat)
  {
    paramView.animate().translationY(paramFloat);
  }
  
  public static void d(View paramView, float paramFloat)
  {
    paramView.animate().rotationX(paramFloat);
  }
  
  public static void e(View paramView, float paramFloat)
  {
    paramView.animate().scaleX(paramFloat);
  }
  
  public static void f(View paramView, float paramFloat)
  {
    paramView.animate().scaleY(paramFloat);
  }
  
  public static void g(View paramView, float paramFloat)
  {
    paramView.animate().translationYBy(paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */