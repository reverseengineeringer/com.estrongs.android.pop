package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.ah;
import com.estrongs.android.ui.view.ESPullImageView;
import com.handmark.pulltorefresh.library.a.h;

public abstract class PullToRefreshBase<T extends View>
  extends LinearLayout
{
  T a;
  private int b;
  private float c;
  private float d;
  private float e;
  private float f;
  private boolean g = false;
  private PullToRefreshBase.State h = PullToRefreshBase.State.RESET;
  private PullToRefreshBase.Mode i = PullToRefreshBase.Mode.getDefault();
  private PullToRefreshBase.Mode j;
  private FrameLayout k;
  private boolean l = true;
  private boolean m = false;
  private boolean n = true;
  private boolean o = true;
  private boolean p = true;
  private Interpolator q;
  private PullToRefreshBase.AnimationStyle r = PullToRefreshBase.AnimationStyle.getDefault();
  private com.handmark.pulltorefresh.library.a.e s;
  private com.handmark.pulltorefresh.library.a.e t;
  private j<T> u;
  private k<T> v;
  private i<T> w;
  private PullToRefreshBase<T>.m x;
  
  public PullToRefreshBase(Context paramContext)
  {
    super(paramContext);
    b(paramContext, null);
  }
  
  public PullToRefreshBase(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b(paramContext, paramAttributeSet);
  }
  
  public PullToRefreshBase(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext);
    i = paramMode;
    b(paramContext, null);
  }
  
  public PullToRefreshBase(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.AnimationStyle paramAnimationStyle)
  {
    super(paramContext);
    i = paramMode;
    r = paramAnimationStyle;
    b(paramContext, null);
  }
  
  private final void a(int paramInt, long paramLong)
  {
    a(paramInt, paramLong, 0L, null);
  }
  
  private final void a(int paramInt, long paramLong1, long paramLong2, l paraml)
  {
    if (x != null) {
      x.a();
    }
    switch (g.a[o().ordinal()])
    {
    }
    for (int i1 = getScrollY();; i1 = getScrollX())
    {
      if (i1 != paramInt)
      {
        if (q == null) {
          q = new DecelerateInterpolator();
        }
        x = new m(this, i1, paramInt, paramLong1, paraml);
        if (paramLong2 <= 0L) {
          break;
        }
        postDelayed(x, paramLong2);
      }
      return;
    }
    post(x);
  }
  
  private void a(Context paramContext, T paramT)
  {
    k = new FrameLayout(paramContext);
    k.addView(paramT, -1, -1);
    a(k, new LinearLayout.LayoutParams(-1, -1));
  }
  
  private void b(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray;
    switch (g.a[o().ordinal()])
    {
    default: 
      setOrientation(1);
      setGravity(17);
      b = ViewConfiguration.get(paramContext).getScaledTouchSlop();
      localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ah.c);
      if (localTypedArray.hasValue(4)) {
        i = PullToRefreshBase.Mode.mapIntToValue(localTypedArray.getInteger(4, 0));
      }
      if (localTypedArray.hasValue(12)) {
        r = PullToRefreshBase.AnimationStyle.mapIntToValue(localTypedArray.getInteger(12, 0));
      }
      a = a(paramContext, paramAttributeSet);
      a(paramContext, a);
      s = a(paramContext, PullToRefreshBase.Mode.PULL_FROM_START, localTypedArray);
      t = a(paramContext, PullToRefreshBase.Mode.PULL_FROM_END, localTypedArray);
      if (localTypedArray.hasValue(0))
      {
        paramContext = localTypedArray.getDrawable(0);
        if (paramContext != null) {
          a.setBackgroundDrawable(paramContext);
        }
      }
      break;
    }
    for (;;)
    {
      if (localTypedArray.hasValue(9)) {
        o = localTypedArray.getBoolean(9, true);
      }
      if (localTypedArray.hasValue(13)) {
        m = localTypedArray.getBoolean(13, false);
      }
      a(localTypedArray);
      localTypedArray.recycle();
      f();
      return;
      setOrientation(0);
      break;
      if (localTypedArray.hasValue(16))
      {
        h.a("ptrAdapterViewBackground", "ptrRefreshableViewBackground");
        paramContext = localTypedArray.getDrawable(16);
        if (paramContext != null) {
          a.setBackgroundDrawable(paramContext);
        }
      }
    }
  }
  
  private void u()
  {
    if (u != null) {
      u.a(this);
    }
    do
    {
      do
      {
        return;
      } while (v == null);
      if (j == PullToRefreshBase.Mode.PULL_FROM_START)
      {
        v.a(this);
        return;
      }
    } while (j != PullToRefreshBase.Mode.PULL_FROM_END);
    v.b(this);
  }
  
  private boolean v()
  {
    switch (g.c[i.ordinal()])
    {
    }
    do
    {
      return false;
      return d();
      return e();
    } while ((!e()) && (!d()));
    return true;
  }
  
  private void w()
  {
    float f2;
    float f1;
    int i2;
    int i1;
    switch (g.a[o().ordinal()])
    {
    default: 
      f2 = f;
      f1 = d;
      switch (g.c[j.ordinal()])
      {
      default: 
        i2 = Math.round(Math.min(f2 - f1, 0.0F) / 4.0F);
        i1 = q();
        label89:
        a(i2);
        if ((i2 != 0) && (!m()))
        {
          f1 = Math.abs(i2) / i1;
          switch (g.c[j.ordinal()])
          {
          default: 
            s.b(f1);
            label156:
            if ((h == PullToRefreshBase.State.RESET) || ((h != PullToRefreshBase.State.PULL_TO_REFRESH) && (i1 >= Math.abs(i2)))) {
              a(PullToRefreshBase.State.PULL_TO_REFRESH, new boolean[0]);
            }
            break;
          }
        }
        break;
      }
      break;
    }
    while ((h != PullToRefreshBase.State.PULL_TO_REFRESH) || (i1 >= Math.abs(i2)))
    {
      return;
      f2 = e;
      f1 = c;
      break;
      i2 = Math.round(Math.max(f2 - f1, 0.0F) / 4.0F);
      i1 = p();
      break label89;
      t.b(f1);
      break label156;
    }
    a(PullToRefreshBase.State.RELEASE_TO_REFRESH, new boolean[0]);
  }
  
  private LinearLayout.LayoutParams x()
  {
    switch (g.a[o().ordinal()])
    {
    default: 
      return new LinearLayout.LayoutParams(-1, -2);
    }
    return new LinearLayout.LayoutParams(-2, -1);
  }
  
  private int y()
  {
    switch (g.a[o().ordinal()])
    {
    default: 
      return Math.round(getHeight() / 4.0F);
    }
    return Math.round(getWidth() / 4.0F);
  }
  
  protected abstract T a(Context paramContext, AttributeSet paramAttributeSet);
  
  protected com.handmark.pulltorefresh.library.a.e a(Context paramContext, PullToRefreshBase.Mode paramMode, TypedArray paramTypedArray)
  {
    paramContext = r.createLoadingLayout(paramContext, paramMode, o(), paramTypedArray);
    paramContext.setVisibility(4);
    return paramContext;
  }
  
  public final a a(boolean paramBoolean1, boolean paramBoolean2)
  {
    return b(paramBoolean1, paramBoolean2);
  }
  
  protected void a()
  {
    switch (g.c[j.ordinal()])
    {
    default: 
      return;
    case 1: 
      t.g();
      return;
    }
    s.g();
  }
  
  protected final void a(int paramInt)
  {
    int i1 = y();
    paramInt = Math.min(i1, Math.max(-i1, paramInt));
    if (p)
    {
      if (paramInt >= 0) {
        break label69;
      }
      s.setVisibility(0);
    }
    for (;;)
    {
      switch (g.a[o().ordinal()])
      {
      default: 
        return;
        label69:
        if (paramInt > 0)
        {
          t.setVisibility(0);
        }
        else
        {
          s.setVisibility(4);
          t.setVisibility(4);
        }
        break;
      }
    }
    scrollTo(0, paramInt);
    ((ESPullImageView)s.findViewById(2131362665)).a(Math.abs(paramInt) * 1.0D / s.findViewById(2131362664).getHeight());
    return;
    scrollTo(paramInt, 0);
  }
  
  protected final void a(int paramInt1, int paramInt2)
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)k.getLayoutParams();
    switch (g.a[o().ordinal()])
    {
    }
    do
    {
      do
      {
        return;
      } while (width == paramInt1);
      width = paramInt1;
      k.requestLayout();
      return;
    } while (height == paramInt2);
    height = paramInt2;
    k.requestLayout();
  }
  
  protected final void a(int paramInt, l paraml)
  {
    a(paramInt, r(), 0L, paraml);
  }
  
  protected void a(TypedArray paramTypedArray) {}
  
  protected void a(Bundle paramBundle) {}
  
  protected final void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  protected final void a(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, -1, paramLayoutParams);
  }
  
  public final void a(PullToRefreshBase.Mode paramMode)
  {
    if (paramMode != i)
    {
      i = paramMode;
      f();
    }
  }
  
  final void a(PullToRefreshBase.State paramState, boolean... paramVarArgs)
  {
    h = paramState;
    switch (g.b[h.ordinal()])
    {
    }
    for (;;)
    {
      if (w != null) {
        w.a(this, h, j);
      }
      return;
      c();
      continue;
      a();
      continue;
      b();
      continue;
      b(paramVarArgs[0]);
    }
  }
  
  public final void a(k<T> paramk)
  {
    v = paramk;
    u = null;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    h().a(paramCharSequence);
  }
  
  public void a(CharSequence paramCharSequence, PullToRefreshBase.Mode paramMode)
  {
    a(paramMode.showHeaderLoadingLayout(), paramMode.showFooterLoadingLayout()).c(paramCharSequence);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    View localView = j();
    if ((localView instanceof ViewGroup))
    {
      ((ViewGroup)localView).addView(paramView, paramInt, paramLayoutParams);
      return;
    }
    throw new UnsupportedOperationException("Refreshable View is not a ViewGroup so can't addView");
  }
  
  protected b b(boolean paramBoolean1, boolean paramBoolean2)
  {
    b localb = new b();
    if ((paramBoolean1) && (i.showHeaderLoadingLayout())) {
      localb.a(s);
    }
    if ((paramBoolean2) && (i.showFooterLoadingLayout())) {
      localb.a(t);
    }
    return localb;
  }
  
  protected void b()
  {
    switch (g.c[j.ordinal()])
    {
    default: 
      return;
    case 1: 
      t.i();
      return;
    }
    s.i();
  }
  
  protected final void b(int paramInt)
  {
    a(paramInt, r());
  }
  
  protected void b(Bundle paramBundle) {}
  
  public void b(CharSequence paramCharSequence)
  {
    h().b(paramCharSequence);
  }
  
  protected void b(boolean paramBoolean)
  {
    if (i.showHeaderLoadingLayout()) {
      s.h();
    }
    if (i.showFooterLoadingLayout()) {
      t.h();
    }
    if (paramBoolean)
    {
      if (l)
      {
        e locale = new e(this);
        switch (g.c[j.ordinal()])
        {
        case 2: 
        default: 
          a(-q(), locale);
          return;
        }
        a(p(), locale);
        return;
      }
      b(0);
      return;
    }
    u();
  }
  
  protected void c()
  {
    g = false;
    p = true;
    s.j();
    t.j();
    b(0);
  }
  
  public void c(CharSequence paramCharSequence)
  {
    a(paramCharSequence, PullToRefreshBase.Mode.BOTH);
  }
  
  protected abstract boolean d();
  
  protected abstract boolean e();
  
  protected void f()
  {
    Object localObject = x();
    if (this == s.getParent()) {
      removeView(s);
    }
    if (i.showHeaderLoadingLayout()) {
      a(s, 0, (ViewGroup.LayoutParams)localObject);
    }
    if (this == t.getParent()) {
      removeView(t);
    }
    if (i.showFooterLoadingLayout()) {
      a(t, (ViewGroup.LayoutParams)localObject);
    }
    t();
    if (i != PullToRefreshBase.Mode.BOTH) {}
    for (localObject = i;; localObject = PullToRefreshBase.Mode.PULL_FROM_START)
    {
      j = ((PullToRefreshBase.Mode)localObject);
      return;
    }
  }
  
  public final PullToRefreshBase.Mode g()
  {
    return j;
  }
  
  public final a h()
  {
    return a(true, true);
  }
  
  public final PullToRefreshBase.Mode i()
  {
    return i;
  }
  
  public final T j()
  {
    return a;
  }
  
  public final boolean k()
  {
    return i.permitsPullToRefresh();
  }
  
  public final boolean l()
  {
    return (Build.VERSION.SDK_INT >= 9) && (o) && (c.a(a));
  }
  
  public final boolean m()
  {
    return (h == PullToRefreshBase.State.REFRESHING) || (h == PullToRefreshBase.State.MANUAL_REFRESHING);
  }
  
  public final void n()
  {
    if (m()) {
      a(PullToRefreshBase.State.RESET, new boolean[0]);
    }
  }
  
  public abstract PullToRefreshBase.Orientation o();
  
  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!k()) {
      return false;
    }
    int i1 = paramMotionEvent.getAction();
    if ((i1 == 3) || (i1 == 1))
    {
      g = false;
      return false;
    }
    if ((i1 != 0) && (g)) {
      return true;
    }
    switch (i1)
    {
    }
    for (;;)
    {
      return g;
      if ((!m) && (m())) {
        return true;
      }
      if (v())
      {
        float f3 = paramMotionEvent.getY();
        float f4 = paramMotionEvent.getX();
        float f2;
        switch (g.a[o().ordinal()])
        {
        default: 
          f2 = f3 - d;
        }
        for (float f1 = f4 - c;; f1 = f3 - d)
        {
          float f5 = Math.abs(f2);
          if ((f5 <= b) || ((n) && (f5 <= Math.abs(f1)))) {
            break;
          }
          if ((!i.showHeaderLoadingLayout()) || (f2 < 1.0F) || (!d())) {
            break label273;
          }
          d = f3;
          c = f4;
          g = true;
          if (i != PullToRefreshBase.Mode.BOTH) {
            break;
          }
          j = PullToRefreshBase.Mode.PULL_FROM_START;
          break;
          f2 = f4 - c;
        }
        label273:
        if ((i.showFooterLoadingLayout()) && (f2 <= -1.0F) && (e()))
        {
          d = f3;
          c = f4;
          g = true;
          if (i == PullToRefreshBase.Mode.BOTH)
          {
            j = PullToRefreshBase.Mode.PULL_FROM_END;
            continue;
            if (v())
            {
              f1 = paramMotionEvent.getY();
              f = f1;
              d = f1;
              f1 = paramMotionEvent.getX();
              e = f1;
              c = f1;
              g = false;
            }
          }
        }
      }
    }
  }
  
  protected final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof Bundle))
    {
      paramParcelable = (Bundle)paramParcelable;
      a(PullToRefreshBase.Mode.mapIntToValue(paramParcelable.getInt("ptr_mode", 0)));
      j = PullToRefreshBase.Mode.mapIntToValue(paramParcelable.getInt("ptr_current_mode", 0));
      m = paramParcelable.getBoolean("ptr_disable_scrolling", false);
      l = paramParcelable.getBoolean("ptr_show_refreshing_view", true);
      super.onRestoreInstanceState(paramParcelable.getParcelable("ptr_super"));
      PullToRefreshBase.State localState = PullToRefreshBase.State.mapIntToValue(paramParcelable.getInt("ptr_state", 0));
      if ((localState == PullToRefreshBase.State.REFRESHING) || (localState == PullToRefreshBase.State.MANUAL_REFRESHING)) {
        a(localState, new boolean[] { true });
      }
      a(paramParcelable);
      return;
    }
    super.onRestoreInstanceState(paramParcelable);
  }
  
  protected final Parcelable onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    b(localBundle);
    localBundle.putInt("ptr_state", h.getIntValue());
    localBundle.putInt("ptr_mode", i.getIntValue());
    localBundle.putInt("ptr_current_mode", j.getIntValue());
    localBundle.putBoolean("ptr_disable_scrolling", m);
    localBundle.putBoolean("ptr_show_refreshing_view", l);
    localBundle.putParcelable("ptr_super", super.onSaveInstanceState());
    return localBundle;
  }
  
  protected final void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    t();
    a(paramInt1, paramInt2);
    post(new f(this));
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!k()) {}
    do
    {
      do
      {
        do
        {
          do
          {
            return false;
            if ((!m) && (m())) {
              return true;
            }
          } while ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0));
          switch (paramMotionEvent.getAction())
          {
          default: 
            return false;
          }
        } while (!v());
        float f1 = paramMotionEvent.getY();
        f = f1;
        d = f1;
        f1 = paramMotionEvent.getX();
        e = f1;
        c = f1;
        return true;
      } while (!g);
      d = paramMotionEvent.getY();
      c = paramMotionEvent.getX();
      w();
      return true;
    } while (!g);
    g = false;
    if ((h == PullToRefreshBase.State.RELEASE_TO_REFRESH) && ((u != null) || (v != null)))
    {
      a(PullToRefreshBase.State.REFRESHING, new boolean[] { true });
      return true;
    }
    if (m())
    {
      b(0);
      return true;
    }
    a(PullToRefreshBase.State.RESET, new boolean[0]);
    return true;
  }
  
  protected final int p()
  {
    return t.f();
  }
  
  protected final int q()
  {
    return s.f();
  }
  
  protected int r()
  {
    return 200;
  }
  
  protected FrameLayout s()
  {
    return k;
  }
  
  public void setLongClickable(boolean paramBoolean)
  {
    j().setLongClickable(paramBoolean);
  }
  
  protected final void t()
  {
    int i6 = 0;
    int i7 = (int)(y() * 1.2F);
    int i3 = getPaddingLeft();
    int i2 = getPaddingTop();
    int i5 = getPaddingRight();
    int i4 = getPaddingBottom();
    int i1;
    switch (g.a[o().ordinal()])
    {
    default: 
      i1 = i4;
      i4 = i3;
      i3 = i2;
      i2 = i1;
      i1 = i5;
    }
    for (;;)
    {
      setPadding(i4, i3, i1, i2);
      return;
      if (i.showHeaderLoadingLayout()) {
        s.b(i7);
      }
      for (i1 = -i7;; i1 = 0)
      {
        if (!i.showFooterLoadingLayout()) {
          break label163;
        }
        t.b(i7);
        i3 = -i7;
        i5 = i1;
        i1 = i3;
        i3 = i2;
        i2 = i4;
        i4 = i5;
        break;
      }
      label163:
      i5 = i1;
      i1 = 0;
      i3 = i2;
      i2 = i4;
      i4 = i5;
      continue;
      if (i.showHeaderLoadingLayout()) {
        s.a(i7);
      }
      for (i1 = -i7;; i1 = 0)
      {
        if (!i.showFooterLoadingLayout()) {
          break label250;
        }
        t.a(i7);
        i2 = -i7;
        i4 = i1;
        i1 = i5;
        i5 = i3;
        i3 = i4;
        i4 = i5;
        break;
      }
      label250:
      i4 = i1;
      i1 = i5;
      i5 = i3;
      i2 = i6;
      i3 = i4;
      i4 = i5;
    }
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */