package android.support.design.widget;

import android.support.v4.view.bi;
import android.support.v4.widget.cz;
import android.support.v4.widget.dc;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

public class bx<V extends View>
  extends CoordinatorLayout.Behavior<V>
{
  private cz a;
  private bz b;
  private boolean c;
  private float d = 0.0F;
  private boolean e;
  private int f = 2;
  private float g = 0.5F;
  private float h = 0.0F;
  private float i = 0.5F;
  private final dc j = new by(this);
  
  static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat3 - paramFloat1) / (paramFloat2 - paramFloat1);
  }
  
  private void a(ViewGroup paramViewGroup)
  {
    if (a == null) {
      if (!e) {
        break label33;
      }
    }
    label33:
    for (paramViewGroup = cz.a(paramViewGroup, d, j);; paramViewGroup = cz.a(paramViewGroup, j))
    {
      a = paramViewGroup;
      return;
    }
  }
  
  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    return Math.min(Math.max(paramInt1, paramInt2), paramInt3);
  }
  
  private static float c(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return Math.min(Math.max(paramFloat1, paramFloat2), paramFloat3);
  }
  
  public void a(float paramFloat)
  {
    h = c(0.0F, paramFloat, 1.0F);
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  public void a(bz parambz)
  {
    b = parambz;
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    switch (bi.a(paramMotionEvent))
    {
    case 2: 
    default: 
      if (paramCoordinatorLayout.a(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
        break;
      }
    }
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      do
      {
        if (!c) {
          break;
        }
        return false;
      } while (!c);
      c = false;
      return false;
    }
    a(paramCoordinatorLayout);
    return a.a(paramMotionEvent);
  }
  
  public boolean a(View paramView)
  {
    return true;
  }
  
  public void b(float paramFloat)
  {
    i = c(0.0F, paramFloat, 1.0F);
  }
  
  public boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (a != null)
    {
      a.b(paramMotionEvent);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */