package android.support.v4.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

class m
  implements l
{
  public Object a(Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInterpolator != null) {
      return new Scroller(paramContext, paramInterpolator);
    }
    return new Scroller(paramContext);
  }
  
  public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ((Scroller)paramObject).startScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public boolean a(Object paramObject)
  {
    return ((Scroller)paramObject).isFinished();
  }
  
  public int b(Object paramObject)
  {
    return ((Scroller)paramObject).getCurrX();
  }
  
  public int c(Object paramObject)
  {
    return ((Scroller)paramObject).getCurrY();
  }
  
  public boolean d(Object paramObject)
  {
    return ((Scroller)paramObject).computeScrollOffset();
  }
  
  public void e(Object paramObject)
  {
    ((Scroller)paramObject).abortAnimation();
  }
  
  public int f(Object paramObject)
  {
    return ((Scroller)paramObject).getFinalX();
  }
  
  public int g(Object paramObject)
  {
    return ((Scroller)paramObject).getFinalY();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */