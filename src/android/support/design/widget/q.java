package android.support.design.widget;

import android.support.v4.view.cn;
import android.support.v4.view.fr;
import android.view.View;

class q
  implements g
{
  private q(CollapsingToolbarLayout paramCollapsingToolbarLayout) {}
  
  public void a(AppBarLayout paramAppBarLayout, int paramInt)
  {
    boolean bool = false;
    CollapsingToolbarLayout.b(a, paramInt);
    int i;
    int k;
    label52:
    Object localObject;
    CollapsingToolbarLayout.LayoutParams localLayoutParams;
    dn localdn;
    if (CollapsingToolbarLayout.a(a) != null)
    {
      i = CollapsingToolbarLayout.a(a).b();
      k = paramAppBarLayout.getTotalScrollRange();
      m = a.getChildCount();
      j = 0;
      if (j >= m) {
        break label185;
      }
      localObject = a.getChildAt(j);
      localLayoutParams = (CollapsingToolbarLayout.LayoutParams)((View)localObject).getLayoutParams();
      localdn = CollapsingToolbarLayout.a((View)localObject);
      switch (a)
      {
      }
    }
    for (;;)
    {
      j += 1;
      break label52;
      i = 0;
      break;
      if (a.getHeight() - i + paramInt >= ((View)localObject).getHeight())
      {
        localdn.a(-paramInt);
        continue;
        float f = -paramInt;
        localdn.a(Math.round(b * f));
      }
    }
    label185:
    if ((CollapsingToolbarLayout.b(a) != null) || (CollapsingToolbarLayout.c(a) != null))
    {
      localObject = a;
      if (a.getHeight() + paramInt < a.getScrimTriggerOffset() + i) {
        bool = true;
      }
      ((CollapsingToolbarLayout)localObject).setScrimsShown(bool);
    }
    if ((CollapsingToolbarLayout.c(a) != null) && (i > 0)) {
      cn.d(a);
    }
    int j = a.getHeight();
    int m = cn.r(a);
    CollapsingToolbarLayout.d(a).b(Math.abs(paramInt) / (j - m - i));
    if (Math.abs(paramInt) == k)
    {
      cn.l(paramAppBarLayout, paramAppBarLayout.getTargetElevation());
      return;
    }
    cn.l(paramAppBarLayout, 0.0F);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */