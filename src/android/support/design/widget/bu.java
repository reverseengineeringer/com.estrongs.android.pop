package android.support.design.widget;

import android.util.StateSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

final class bu
{
  private final ArrayList<bw> a = new ArrayList();
  private bw b = null;
  private Animation c = null;
  private WeakReference<View> d;
  private Animation.AnimationListener e = new bv(this);
  
  private void a(bw parambw)
  {
    c = b;
    parambw = a();
    if (parambw != null) {
      parambw.startAnimation(c);
    }
  }
  
  private void c()
  {
    View localView = a();
    int j = a.size();
    int i = 0;
    while (i < j)
    {
      Animation localAnimation = a.get(i)).b;
      if (localView.getAnimation() == localAnimation) {
        localView.clearAnimation();
      }
      i += 1;
    }
    d = null;
    b = null;
    c = null;
  }
  
  private void d()
  {
    if (c != null)
    {
      View localView = a();
      if ((localView != null) && (localView.getAnimation() == c)) {
        localView.clearAnimation();
      }
      c = null;
    }
  }
  
  View a()
  {
    if (d == null) {
      return null;
    }
    return (View)d.get();
  }
  
  void a(View paramView)
  {
    View localView = a();
    if (localView == paramView) {}
    do
    {
      return;
      if (localView != null) {
        c();
      }
    } while (paramView == null);
    d = new WeakReference(paramView);
  }
  
  void a(int[] paramArrayOfInt)
  {
    Object localObject2 = null;
    int j = a.size();
    int i = 0;
    Object localObject1 = localObject2;
    if (i < j)
    {
      localObject1 = (bw)a.get(i);
      if (!StateSet.stateSetMatches(a, paramArrayOfInt)) {}
    }
    else
    {
      if (localObject1 != b) {
        break label64;
      }
    }
    label64:
    do
    {
      return;
      i += 1;
      break;
      if (b != null) {
        d();
      }
      b = ((bw)localObject1);
      paramArrayOfInt = (View)d.get();
    } while ((localObject1 == null) || (paramArrayOfInt == null) || (paramArrayOfInt.getVisibility() != 0));
    a((bw)localObject1);
  }
  
  public void a(int[] paramArrayOfInt, Animation paramAnimation)
  {
    paramArrayOfInt = new bw(paramArrayOfInt, paramAnimation, null);
    paramAnimation.setAnimationListener(e);
    a.add(paramArrayOfInt);
  }
  
  public void b()
  {
    if (c != null)
    {
      View localView = a();
      if ((localView != null) && (localView.getAnimation() == c)) {
        localView.clearAnimation();
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */