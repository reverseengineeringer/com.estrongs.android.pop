package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v4.view.cn;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.List;

public class AppBarLayout$Behavior
  extends HeaderBehavior<AppBarLayout>
{
  private int a;
  private boolean b;
  private boolean c;
  private cs d;
  private int e = -1;
  private boolean f;
  private float g;
  private WeakReference<View> h;
  private e i;
  
  public AppBarLayout$Behavior() {}
  
  public AppBarLayout$Behavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private View a(AppBarLayout paramAppBarLayout, int paramInt)
  {
    int k = paramAppBarLayout.getChildCount();
    int j = 0;
    while (j < k)
    {
      View localView = paramAppBarLayout.getChildAt(j);
      if ((localView.getTop() <= -paramInt) && (localView.getBottom() >= -paramInt)) {
        return localView;
      }
      j += 1;
    }
    return null;
  }
  
  private int b(AppBarLayout paramAppBarLayout, int paramInt)
  {
    int m = Math.abs(paramInt);
    int n = paramAppBarLayout.getChildCount();
    int k = 0;
    int j = paramInt;
    View localView;
    Interpolator localInterpolator;
    if (k < n)
    {
      localView = paramAppBarLayout.getChildAt(k);
      AppBarLayout.LayoutParams localLayoutParams = (AppBarLayout.LayoutParams)localView.getLayoutParams();
      localInterpolator = localLayoutParams.b();
      if ((m < localView.getTop()) || (m > localView.getBottom())) {
        break label224;
      }
      j = paramInt;
      if (localInterpolator != null)
      {
        n = localLayoutParams.a();
        if ((n & 0x1) == 0) {
          break label233;
        }
        j = localView.getHeight();
        k = topMargin;
        k = bottomMargin + (j + k) + 0;
        j = k;
        if ((n & 0x2) == 0) {}
      }
    }
    label224:
    label233:
    for (j = k - cn.r(localView);; j = 0)
    {
      k = j;
      if (cn.z(localView)) {
        k = j - AppBarLayout.i(paramAppBarLayout);
      }
      j = paramInt;
      if (k > 0)
      {
        j = localView.getTop();
        float f1 = k;
        j = Math.round(localInterpolator.getInterpolation((m - j) / k) * f1);
        j = Integer.signum(paramInt) * (j + localView.getTop());
      }
      return j;
      k += 1;
      break;
    }
  }
  
  private void b(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt)
  {
    int j = a();
    if (j == paramInt)
    {
      if ((d != null) && (d.b())) {
        d.e();
      }
      return;
    }
    if (d == null)
    {
      d = do.a();
      d.a(a.e);
      d.a(new d(this, paramCoordinatorLayout, paramAppBarLayout));
    }
    for (;;)
    {
      float f1 = Math.abs(j - paramInt) / getResourcesgetDisplayMetricsdensity;
      d.a(Math.round(f1 * 1000.0F / 300.0F));
      d.a(j, paramInt);
      d.a();
      return;
      d.e();
    }
  }
  
  private void c(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout)
  {
    int m = a();
    View localView = a(paramAppBarLayout, m);
    int k;
    int j;
    if (localView != null)
    {
      AppBarLayout.LayoutParams localLayoutParams = (AppBarLayout.LayoutParams)localView.getLayoutParams();
      if ((localLayoutParams.a() & 0x11) == 17)
      {
        k = -localView.getTop();
        j = -localView.getBottom();
        if ((localLayoutParams.a() & 0x2) != 2) {
          break label111;
        }
        j = cn.r(localView) + j;
      }
    }
    label111:
    for (;;)
    {
      if (m < (j + k) / 2) {}
      for (;;)
      {
        b(paramCoordinatorLayout, paramAppBarLayout, av.a(j, -paramAppBarLayout.getTotalScrollRange(), 0));
        return;
        j = k;
      }
    }
  }
  
  private void d(AppBarLayout paramAppBarLayout)
  {
    List localList = AppBarLayout.h(paramAppBarLayout);
    int k = localList.size();
    int j = 0;
    while (j < k)
    {
      g localg = (g)localList.get(j);
      if (localg != null) {
        localg.a(paramAppBarLayout, b());
      }
      j += 1;
    }
  }
  
  int a()
  {
    return b() + a;
  }
  
  int a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt1, int paramInt2, int paramInt3)
  {
    int j = 0;
    int k = a();
    if ((paramInt2 != 0) && (k >= paramInt2) && (k <= paramInt3))
    {
      paramInt2 = av.a(paramInt1, paramInt2, paramInt3);
      paramInt1 = j;
      if (k != paramInt2) {
        if (!AppBarLayout.g(paramAppBarLayout)) {
          break label108;
        }
      }
      label108:
      for (paramInt1 = b(paramAppBarLayout, paramInt2);; paramInt1 = paramInt2)
      {
        boolean bool = a(paramInt1);
        a = (paramInt2 - paramInt1);
        if ((!bool) && (AppBarLayout.g(paramAppBarLayout))) {
          paramCoordinatorLayout.c(paramAppBarLayout);
        }
        d(paramAppBarLayout);
        paramInt1 = k - paramInt2;
        return paramInt1;
      }
    }
    a = 0;
    return 0;
  }
  
  void a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout)
  {
    c(paramCoordinatorLayout, paramAppBarLayout);
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof AppBarLayout.Behavior.SavedState))
    {
      paramParcelable = (AppBarLayout.Behavior.SavedState)paramParcelable;
      super.a(paramCoordinatorLayout, paramAppBarLayout, paramParcelable.getSuperState());
      e = a;
      g = b;
      f = c;
      return;
    }
    super.a(paramCoordinatorLayout, paramAppBarLayout, paramParcelable);
    e = -1;
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView)
  {
    if (!c) {
      c(paramCoordinatorLayout, paramAppBarLayout);
    }
    b = false;
    c = false;
    h = new WeakReference(paramView);
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt4 < 0)
    {
      b(paramCoordinatorLayout, paramAppBarLayout, paramInt4, -AppBarLayout.d(paramAppBarLayout), 0);
      b = true;
      return;
    }
    b = false;
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if ((paramInt2 != 0) && (!b))
    {
      if (paramInt2 >= 0) {
        break label50;
      }
      paramInt1 = -paramAppBarLayout.getTotalScrollRange();
    }
    for (int j = paramInt1 + AppBarLayout.b(paramAppBarLayout);; j = 0)
    {
      paramArrayOfInt[1] = b(paramCoordinatorLayout, paramAppBarLayout, paramInt2, paramInt1, j);
      return;
      label50:
      paramInt1 = -AppBarLayout.c(paramAppBarLayout);
    }
  }
  
  boolean a(AppBarLayout paramAppBarLayout)
  {
    if (i != null) {
      return i.a(paramAppBarLayout);
    }
    if (h != null)
    {
      paramAppBarLayout = (View)h.get();
      return (paramAppBarLayout != null) && (paramAppBarLayout.isShown()) && (!cn.b(paramAppBarLayout, -1));
    }
    return true;
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt)
  {
    boolean bool = super.a(paramCoordinatorLayout, paramAppBarLayout, paramInt);
    int j = AppBarLayout.e(paramAppBarLayout);
    if (j != 0) {
      if ((j & 0x4) != 0)
      {
        paramInt = 1;
        if ((j & 0x2) == 0) {
          break label107;
        }
        j = -AppBarLayout.c(paramAppBarLayout);
        if (paramInt == 0) {
          break label95;
        }
        b(paramCoordinatorLayout, paramAppBarLayout, j);
      }
    }
    label95:
    label107:
    while (e < 0) {
      for (;;)
      {
        AppBarLayout.f(paramAppBarLayout);
        e = -1;
        a(av.a(b(), -paramAppBarLayout.getTotalScrollRange(), 0));
        d(paramAppBarLayout);
        return bool;
        paramInt = 0;
        continue;
        a_(paramCoordinatorLayout, paramAppBarLayout, j);
        continue;
        if ((j & 0x1) != 0) {
          if (paramInt != 0) {
            b(paramCoordinatorLayout, paramAppBarLayout, 0);
          } else {
            a_(paramCoordinatorLayout, paramAppBarLayout, 0);
          }
        }
      }
    }
    paramCoordinatorLayout = paramAppBarLayout.getChildAt(e);
    paramInt = -paramCoordinatorLayout.getBottom();
    if (f) {}
    for (paramInt = cn.r(paramCoordinatorLayout) + paramInt;; paramInt = Math.round(paramCoordinatorLayout.getHeight() * g) + paramInt)
    {
      a(paramInt);
      break;
    }
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    boolean bool = false;
    if (!paramBoolean) {
      paramBoolean = a(paramCoordinatorLayout, paramAppBarLayout, -paramAppBarLayout.getTotalScrollRange(), 0, -paramFloat2);
    }
    for (;;)
    {
      c = paramBoolean;
      return paramBoolean;
      int j;
      if (paramFloat2 < 0.0F)
      {
        j = -paramAppBarLayout.getTotalScrollRange() + AppBarLayout.b(paramAppBarLayout);
        paramBoolean = bool;
        if (a() < j)
        {
          b(paramCoordinatorLayout, paramAppBarLayout, j);
          paramBoolean = true;
        }
      }
      else
      {
        j = -AppBarLayout.c(paramAppBarLayout);
        paramBoolean = bool;
        if (a() > j)
        {
          b(paramCoordinatorLayout, paramAppBarLayout, j);
          paramBoolean = true;
        }
      }
    }
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) != 0) && (AppBarLayout.a(paramAppBarLayout)) && (paramCoordinatorLayout.getHeight() - paramView1.getHeight() <= paramAppBarLayout.getHeight())) {}
    for (boolean bool = true;; bool = false)
    {
      if ((bool) && (d != null)) {
        d.e();
      }
      h = null;
      return bool;
    }
  }
  
  int b(AppBarLayout paramAppBarLayout)
  {
    return -AppBarLayout.d(paramAppBarLayout);
  }
  
  public Parcelable b(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout)
  {
    boolean bool = false;
    Parcelable localParcelable = super.b(paramCoordinatorLayout, paramAppBarLayout);
    int k = b();
    int m = paramAppBarLayout.getChildCount();
    int j = 0;
    while (j < m)
    {
      paramCoordinatorLayout = paramAppBarLayout.getChildAt(j);
      int n = paramCoordinatorLayout.getBottom() + k;
      if ((paramCoordinatorLayout.getTop() + k <= 0) && (n >= 0))
      {
        paramAppBarLayout = new AppBarLayout.Behavior.SavedState(localParcelable);
        a = j;
        if (n == cn.r(paramCoordinatorLayout)) {
          bool = true;
        }
        c = bool;
        b = (n / paramCoordinatorLayout.getHeight());
        return paramAppBarLayout;
      }
      j += 1;
    }
    return localParcelable;
  }
  
  int c(AppBarLayout paramAppBarLayout)
  {
    return paramAppBarLayout.getTotalScrollRange();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.AppBarLayout.Behavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */