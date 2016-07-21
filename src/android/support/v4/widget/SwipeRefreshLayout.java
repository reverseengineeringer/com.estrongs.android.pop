package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.bi;
import android.support.v4.view.br;
import android.support.v4.view.bs;
import android.support.v4.view.bt;
import android.support.v4.view.bu;
import android.support.v4.view.cn;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;

public class SwipeRefreshLayout
  extends ViewGroup
  implements br, bt
{
  private static final String c = SwipeRefreshLayout.class.getSimpleName();
  private static final int[] y = { 16842766 };
  private int A = -1;
  private float B;
  private at C;
  private Animation D;
  private Animation E;
  private Animation F;
  private Animation G;
  private Animation H;
  private float I;
  private boolean J;
  private int K;
  private int L;
  private boolean M;
  private Animation.AnimationListener N = new ce(this);
  private final Animation O = new cj(this);
  private final Animation P = new ck(this);
  protected int a;
  protected int b;
  private View d;
  private cm e;
  private boolean f = false;
  private int g;
  private float h = -1.0F;
  private float i;
  private final bu j;
  private final bs k;
  private final int[] l = new int[2];
  private final int[] m = new int[2];
  private boolean n;
  private int o;
  private int p;
  private boolean q = false;
  private float r;
  private float s;
  private boolean t;
  private int u = -1;
  private boolean v;
  private boolean w;
  private final DecelerateInterpolator x;
  private e z;
  
  public SwipeRefreshLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    g = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    o = getResources().getInteger(17694721);
    setWillNotDraw(false);
    x = new DecelerateInterpolator(2.0F);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, y);
    setEnabled(paramContext.getBoolean(0, true));
    paramContext.recycle();
    paramContext = getResources().getDisplayMetrics();
    K = ((int)(density * 40.0F));
    L = ((int)(density * 40.0F));
    c();
    cn.a(this, true);
    I = (density * 64.0F);
    h = I;
    j = new bu(this);
    k = new bs(this);
    setNestedScrollingEnabled(true);
  }
  
  private float a(MotionEvent paramMotionEvent, int paramInt)
  {
    paramInt = bi.a(paramMotionEvent, paramInt);
    if (paramInt < 0) {
      return -1.0F;
    }
    return bi.d(paramMotionEvent, paramInt);
  }
  
  private Animation a(int paramInt1, int paramInt2)
  {
    if ((v) && (d())) {
      return null;
    }
    ch localch = new ch(this, paramInt1, paramInt2);
    localch.setDuration(300L);
    z.a(null);
    z.clearAnimation();
    z.startAnimation(localch);
    return localch;
  }
  
  private void a(float paramFloat)
  {
    C.a(true);
    float f2 = Math.min(1.0F, Math.abs(paramFloat / h));
    float f3 = (float)Math.max(f2 - 0.4D, 0.0D) * 5.0F / 3.0F;
    float f4 = Math.abs(paramFloat);
    float f5 = h;
    float f1;
    int i1;
    int i2;
    if (M)
    {
      f1 = I - b;
      f4 = Math.max(0.0F, Math.min(f4 - f5, f1 * 2.0F) / f1);
      f4 = (float)(f4 / 4.0F - Math.pow(f4 / 4.0F, 2.0D)) * 2.0F;
      i1 = b;
      i2 = (int)(f1 * f2 + f1 * f4 * 2.0F);
      if (z.getVisibility() != 0) {
        z.setVisibility(0);
      }
      if (!v)
      {
        cn.h(z, 1.0F);
        cn.i(z, 1.0F);
      }
      if (v) {
        setAnimationProgress(Math.min(1.0F, paramFloat / h));
      }
      if (paramFloat >= h) {
        break label318;
      }
      if ((C.getAlpha() > 76) && (!a(F))) {
        e();
      }
    }
    for (;;)
    {
      C.a(0.0F, Math.min(0.8F, f3 * 0.8F));
      C.a(Math.min(1.0F, f3));
      C.b((-0.25F + f3 * 0.4F + f4 * 2.0F) * 0.5F);
      a(i2 + i1 - p, true);
      return;
      f1 = I;
      break;
      label318:
      if ((C.getAlpha() < 255) && (!a(G))) {
        f();
      }
    }
  }
  
  private void a(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    a = paramInt;
    O.reset();
    O.setDuration(200L);
    O.setInterpolator(x);
    if (paramAnimationListener != null) {
      z.a(paramAnimationListener);
    }
    z.clearAnimation();
    z.startAnimation(O);
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    z.bringToFront();
    z.offsetTopAndBottom(paramInt);
    p = z.getTop();
    if ((paramBoolean) && (Build.VERSION.SDK_INT < 11)) {
      invalidate();
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = bi.b(paramMotionEvent);
    if (bi.b(paramMotionEvent, i1) == u) {
      if (i1 != 0) {
        break label33;
      }
    }
    label33:
    for (i1 = 1;; i1 = 0)
    {
      u = bi.b(paramMotionEvent, i1);
      return;
    }
  }
  
  private void a(Animation.AnimationListener paramAnimationListener)
  {
    z.setVisibility(0);
    if (Build.VERSION.SDK_INT >= 11) {
      C.setAlpha(255);
    }
    D = new cf(this);
    D.setDuration(o);
    if (paramAnimationListener != null) {
      z.a(paramAnimationListener);
    }
    z.clearAnimation();
    z.startAnimation(D);
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (f != paramBoolean1)
    {
      J = paramBoolean2;
      g();
      f = paramBoolean1;
      if (f) {
        a(p, N);
      }
    }
    else
    {
      return;
    }
    b(N);
  }
  
  private boolean a(Animation paramAnimation)
  {
    return (paramAnimation != null) && (paramAnimation.hasStarted()) && (!paramAnimation.hasEnded());
  }
  
  private void b()
  {
    z.clearAnimation();
    C.stop();
    z.setVisibility(8);
    setColorViewAlpha(255);
    if (v) {
      setAnimationProgress(0.0F);
    }
    for (;;)
    {
      p = z.getTop();
      return;
      a(b - p, true);
    }
  }
  
  private void b(float paramFloat)
  {
    if (paramFloat > h)
    {
      a(true, true);
      return;
    }
    f = false;
    C.a(0.0F, 0.0F);
    ci localci = null;
    if (!v) {
      localci = new ci(this);
    }
    b(p, localci);
    C.a(false);
  }
  
  private void b(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    if (v)
    {
      c(paramInt, paramAnimationListener);
      return;
    }
    a = paramInt;
    P.reset();
    P.setDuration(200L);
    P.setInterpolator(x);
    if (paramAnimationListener != null) {
      z.a(paramAnimationListener);
    }
    z.clearAnimation();
    z.startAnimation(P);
  }
  
  private void b(Animation.AnimationListener paramAnimationListener)
  {
    E = new cg(this);
    E.setDuration(150L);
    z.a(paramAnimationListener);
    z.clearAnimation();
    z.startAnimation(E);
  }
  
  private void c()
  {
    z = new e(getContext(), -328966, 20.0F);
    C = new at(getContext(), this);
    C.b(-328966);
    z.setImageDrawable(C);
    z.setVisibility(8);
    addView(z);
  }
  
  private void c(float paramFloat)
  {
    a(a + (int)((b - a) * paramFloat) - z.getTop(), false);
  }
  
  private void c(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    a = paramInt;
    if (d()) {}
    for (B = C.getAlpha();; B = cn.t(z))
    {
      H = new cl(this);
      H.setDuration(150L);
      if (paramAnimationListener != null) {
        z.a(paramAnimationListener);
      }
      z.clearAnimation();
      z.startAnimation(H);
      return;
    }
  }
  
  private boolean d()
  {
    return Build.VERSION.SDK_INT < 11;
  }
  
  private void e()
  {
    F = a(C.getAlpha(), 76);
  }
  
  private void f()
  {
    G = a(C.getAlpha(), 255);
  }
  
  private void g()
  {
    int i1;
    if (d == null) {
      i1 = 0;
    }
    for (;;)
    {
      if (i1 < getChildCount())
      {
        View localView = getChildAt(i1);
        if (!localView.equals(z)) {
          d = localView;
        }
      }
      else
      {
        return;
      }
      i1 += 1;
    }
  }
  
  private void setAnimationProgress(float paramFloat)
  {
    if (d())
    {
      setColorViewAlpha((int)(255.0F * paramFloat));
      return;
    }
    cn.h(z, paramFloat);
    cn.i(z, paramFloat);
  }
  
  private void setColorViewAlpha(int paramInt)
  {
    z.getBackground().setAlpha(paramInt);
    C.setAlpha(paramInt);
  }
  
  public boolean a()
  {
    boolean bool = false;
    if (Build.VERSION.SDK_INT < 14)
    {
      if ((d instanceof AbsListView))
      {
        AbsListView localAbsListView = (AbsListView)d;
        return (localAbsListView.getChildCount() > 0) && ((localAbsListView.getFirstVisiblePosition() > 0) || (localAbsListView.getChildAt(0).getTop() < localAbsListView.getPaddingTop()));
      }
      if ((cn.b(d, -1)) || (d.getScrollY() > 0)) {
        bool = true;
      }
      return bool;
    }
    return cn.b(d, -1);
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return k.a(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return k.a(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return k.a(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return k.a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (A < 0) {}
    do
    {
      return paramInt2;
      if (paramInt2 == paramInt1 - 1) {
        return A;
      }
    } while (paramInt2 < A);
    return paramInt2 + 1;
  }
  
  public int getNestedScrollAxes()
  {
    return j.a();
  }
  
  public int getProgressCircleDiameter()
  {
    if (z != null) {
      return z.getMeasuredHeight();
    }
    return 0;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return k.b();
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return k.a();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    b();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    g();
    int i1 = bi.a(paramMotionEvent);
    if ((w) && (i1 == 0)) {
      w = false;
    }
    if ((!isEnabled()) || (w) || (a()) || (f) || (n)) {
      return false;
    }
    switch (i1)
    {
    }
    for (;;)
    {
      return t;
      a(b - z.getTop(), true);
      u = bi.b(paramMotionEvent, 0);
      t = false;
      float f1 = a(paramMotionEvent, u);
      if (f1 == -1.0F) {
        break;
      }
      s = f1;
      continue;
      if (u == -1)
      {
        Log.e(c, "Got ACTION_MOVE event but don't have an active pointer id.");
        return false;
      }
      f1 = a(paramMotionEvent, u);
      if (f1 == -1.0F) {
        break;
      }
      if ((f1 - s > g) && (!t))
      {
        r = (s + g);
        t = true;
        C.setAlpha(76);
        continue;
        a(paramMotionEvent);
        continue;
        t = false;
        u = -1;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = getMeasuredWidth();
    paramInt2 = getMeasuredHeight();
    if (getChildCount() == 0) {}
    do
    {
      return;
      if (d == null) {
        g();
      }
    } while (d == null);
    View localView = d;
    paramInt3 = getPaddingLeft();
    paramInt4 = getPaddingTop();
    localView.layout(paramInt3, paramInt4, paramInt1 - getPaddingLeft() - getPaddingRight() + paramInt3, paramInt2 - getPaddingTop() - getPaddingBottom() + paramInt4);
    paramInt2 = z.getMeasuredWidth();
    paramInt3 = z.getMeasuredHeight();
    z.layout(paramInt1 / 2 - paramInt2 / 2, p, paramInt1 / 2 + paramInt2 / 2, p + paramInt3);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (d == null) {
      g();
    }
    if (d == null) {}
    for (;;)
    {
      return;
      d.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), 1073741824));
      z.measure(View.MeasureSpec.makeMeasureSpec(K, 1073741824), View.MeasureSpec.makeMeasureSpec(L, 1073741824));
      if ((!M) && (!q))
      {
        q = true;
        paramInt1 = -z.getMeasuredHeight();
        b = paramInt1;
        p = paramInt1;
      }
      A = -1;
      paramInt1 = 0;
      while (paramInt1 < getChildCount())
      {
        if (getChildAt(paramInt1) == z)
        {
          A = paramInt1;
          return;
        }
        paramInt1 += 1;
      }
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if ((paramInt2 > 0) && (i > 0.0F))
    {
      if (paramInt2 <= i) {
        break label141;
      }
      paramArrayOfInt[1] = (paramInt2 - (int)i);
      i = 0.0F;
    }
    for (;;)
    {
      a(i);
      if ((M) && (paramInt2 > 0) && (i == 0.0F) && (Math.abs(paramInt2 - paramArrayOfInt[1]) > 0)) {
        z.setVisibility(8);
      }
      paramView = l;
      if (dispatchNestedPreScroll(paramInt1 - paramArrayOfInt[0], paramInt2 - paramArrayOfInt[1], paramView, null))
      {
        paramArrayOfInt[0] += paramView[0];
        paramInt1 = paramArrayOfInt[1];
        paramView[1] += paramInt1;
      }
      return;
      label141:
      i -= paramInt2;
      paramArrayOfInt[1] = paramInt2;
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, m);
    paramInt1 = m[1] + paramInt4;
    if (paramInt1 < 0)
    {
      float f1 = i;
      i = (Math.abs(paramInt1) + f1);
      a(i);
    }
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    j.a(paramView1, paramView2, paramInt);
    startNestedScroll(paramInt & 0x2);
    i = 0.0F;
    n = true;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    return (isEnabled()) && (a()) && (!w) && (!f) && ((paramInt & 0x2) != 0);
  }
  
  public void onStopNestedScroll(View paramView)
  {
    j.a(paramView);
    n = false;
    if (i > 0.0F)
    {
      b(i);
      i = 0.0F;
    }
    stopNestedScroll();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = bi.a(paramMotionEvent);
    if ((w) && (i1 == 0)) {
      w = false;
    }
    if ((!isEnabled()) || (w) || (a()) || (n)) {
      return false;
    }
    switch (i1)
    {
    case 3: 
    case 4: 
    default: 
    case 0: 
    case 2: 
    case 5: 
    case 6: 
      for (;;)
      {
        return true;
        u = bi.b(paramMotionEvent, 0);
        t = false;
        continue;
        i1 = bi.a(paramMotionEvent, u);
        if (i1 < 0)
        {
          Log.e(c, "Got ACTION_MOVE event but have an invalid active pointer id.");
          return false;
        }
        f1 = (bi.d(paramMotionEvent, i1) - r) * 0.5F;
        if (t)
        {
          if (f1 <= 0.0F) {
            break;
          }
          a(f1);
          continue;
          i1 = bi.b(paramMotionEvent);
          if (i1 < 0)
          {
            Log.e(c, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
            return false;
          }
          u = bi.b(paramMotionEvent, i1);
          continue;
          a(paramMotionEvent);
        }
      }
    }
    i1 = bi.a(paramMotionEvent, u);
    if (i1 < 0)
    {
      Log.e(c, "Got ACTION_UP event but don't have an active pointer id.");
      return false;
    }
    float f1 = bi.d(paramMotionEvent, i1);
    float f2 = r;
    t = false;
    b((f1 - f2) * 0.5F);
    u = -1;
    return false;
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if (((Build.VERSION.SDK_INT < 21) && ((d instanceof AbsListView))) || ((d != null) && (!cn.F(d)))) {
      return;
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  @Deprecated
  public void setColorScheme(int... paramVarArgs)
  {
    setColorSchemeResources(paramVarArgs);
  }
  
  public void setColorSchemeColors(int... paramVarArgs)
  {
    g();
    C.a(paramVarArgs);
  }
  
  public void setColorSchemeResources(int... paramVarArgs)
  {
    Resources localResources = getResources();
    int[] arrayOfInt = new int[paramVarArgs.length];
    int i1 = 0;
    while (i1 < paramVarArgs.length)
    {
      arrayOfInt[i1] = localResources.getColor(paramVarArgs[i1]);
      i1 += 1;
    }
    setColorSchemeColors(arrayOfInt);
  }
  
  public void setDistanceToTriggerSync(int paramInt)
  {
    h = paramInt;
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    k.a(paramBoolean);
  }
  
  public void setOnRefreshListener(cm paramcm)
  {
    e = paramcm;
  }
  
  @Deprecated
  public void setProgressBackgroundColor(int paramInt)
  {
    setProgressBackgroundColorSchemeResource(paramInt);
  }
  
  public void setProgressBackgroundColorSchemeColor(int paramInt)
  {
    z.setBackgroundColor(paramInt);
    C.b(paramInt);
  }
  
  public void setProgressBackgroundColorSchemeResource(int paramInt)
  {
    setProgressBackgroundColorSchemeColor(getResources().getColor(paramInt));
  }
  
  public void setRefreshing(boolean paramBoolean)
  {
    if ((paramBoolean) && (f != paramBoolean))
    {
      f = paramBoolean;
      if (!M) {}
      for (int i1 = (int)(I + b);; i1 = (int)I)
      {
        a(i1 - p, true);
        J = false;
        a(N);
        return;
      }
    }
    a(paramBoolean, false);
  }
  
  public void setSize(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      return;
    }
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    int i1;
    if (paramInt == 0)
    {
      i1 = (int)(density * 56.0F);
      K = i1;
    }
    for (L = i1;; L = i1)
    {
      z.setImageDrawable(null);
      C.a(paramInt);
      z.setImageDrawable(C);
      return;
      i1 = (int)(density * 40.0F);
      K = i1;
    }
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return k.a(paramInt);
  }
  
  public void stopNestedScroll()
  {
    k.c();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SwipeRefreshLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */