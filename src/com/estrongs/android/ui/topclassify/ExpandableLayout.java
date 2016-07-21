package com.estrongs.android.ui.topclassify;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.estrongs.android.util.bk;
import java.util.Iterator;
import java.util.List;

public class ExpandableLayout
  extends LinearLayout
{
  private int a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private boolean g;
  private boolean h;
  private boolean i;
  private View j;
  private s k;
  private Interpolator l;
  private Interpolator m;
  private int n = 50;
  private boolean o = false;
  private boolean p = false;
  
  public ExpandableLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ExpandableLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ExpandableLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  @TargetApi(21)
  public ExpandableLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet);
  }
  
  private int a(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (i1)
    {
    case 0: 
    case 1073741824: 
    default: 
      return paramInt2;
    }
    return Math.min(paramInt1, paramInt2);
  }
  
  private ValueAnimator a(View paramView, int paramInt1, int paramInt2)
  {
    int i1;
    if (paramInt1 < paramInt2)
    {
      i1 = 1;
      if (c != 0) {
        break label36;
      }
      i1 = 300;
    }
    for (;;)
    {
      return a(paramView, paramInt1, paramInt2, i1);
      i1 = 0;
      break;
      label36:
      if (i1 != 0) {
        i1 = d;
      } else {
        i1 = e;
      }
    }
  }
  
  private ValueAnimator a(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { paramInt1, paramInt2 });
    localValueAnimator.setDuration(paramInt3);
    localValueAnimator.addUpdateListener(new o(this, paramView));
    return localValueAnimator;
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    e();
    if (i) {}
    for (paramContext = new m(this);; paramContext = null)
    {
      setOnClickListener(paramContext);
      return;
    }
  }
  
  private void a(View paramView)
  {
    boolean bool;
    if (!g)
    {
      bool = true;
      g = bool;
      setVisibility(0);
      if (getOrientation() != 0) {
        break label72;
      }
    }
    label72:
    for (int i1 = a;; i1 = f)
    {
      paramView = a(paramView, n, i1);
      paramView.setInterpolator(l);
      paramView.addListener(new p(this));
      paramView.start();
      return;
      bool = false;
      break;
    }
  }
  
  private void b(View paramView)
  {
    boolean bool;
    if (!g)
    {
      bool = true;
      g = bool;
      if (getOrientation() != 0) {
        break label67;
      }
    }
    label67:
    for (int i1 = a;; i1 = f)
    {
      paramView = a(paramView, i1, n);
      paramView.setInterpolator(m);
      paramView.addListener(new q(this));
      paramView.start();
      return;
      bool = false;
      break;
    }
  }
  
  private void d()
  {
    int i1 = 0;
    int i3 = getChildCount();
    if (i3 <= 2) {
      n = b;
    }
    for (;;)
    {
      p = true;
      return;
      int i2 = 0;
      while (i1 < i3)
      {
        i2 += getChildAt(i1).getMeasuredHeight();
        if (i1 == 1) {
          n = i2;
        }
        i1 += 1;
      }
    }
  }
  
  private void e()
  {
    int i2 = 300;
    if (c == 0)
    {
      i1 = 300;
      d = i1;
      if (c != 0) {
        break label43;
      }
    }
    label43:
    for (int i1 = i2;; i1 = c)
    {
      e = i1;
      return;
      i1 = c;
      break;
    }
  }
  
  private void f()
  {
    float f2 = -180.0F;
    int i1;
    float f1;
    if (j != null)
    {
      if (c != 0) {
        break label89;
      }
      i1 = 300;
      if (!g) {
        break label112;
      }
      f1 = 0.0F;
      label30:
      if (!g) {
        break label118;
      }
    }
    for (;;)
    {
      ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { f1, f2 });
      localValueAnimator.setTarget(j);
      localValueAnimator.setDuration(i1);
      localValueAnimator.addUpdateListener(new n(this));
      localValueAnimator.start();
      return;
      label89:
      if (g)
      {
        i1 = d;
        break;
      }
      i1 = e;
      break;
      label112:
      f1 = -180.0F;
      break label30;
      label118:
      f2 = 0.0F;
    }
  }
  
  private int g()
  {
    int i1 = 0;
    int i3 = getChildCount();
    int i2 = 0;
    while (i1 < i3)
    {
      i2 += getChildAt(i1).getMeasuredHeight();
      i1 += 1;
    }
    return i2;
  }
  
  private void setExecuting(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void a()
  {
    if ((g) || (h)) {
      return;
    }
    o = true;
    a(this);
    f();
  }
  
  public void b()
  {
    if ((!g) || (h)) {
      return;
    }
    o = false;
    b(this);
    f();
  }
  
  public void c()
  {
    if (g)
    {
      b();
      return;
    }
    a();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    a = a(paramInt1, paramInt1);
    b = g();
    if (!p)
    {
      d();
      f = b;
    }
    if ((h) || (o)) {
      return;
    }
    setMeasuredDimension(a, n);
  }
  
  public void setClickToToggle(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void setCollapseDuration(int paramInt)
  {
    e = paramInt;
  }
  
  public void setCollapseInterpolator(Interpolator paramInterpolator)
  {
    m = paramInterpolator;
  }
  
  public void setDuration(int paramInt)
  {
    c = paramInt;
    setExpandDuration(paramInt);
    setCollapseDuration(paramInt);
  }
  
  public void setExpand(boolean paramBoolean)
  {
    g = paramBoolean;
    requestLayout();
  }
  
  public void setExpandDuration(int paramInt)
  {
    d = paramInt;
  }
  
  public void setExpandInterpolator(Interpolator paramInterpolator)
  {
    l = paramInterpolator;
  }
  
  public void setInterpolator(Interpolator paramInterpolator)
  {
    setExpandInterpolator(paramInterpolator);
    setCollapseInterpolator(paramInterpolator);
  }
  
  public void setOnStateChangedListener(s params)
  {
    k = params;
  }
  
  public void setShowViews(List<View> paramList)
  {
    removeAllViews();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      addView((View)paramList.next());
    }
    requestLayout();
    if (bk.p()) {
      postDelayed(new r(this), 200L);
    }
  }
  
  public void setSwitcher(View paramView)
  {
    j = paramView;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.ExpandableLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */