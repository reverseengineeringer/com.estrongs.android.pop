package android.support.design.widget;

import android.animation.ValueAnimator;
import android.view.animation.Interpolator;

class de
  extends cz
{
  final ValueAnimator a = new ValueAnimator();
  
  public void a()
  {
    a.start();
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    a.setFloatValues(new float[] { paramFloat1, paramFloat2 });
  }
  
  public void a(int paramInt)
  {
    a.setDuration(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a.setIntValues(new int[] { paramInt1, paramInt2 });
  }
  
  public void a(da paramda)
  {
    a.addListener(new dg(this, paramda));
  }
  
  public void a(db paramdb)
  {
    a.addUpdateListener(new df(this, paramdb));
  }
  
  public void a(Interpolator paramInterpolator)
  {
    a.setInterpolator(paramInterpolator);
  }
  
  public boolean b()
  {
    return a.isRunning();
  }
  
  public int c()
  {
    return ((Integer)a.getAnimatedValue()).intValue();
  }
  
  public float d()
  {
    return ((Float)a.getAnimatedValue()).floatValue();
  }
  
  public void e()
  {
    a.cancel();
  }
  
  public float f()
  {
    return a.getAnimatedFraction();
  }
  
  public long g()
  {
    return a.getDuration();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */