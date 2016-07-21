package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.support.design.j;
import android.support.v4.view.bi;
import android.support.v4.view.br;
import android.support.v4.view.ci;
import android.support.v4.view.cn;
import android.support.v4.widget.cz;
import android.support.v4.widget.dc;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

public class BottomSheetBehavior<V extends View>
  extends CoordinatorLayout.Behavior<V>
{
  private float a;
  private int b;
  private int c;
  private int d;
  private boolean e;
  private int f = 4;
  private cz g;
  private boolean h;
  private int i;
  private boolean j;
  private int k;
  private WeakReference<V> l;
  private WeakReference<View> m;
  private i n;
  private VelocityTracker o;
  private int p;
  private int q;
  private boolean r;
  private final dc s = new h(this);
  
  public BottomSheetBehavior() {}
  
  public BottomSheetBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, j.BottomSheetBehavior_Params);
    a(paramAttributeSet.getDimensionPixelSize(j.BottomSheetBehavior_Params_behavior_peekHeight, 0));
    a(paramAttributeSet.getBoolean(j.BottomSheetBehavior_Params_behavior_hideable, false));
    paramAttributeSet.recycle();
    a = ViewConfiguration.get(paramContext).getScaledMaximumFlingVelocity();
  }
  
  private View a(View paramView)
  {
    if ((paramView instanceof br)) {
      return paramView;
    }
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int i2 = paramView.getChildCount();
      int i1 = 0;
      while (i1 < i2)
      {
        View localView = a(paramView.getChildAt(i1));
        if (localView != null) {
          return localView;
        }
        i1 += 1;
      }
    }
    return null;
  }
  
  private void a()
  {
    p = -1;
    if (o != null)
    {
      o.recycle();
      o = null;
    }
  }
  
  private boolean a(View paramView, float paramFloat)
  {
    if (paramView.getTop() < d) {}
    while (Math.abs(paramView.getTop() + 0.1F * paramFloat - d) / b <= 0.5F) {
      return false;
    }
    return true;
  }
  
  private float b()
  {
    o.computeCurrentVelocity(1000, a);
    return ci.b(o, p);
  }
  
  private void b(int paramInt)
  {
    if (f == paramInt) {}
    View localView;
    do
    {
      return;
      f = paramInt;
      localView = (View)l.get();
    } while ((localView == null) || (n == null));
    n.a(localView, paramInt);
  }
  
  private void c(int paramInt)
  {
    View localView = (View)l.get();
    if ((localView != null) && (n != null))
    {
      if (paramInt > d) {
        n.a(localView, (d - paramInt) / b);
      }
    }
    else {
      return;
    }
    n.a(localView, (d - paramInt) / (d - c));
  }
  
  public final void a(int paramInt)
  {
    b = Math.max(0, paramInt);
    d = (k - paramInt);
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, Parcelable paramParcelable)
  {
    paramParcelable = (BottomSheetBehavior.SavedState)paramParcelable;
    super.a(paramCoordinatorLayout, paramV, paramParcelable.getSuperState());
    if ((a == 1) || (a == 2))
    {
      f = 4;
      return;
    }
    f = a;
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
  {
    int i2 = 3;
    if (paramV.getTop() == c) {
      b(3);
    }
    while ((paramView != m.get()) || (!j)) {
      return;
    }
    int i1;
    if (i > 0)
    {
      i1 = c;
      if (!g.a(paramV, paramV.getLeft(), i1)) {
        break label194;
      }
      b(2);
      cn.a(paramV, new k(this, paramV, i2));
    }
    for (;;)
    {
      j = false;
      return;
      if ((e) && (a(paramV, b())))
      {
        i1 = k;
        i2 = 5;
        break;
      }
      if (i == 0)
      {
        i1 = paramV.getTop();
        if (Math.abs(i1 - c) < Math.abs(i1 - d))
        {
          i1 = c;
          break;
        }
        i1 = d;
        i2 = 4;
        break;
      }
      i1 = d;
      i2 = 4;
      break;
      label194:
      b(i2);
    }
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if (paramView != (View)m.get()) {
      return;
    }
    paramInt1 = paramV.getTop();
    int i1 = paramInt1 - paramInt2;
    if (paramInt2 > 0) {
      if (i1 < c)
      {
        paramArrayOfInt[1] = (paramInt1 - c);
        cn.e(paramV, -paramArrayOfInt[1]);
        b(3);
      }
    }
    for (;;)
    {
      c(paramV.getTop());
      i = paramInt2;
      j = true;
      return;
      paramArrayOfInt[1] = paramInt2;
      cn.e(paramV, -paramInt2);
      b(1);
      continue;
      if ((paramInt2 < 0) && (!cn.b(paramView, -1))) {
        if ((i1 <= d) || (e))
        {
          paramArrayOfInt[1] = paramInt2;
          cn.e(paramV, -paramInt2);
          b(1);
        }
        else
        {
          paramArrayOfInt[1] = (paramInt1 - d);
          cn.e(paramV, -paramArrayOfInt[1]);
          b(4);
        }
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    if ((f != 1) && (f != 2)) {
      paramCoordinatorLayout.a(paramV, paramInt);
    }
    k = paramCoordinatorLayout.getHeight();
    c = Math.max(0, k - paramV.getHeight());
    d = Math.max(k - b, c);
    if (f == 3) {
      cn.e(paramV, c);
    }
    for (;;)
    {
      if (g == null) {
        g = cz.a(paramCoordinatorLayout, s);
      }
      l = new WeakReference(paramV);
      m = new WeakReference(a(paramV));
      return true;
      if ((e) && (f == 5)) {
        cn.e(paramV, k);
      } else if (f == 4) {
        cn.e(paramV, d);
      }
    }
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    boolean bool2 = true;
    if (!paramV.isShown()) {
      return false;
    }
    int i1 = bi.a(paramMotionEvent);
    if (i1 == 0) {
      a();
    }
    if (o == null) {
      o = VelocityTracker.obtain();
    }
    o.addMovement(paramMotionEvent);
    switch (i1)
    {
    }
    while ((!h) && (g.a(paramMotionEvent)))
    {
      return true;
      r = false;
      p = -1;
      if (h)
      {
        h = false;
        return false;
        int i2 = (int)paramMotionEvent.getX();
        q = ((int)paramMotionEvent.getY());
        View localView = (View)m.get();
        if ((localView != null) && (paramCoordinatorLayout.a(localView, i2, q)))
        {
          p = paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex());
          r = true;
        }
        if ((p == -1) && (!paramCoordinatorLayout.a(paramV, i2, q))) {}
        for (bool1 = true;; bool1 = false)
        {
          h = bool1;
          break;
        }
      }
    }
    paramV = (View)m.get();
    if ((i1 == 2) && (paramV != null) && (!h) && (f != 1) && (!paramCoordinatorLayout.a(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) && (Math.abs(q - paramMotionEvent.getY()) > g.d())) {}
    for (boolean bool1 = bool2;; bool1 = false) {
      return bool1;
    }
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, float paramFloat1, float paramFloat2)
  {
    return (paramView == m.get()) && ((f != 3) || (super.a(paramCoordinatorLayout, paramV, paramView, paramFloat1, paramFloat2)));
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt)
  {
    boolean bool = false;
    i = 0;
    j = false;
    if ((paramInt & 0x2) != 0) {
      bool = true;
    }
    return bool;
  }
  
  public Parcelable b(CoordinatorLayout paramCoordinatorLayout, V paramV)
  {
    return new BottomSheetBehavior.SavedState(super.b(paramCoordinatorLayout, paramV), f);
  }
  
  public boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    boolean bool2 = true;
    boolean bool1;
    if (!paramV.isShown()) {
      bool1 = false;
    }
    do
    {
      int i1;
      do
      {
        do
        {
          return bool1;
          i1 = bi.a(paramMotionEvent);
          if (f != 1) {
            break;
          }
          bool1 = bool2;
        } while (i1 == 0);
        g.b(paramMotionEvent);
        if (i1 == 0) {
          a();
        }
        if (o == null) {
          o = VelocityTracker.obtain();
        }
        o.addMovement(paramMotionEvent);
        bool1 = bool2;
      } while (i1 != 2);
      bool1 = bool2;
    } while (Math.abs(q - paramMotionEvent.getY()) <= g.d());
    g.a(paramV, paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex()));
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.BottomSheetBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */