package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.i;
import android.support.design.j;
import android.support.v4.view.cn;
import android.support.v4.view.fr;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.util.ArrayList;
import java.util.List;

@t(a=AppBarLayout.Behavior.class)
public class AppBarLayout
  extends LinearLayout
{
  boolean a;
  private int b = -1;
  private int c = -1;
  private int d = -1;
  private float e;
  private int f = 0;
  private fr g;
  private final List<g> h;
  
  public AppBarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppBarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
    cr.a(paramContext);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.AppBarLayout, 0, i.Widget_Design_AppBarLayout);
    e = paramContext.getDimensionPixelSize(j.AppBarLayout_elevation, 0);
    setBackgroundDrawable(paramContext.getDrawable(j.AppBarLayout_android_background));
    if (paramContext.hasValue(j.AppBarLayout_expanded)) {
      setExpanded(paramContext.getBoolean(j.AppBarLayout_expanded, false));
    }
    paramContext.recycle();
    do.a(this);
    h = new ArrayList();
    cn.l(this, e);
    cn.a(this, new c(this));
  }
  
  private fr a(fr paramfr)
  {
    fr localfr = null;
    if (cn.z(this)) {
      localfr = paramfr;
    }
    if (localfr != g)
    {
      g = localfr;
      b();
    }
    return paramfr;
  }
  
  private void b()
  {
    b = -1;
    c = -1;
    d = -1;
  }
  
  private boolean c()
  {
    return a;
  }
  
  private boolean d()
  {
    return getTotalScrollRange() != 0;
  }
  
  private void e()
  {
    f = 0;
  }
  
  private int getDownNestedPreScrollRange()
  {
    if (c != -1) {
      return c;
    }
    int j = getChildCount() - 1;
    int i = 0;
    View localView;
    int k;
    int m;
    if (j >= 0)
    {
      localView = getChildAt(j);
      AppBarLayout.LayoutParams localLayoutParams = (AppBarLayout.LayoutParams)localView.getLayoutParams();
      k = localView.getMeasuredHeight();
      m = a;
      if ((m & 0x5) == 5)
      {
        int n = topMargin;
        i = bottomMargin + n + i;
        if ((m & 0x8) != 0) {
          i += cn.r(localView);
        }
      }
    }
    for (;;)
    {
      j -= 1;
      break;
      if ((m & 0x2) != 0)
      {
        i += k - cn.r(localView);
      }
      else
      {
        i += k;
        continue;
        if (i > 0)
        {
          i = Math.max(0, i - getTopInset());
          c = i;
          return i;
        }
      }
    }
  }
  
  private int getDownNestedScrollRange()
  {
    if (d != -1) {
      return d;
    }
    int k = getChildCount();
    int j = 0;
    int i = 0;
    if (j < k)
    {
      View localView = getChildAt(j);
      AppBarLayout.LayoutParams localLayoutParams = (AppBarLayout.LayoutParams)localView.getLayoutParams();
      int n = localView.getMeasuredHeight();
      int i1 = topMargin;
      int i2 = bottomMargin;
      int m = a;
      if ((m & 0x1) != 0)
      {
        i += n + (i1 + i2);
        if ((m & 0x2) != 0) {
          i -= cn.r(localView) + getTopInset();
        }
      }
    }
    for (;;)
    {
      i = Math.max(0, i);
      d = i;
      return i;
      j += 1;
      break;
    }
  }
  
  private int getPendingAction()
  {
    return f;
  }
  
  private int getTopInset()
  {
    if (g != null) {
      return g.b();
    }
    return 0;
  }
  
  private int getUpNestedPreScrollRange()
  {
    return getTotalScrollRange();
  }
  
  protected AppBarLayout.LayoutParams a()
  {
    return new AppBarLayout.LayoutParams(-1, -2);
  }
  
  public AppBarLayout.LayoutParams a(AttributeSet paramAttributeSet)
  {
    return new AppBarLayout.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected AppBarLayout.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LinearLayout.LayoutParams)) {
      return new AppBarLayout.LayoutParams((LinearLayout.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new AppBarLayout.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new AppBarLayout.LayoutParams(paramLayoutParams);
  }
  
  public void a(g paramg)
  {
    if ((paramg != null) && (!h.contains(paramg))) {
      h.add(paramg);
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i;
    if (paramBoolean1)
    {
      i = 1;
      if (!paramBoolean2) {
        break label31;
      }
    }
    label31:
    for (int j = 4;; j = 0)
    {
      f = (j | i);
      requestLayout();
      return;
      i = 2;
      break;
    }
  }
  
  public void b(g paramg)
  {
    if (paramg != null) {
      h.remove(paramg);
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof AppBarLayout.LayoutParams;
  }
  
  final int getMinimumHeightForVisibleOverlappingContent()
  {
    int i = getTopInset();
    int j = cn.r(this);
    if (j != 0) {
      return i + j * 2;
    }
    j = getChildCount();
    if (j >= 1) {
      return i + cn.r(getChildAt(j - 1)) * 2;
    }
    return 0;
  }
  
  public float getTargetElevation()
  {
    return e;
  }
  
  public final int getTotalScrollRange()
  {
    if (b != -1) {
      return b;
    }
    int k = getChildCount();
    int j = 0;
    int i = 0;
    if (j < k)
    {
      View localView = getChildAt(j);
      AppBarLayout.LayoutParams localLayoutParams = (AppBarLayout.LayoutParams)localView.getLayoutParams();
      int n = localView.getMeasuredHeight();
      int m = a;
      if ((m & 0x1) != 0)
      {
        int i1 = topMargin;
        i += bottomMargin + (n + i1);
        if ((m & 0x2) != 0) {
          i -= cn.r(localView);
        }
      }
    }
    for (;;)
    {
      i = Math.max(0, i - getTopInset());
      b = i;
      return i;
      j += 1;
      break;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    b();
    a = false;
    paramInt2 = getChildCount();
    paramInt1 = 0;
    for (;;)
    {
      if (paramInt1 < paramInt2)
      {
        if (((AppBarLayout.LayoutParams)getChildAt(paramInt1).getLayoutParams()).b() != null) {
          a = true;
        }
      }
      else {
        return;
      }
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    b();
  }
  
  public void setExpanded(boolean paramBoolean)
  {
    a(paramBoolean, cn.H(this));
  }
  
  public void setOrientation(int paramInt)
  {
    if (paramInt != 1) {
      throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }
    super.setOrientation(paramInt);
  }
  
  public void setTargetElevation(float paramFloat)
  {
    e = paramFloat;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.AppBarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */