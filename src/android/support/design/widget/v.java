package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.design.j;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;

public class v
  extends ViewGroup.MarginLayoutParams
{
  CoordinatorLayout.Behavior a;
  boolean b = false;
  public int c = 0;
  public int d = 0;
  public int e = -1;
  int f = -1;
  View g;
  View h;
  final Rect i = new Rect();
  Object j;
  private boolean k;
  private boolean l;
  private boolean m;
  
  public v(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  v(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, j.CoordinatorLayout_LayoutParams);
    c = localTypedArray.getInteger(j.CoordinatorLayout_LayoutParams_android_layout_gravity, 0);
    f = localTypedArray.getResourceId(j.CoordinatorLayout_LayoutParams_layout_anchor, -1);
    d = localTypedArray.getInteger(j.CoordinatorLayout_LayoutParams_layout_anchorGravity, 0);
    e = localTypedArray.getInteger(j.CoordinatorLayout_LayoutParams_layout_keyline, -1);
    b = localTypedArray.hasValue(j.CoordinatorLayout_LayoutParams_layout_behavior);
    if (b) {
      a = CoordinatorLayout.a(paramContext, paramAttributeSet, localTypedArray.getString(j.CoordinatorLayout_LayoutParams_layout_behavior));
    }
    localTypedArray.recycle();
  }
  
  public v(v paramv)
  {
    super(paramv);
  }
  
  public v(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public v(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
  
  private void a(View paramView, CoordinatorLayout paramCoordinatorLayout)
  {
    g = paramCoordinatorLayout.findViewById(f);
    if (g != null)
    {
      if (g == paramCoordinatorLayout)
      {
        if (paramCoordinatorLayout.isInEditMode())
        {
          h = null;
          g = null;
          return;
        }
        throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
      }
      View localView = g;
      for (ViewParent localViewParent = g.getParent(); (localViewParent != paramCoordinatorLayout) && (localViewParent != null); localViewParent = localViewParent.getParent())
      {
        if (localViewParent == paramView)
        {
          if (paramCoordinatorLayout.isInEditMode())
          {
            h = null;
            g = null;
            return;
          }
          throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
        }
        if ((localViewParent instanceof View)) {
          localView = (View)localViewParent;
        }
      }
      h = localView;
      return;
    }
    if (paramCoordinatorLayout.isInEditMode())
    {
      h = null;
      g = null;
      return;
    }
    throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + paramCoordinatorLayout.getResources().getResourceName(f) + " to anchor view " + paramView);
  }
  
  private boolean b(View paramView, CoordinatorLayout paramCoordinatorLayout)
  {
    if (g.getId() != f) {
      return false;
    }
    View localView = g;
    for (ViewParent localViewParent = g.getParent(); localViewParent != paramCoordinatorLayout; localViewParent = localViewParent.getParent())
    {
      if ((localViewParent == null) || (localViewParent == paramView))
      {
        h = null;
        g = null;
        return false;
      }
      if ((localViewParent instanceof View)) {
        localView = (View)localViewParent;
      }
    }
    h = localView;
    return true;
  }
  
  public int a()
  {
    return f;
  }
  
  void a(Rect paramRect)
  {
    i.set(paramRect);
  }
  
  public void a(CoordinatorLayout.Behavior paramBehavior)
  {
    if (a != paramBehavior)
    {
      a = paramBehavior;
      j = null;
      b = true;
    }
  }
  
  void a(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView)
  {
    if (k) {
      return true;
    }
    boolean bool2 = k;
    if (a != null) {}
    for (boolean bool1 = a.e(paramCoordinatorLayout, paramView);; bool1 = false)
    {
      bool1 |= bool2;
      k = bool1;
      return bool1;
    }
  }
  
  boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
  {
    return (paramView2 == h) || ((a != null) && (a.b(paramCoordinatorLayout, paramView1, paramView2)));
  }
  
  public CoordinatorLayout.Behavior b()
  {
    return a;
  }
  
  View b(CoordinatorLayout paramCoordinatorLayout, View paramView)
  {
    if (f == -1)
    {
      h = null;
      g = null;
      return null;
    }
    if ((g == null) || (!b(paramView, paramCoordinatorLayout))) {
      a(paramView, paramCoordinatorLayout);
    }
    return g;
  }
  
  void b(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  Rect c()
  {
    return i;
  }
  
  boolean d()
  {
    return (g == null) && (f != -1);
  }
  
  boolean e()
  {
    if (a == null) {
      k = false;
    }
    return k;
  }
  
  void f()
  {
    k = false;
  }
  
  void g()
  {
    l = false;
  }
  
  boolean h()
  {
    return l;
  }
  
  boolean i()
  {
    return m;
  }
  
  void j()
  {
    m = false;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */