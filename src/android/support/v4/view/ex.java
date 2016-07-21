package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

public final class ex
{
  static final fh a = new ez();
  private WeakReference<View> b;
  private Runnable c = null;
  private Runnable d = null;
  private int e = -1;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new fg();
      return;
    }
    if (i >= 19)
    {
      a = new ff();
      return;
    }
    if (i >= 18)
    {
      a = new fd();
      return;
    }
    if (i >= 16)
    {
      a = new fe();
      return;
    }
    if (i >= 14)
    {
      a = new fb();
      return;
    }
  }
  
  ex(View paramView)
  {
    b = new WeakReference(paramView);
  }
  
  public long a()
  {
    View localView = (View)b.get();
    if (localView != null) {
      return a.a(this, localView);
    }
    return 0L;
  }
  
  public ex a(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramFloat);
    }
    return this;
  }
  
  public ex a(long paramLong)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramLong);
    }
    return this;
  }
  
  public ex a(fo paramfo)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramfo);
    }
    return this;
  }
  
  public ex a(fq paramfq)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramfq);
    }
    return this;
  }
  
  public ex a(Interpolator paramInterpolator)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramInterpolator);
    }
    return this;
  }
  
  public ex b(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.b(this, localView, paramFloat);
    }
    return this;
  }
  
  public ex b(long paramLong)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.b(this, localView, paramLong);
    }
    return this;
  }
  
  public void b()
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.b(this, localView);
    }
  }
  
  public ex c(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.c(this, localView, paramFloat);
    }
    return this;
  }
  
  public void c()
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.c(this, localView);
    }
  }
  
  public ex d(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.d(this, localView, paramFloat);
    }
    return this;
  }
  
  public ex e(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.e(this, localView, paramFloat);
    }
    return this;
  }
  
  public ex f(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.f(this, localView, paramFloat);
    }
    return this;
  }
  
  public ex g(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.g(this, localView, paramFloat);
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */