package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;

class fc
  implements fo
{
  ex a;
  boolean b;
  
  fc(ex paramex)
  {
    a = paramex;
  }
  
  public void onAnimationCancel(View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof fo)) {}
    for (localObject = (fo)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((fo)localObject).onAnimationCancel(paramView);
      }
      return;
    }
  }
  
  public void onAnimationEnd(View paramView)
  {
    if (ex.c(a) >= 0)
    {
      cn.a(paramView, ex.c(a), null);
      ex.a(a, -1);
    }
    if ((Build.VERSION.SDK_INT >= 16) || (!b))
    {
      if (ex.b(a) != null)
      {
        localObject = ex.b(a);
        ex.a(a, null);
        ((Runnable)localObject).run();
      }
      localObject = paramView.getTag(2113929216);
      if (!(localObject instanceof fo)) {
        break label115;
      }
    }
    label115:
    for (Object localObject = (fo)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((fo)localObject).onAnimationEnd(paramView);
      }
      b = true;
      return;
    }
  }
  
  public void onAnimationStart(View paramView)
  {
    b = false;
    if (ex.c(a) >= 0) {
      cn.a(paramView, 2, null);
    }
    if (ex.a(a) != null)
    {
      localObject = ex.a(a);
      ex.b(a, null);
      ((Runnable)localObject).run();
    }
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof fo)) {}
    for (localObject = (fo)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((fo)localObject).onAnimationStart(paramView);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */