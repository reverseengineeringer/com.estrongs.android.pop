package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.widget.f;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager
  extends ViewGroup
{
  private static final int[] a = { 16842931 };
  private static final cb ae = new cb();
  private static final Comparator<bv> c = new br();
  private static final Interpolator d = new bs();
  private boolean A;
  private int B;
  private int C;
  private int D;
  private float E;
  private float F;
  private float G;
  private float H;
  private int I = -1;
  private VelocityTracker J;
  private int K;
  private int L;
  private int M;
  private int N;
  private boolean O;
  private f P;
  private f Q;
  private boolean R = true;
  private boolean S = false;
  private boolean T;
  private int U;
  private by V;
  private by W;
  private bx aa;
  private bz ab;
  private int ac;
  private ArrayList<View> ad;
  private final Runnable af = new bt(this);
  private int ag = 0;
  private int b;
  private final ArrayList<bv> e = new ArrayList();
  private final bv f = new bv();
  private final Rect g = new Rect();
  private ae h;
  private int i;
  private int j = -1;
  private Parcelable k = null;
  private ClassLoader l = null;
  private Scroller m;
  private int n;
  private Drawable o;
  private int p;
  private int q;
  private float r = -3.4028235E38F;
  private float s = Float.MAX_VALUE;
  private int t;
  private int u;
  private boolean v;
  private boolean w;
  private boolean x;
  private int y = 1;
  private boolean z;
  
  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private int a(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    if ((Math.abs(paramInt3) > M) && (Math.abs(paramInt2) > K))
    {
      if (paramInt2 > 0) {}
      for (;;)
      {
        paramInt2 = paramInt1;
        if (e.size() > 0)
        {
          bv localbv1 = (bv)e.get(0);
          bv localbv2 = (bv)e.get(e.size() - 1);
          paramInt2 = Math.max(b, Math.min(paramInt1, b));
        }
        return paramInt2;
        paramInt1 += 1;
      }
    }
    if (paramInt1 >= i) {}
    for (float f1 = 0.4F;; f1 = 0.6F)
    {
      paramInt1 = (int)(f1 + (paramInt1 + paramFloat));
      break;
    }
  }
  
  private Rect a(Rect paramRect, View paramView)
  {
    if (paramRect == null) {
      paramRect = new Rect();
    }
    for (;;)
    {
      if (paramView == null)
      {
        paramRect.set(0, 0, 0, 0);
        return paramRect;
      }
      left = paramView.getLeft();
      right = paramView.getRight();
      top = paramView.getTop();
      bottom = paramView.getBottom();
      for (paramView = paramView.getParent(); ((paramView instanceof ViewGroup)) && (paramView != this); paramView = paramView.getParent())
      {
        paramView = (ViewGroup)paramView;
        left += paramView.getLeft();
        right += paramView.getRight();
        top += paramView.getTop();
        bottom += paramView.getBottom();
      }
      return paramRect;
    }
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!e.isEmpty()))
    {
      int i1 = getPaddingLeft();
      int i2 = getPaddingRight();
      int i3 = getPaddingLeft();
      int i4 = getPaddingRight();
      f1 = getScrollX() / (paramInt2 - i3 - i4 + paramInt4);
      paramInt2 = (int)((paramInt1 - i1 - i2 + paramInt3) * f1);
      scrollTo(paramInt2, getScrollY());
      if (!m.isFinished())
      {
        paramInt3 = m.getDuration();
        paramInt4 = m.timePassed();
        localbv = c(i);
        m.startScroll(paramInt2, 0, (int)(e * paramInt1), 0, paramInt3 - paramInt4);
      }
      return;
    }
    bv localbv = c(i);
    if (localbv != null) {}
    for (float f1 = Math.min(e, s);; f1 = 0.0F)
    {
      paramInt1 = (int)(f1 * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (paramInt1 == getScrollX()) {
        break;
      }
      a(false);
      scrollTo(paramInt1, getScrollY());
      return;
    }
  }
  
  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    bv localbv = c(paramInt1);
    float f1;
    if (localbv != null) {
      f1 = h();
    }
    for (int i1 = (int)(Math.max(r, Math.min(e, s)) * f1);; i1 = 0)
    {
      if (paramBoolean1)
      {
        a(i1, 0, paramInt2);
        if ((paramBoolean2) && (V != null)) {
          V.a(paramInt1);
        }
        if ((paramBoolean2) && (W != null)) {
          W.a(paramInt1);
        }
        return;
      }
      if ((paramBoolean2) && (V != null)) {
        V.a(paramInt1);
      }
      if ((paramBoolean2) && (W != null)) {
        W.a(paramInt1);
      }
      a(false);
      scrollTo(i1, 0);
      return;
    }
  }
  
  private void a(bv parambv1, int paramInt, bv parambv2)
  {
    int i4 = h.a();
    int i1 = h();
    float f2;
    if (i1 > 0)
    {
      f2 = n / i1;
      if (parambv2 == null) {
        break label409;
      }
      i1 = b;
      if (i1 < b)
      {
        f1 = e + d + f2;
        i1 += 1;
        i2 = 0;
      }
    }
    else
    {
      for (;;)
      {
        if ((i1 > b) || (i2 >= e.size())) {
          break label409;
        }
        for (parambv2 = (bv)e.get(i2);; parambv2 = (bv)e.get(i2))
        {
          i3 = i1;
          f3 = f1;
          if (i1 <= b) {
            break;
          }
          i3 = i1;
          f3 = f1;
          if (i2 >= e.size() - 1) {
            break;
          }
          i2 += 1;
        }
        f2 = 0.0F;
        break;
        while (i3 < b)
        {
          f3 += h.b(i3) + f2;
          i3 += 1;
        }
        e = f3;
        f1 = f3 + (d + f2);
        i1 = i3 + 1;
      }
    }
    if (i1 > b)
    {
      i2 = e.size() - 1;
      f1 = e;
      i1 -= 1;
      while ((i1 >= b) && (i2 >= 0))
      {
        for (parambv2 = (bv)e.get(i2);; parambv2 = (bv)e.get(i2))
        {
          i3 = i1;
          f3 = f1;
          if (i1 >= b) {
            break;
          }
          i3 = i1;
          f3 = f1;
          if (i2 <= 0) {
            break;
          }
          i2 -= 1;
        }
        while (i3 > b)
        {
          f3 -= h.b(i3) + f2;
          i3 -= 1;
        }
        f1 = f3 - (d + f2);
        e = f1;
        i1 = i3 - 1;
      }
    }
    label409:
    int i3 = e.size();
    float f3 = e;
    i1 = b - 1;
    if (b == 0)
    {
      f1 = e;
      r = f1;
      if (b != i4 - 1) {
        break label550;
      }
      f1 = e + d - 1.0F;
      label475:
      s = f1;
      i2 = paramInt - 1;
      f1 = f3;
    }
    for (;;)
    {
      if (i2 < 0) {
        break label603;
      }
      parambv2 = (bv)e.get(i2);
      for (;;)
      {
        if (i1 > b)
        {
          f1 -= h.b(i1) + f2;
          i1 -= 1;
          continue;
          f1 = -3.4028235E38F;
          break;
          label550:
          f1 = Float.MAX_VALUE;
          break label475;
        }
      }
      f1 -= d + f2;
      e = f1;
      if (b == 0) {
        r = f1;
      }
      i1 -= 1;
      i2 -= 1;
    }
    label603:
    float f1 = e + d + f2;
    int i2 = b + 1;
    i1 = paramInt + 1;
    paramInt = i2;
    while (i1 < i3)
    {
      parambv1 = (bv)e.get(i1);
      while (paramInt < b)
      {
        f1 = h.b(paramInt) + f2 + f1;
        paramInt += 1;
      }
      if (b == i4 - 1) {
        s = (d + f1 - 1.0F);
      }
      e = f1;
      f1 += d + f2;
      paramInt += 1;
      i1 += 1;
    }
    S = false;
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = z.b(paramMotionEvent);
    if (z.b(paramMotionEvent, i1) == I) {
      if (i1 != 0) {
        break label56;
      }
    }
    label56:
    for (i1 = 1;; i1 = 0)
    {
      E = z.c(paramMotionEvent, i1);
      I = z.b(paramMotionEvent, i1);
      if (J != null) {
        J.clear();
      }
      return;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (ag == 2) {}
    int i2;
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0)
      {
        c(false);
        m.abortAnimation();
        i2 = getScrollX();
        i3 = getScrollY();
        int i4 = m.getCurrX();
        int i5 = m.getCurrY();
        if ((i2 != i4) || (i3 != i5)) {
          scrollTo(i4, i5);
        }
      }
      x = false;
      int i3 = 0;
      i2 = i1;
      i1 = i3;
      while (i1 < e.size())
      {
        bv localbv = (bv)e.get(i1);
        if (c)
        {
          c = false;
          i2 = 1;
        }
        i1 += 1;
      }
    }
    if (i2 != 0)
    {
      if (paramBoolean) {
        at.a(this, af);
      }
    }
    else {
      return;
    }
    af.run();
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    return ((paramFloat1 < C) && (paramFloat2 > 0.0F)) || ((paramFloat1 > getWidth() - C) && (paramFloat2 < 0.0F));
  }
  
  private void b(boolean paramBoolean)
  {
    int i3 = getChildCount();
    int i1 = 0;
    if (i1 < i3)
    {
      if (paramBoolean) {}
      for (int i2 = 2;; i2 = 0)
      {
        at.a(getChildAt(i1), i2, null);
        i1 += 1;
        break;
      }
    }
  }
  
  private boolean b(float paramFloat)
  {
    int i2 = 1;
    boolean bool2 = false;
    boolean bool1 = false;
    float f1 = E;
    E = paramFloat;
    float f2 = getScrollX() + (f1 - paramFloat);
    int i3 = h();
    paramFloat = i3 * r;
    f1 = i3;
    float f3 = s;
    bv localbv1 = (bv)e.get(0);
    bv localbv2 = (bv)e.get(e.size() - 1);
    if (b != 0) {
      paramFloat = e * i3;
    }
    for (int i1 = 0;; i1 = 1)
    {
      if (b != h.a() - 1)
      {
        f1 = e * i3;
        i2 = 0;
      }
      for (;;)
      {
        if (f2 < paramFloat)
        {
          f1 = paramFloat;
          if (i1 != 0)
          {
            bool1 = P.a(Math.abs(paramFloat - f2) / i3);
            f1 = paramFloat;
          }
        }
        for (;;)
        {
          E += f1 - (int)f1;
          scrollTo((int)f1, getScrollY());
          f((int)f1);
          return bool1;
          if (f2 > f1)
          {
            bool1 = bool2;
            if (i2 != 0) {
              bool1 = Q.a(Math.abs(f2 - f1) / i3);
            }
          }
          else
          {
            f1 = f2;
          }
        }
        f1 *= f3;
      }
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if (w != paramBoolean) {
      w = paramBoolean;
    }
  }
  
  private void e(int paramInt)
  {
    if (ag == paramInt) {
      return;
    }
    ag = paramInt;
    if (ab != null) {
      if (paramInt == 0) {
        break label50;
      }
    }
    label50:
    for (boolean bool = true;; bool = false)
    {
      b(bool);
      if (V == null) {
        break;
      }
      V.b(paramInt);
      return;
    }
  }
  
  private boolean f(int paramInt)
  {
    boolean bool = false;
    if (e.size() == 0)
    {
      T = false;
      a(0, 0.0F, 0);
      if (!T) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
    }
    else
    {
      bv localbv = j();
      int i2 = h();
      int i3 = n;
      float f1 = n / i2;
      int i1 = b;
      f1 = (paramInt / i2 - e) / (d + f1);
      paramInt = (int)((i3 + i2) * f1);
      T = false;
      a(i1, f1, paramInt);
      if (!T) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
      bool = true;
    }
    return bool;
  }
  
  private int h()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }
  
  private void i()
  {
    if (ac != 0)
    {
      if (ad == null) {
        ad = new ArrayList();
      }
      for (;;)
      {
        int i2 = getChildCount();
        int i1 = 0;
        while (i1 < i2)
        {
          View localView = getChildAt(i1);
          ad.add(localView);
          i1 += 1;
        }
        ad.clear();
      }
      Collections.sort(ad, ae);
    }
  }
  
  private bv j()
  {
    int i1 = h();
    float f1;
    float f2;
    label36:
    float f4;
    float f3;
    int i3;
    int i2;
    Object localObject1;
    label53:
    Object localObject2;
    bv localbv;
    if (i1 > 0)
    {
      f1 = getScrollX() / i1;
      if (i1 <= 0) {
        break label214;
      }
      f2 = n / i1;
      f4 = 0.0F;
      f3 = 0.0F;
      i3 = -1;
      i1 = 0;
      i2 = 1;
      localObject1 = null;
      localObject2 = localObject1;
      if (i1 < e.size())
      {
        localbv = (bv)e.get(i1);
        if ((i2 != 0) || (b == i3 + 1)) {
          break label249;
        }
        localbv = f;
        e = (f4 + f3 + f2);
        b = (i3 + 1);
        d = h.b(b);
        i1 -= 1;
      }
    }
    label214:
    label219:
    label249:
    for (;;)
    {
      f3 = e;
      f4 = d;
      if (i2 == 0)
      {
        localObject2 = localObject1;
        if (f1 < f3) {}
      }
      else
      {
        if ((f1 >= f4 + f3 + f2) && (i1 != e.size() - 1)) {
          break label219;
        }
        localObject2 = localbv;
      }
      return (bv)localObject2;
      f1 = 0.0F;
      break;
      f2 = 0.0F;
      break label36;
      i3 = b;
      f4 = d;
      i2 = 0;
      i1 += 1;
      localObject1 = localbv;
      break label53;
    }
  }
  
  private void k()
  {
    z = false;
    A = false;
    if (J != null)
    {
      J.recycle();
      J = null;
    }
  }
  
  float a(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  bv a(int paramInt1, int paramInt2)
  {
    bv localbv = new bv();
    b = paramInt1;
    a = h.a(this, paramInt1);
    d = h.b(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 >= e.size()))
    {
      e.add(localbv);
      return localbv;
    }
    e.add(paramInt2, localbv);
    return localbv;
  }
  
  bv a(View paramView)
  {
    int i1 = 0;
    while (i1 < e.size())
    {
      bv localbv = (bv)e.get(i1);
      if (h.a(paramView, a)) {
        return localbv;
      }
      i1 += 1;
    }
    return null;
  }
  
  by a(by paramby)
  {
    by localby = W;
    W = paramby;
    return localby;
  }
  
  void a()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    m = new Scroller(localContext, d);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f1 = getResourcesgetDisplayMetricsdensity;
    D = bg.a(localViewConfiguration);
    K = ((int)(400.0F * f1));
    L = localViewConfiguration.getScaledMaximumFlingVelocity();
    P = new f(localContext);
    Q = new f(localContext);
    M = ((int)(25.0F * f1));
    N = ((int)(2.0F * f1));
    B = ((int)(16.0F * f1));
    at.a(this, new bw(this));
    if (at.c(this) == 0) {
      at.b(this, 1);
    }
  }
  
  public void a(int paramInt)
  {
    x = false;
    if (!R) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramInt, bool, false);
      return;
    }
  }
  
  protected void a(int paramInt1, float paramFloat, int paramInt2)
  {
    int i1;
    View localView;
    if (U > 0)
    {
      int i6 = getScrollX();
      i1 = getPaddingLeft();
      int i2 = getPaddingRight();
      int i7 = getWidth();
      int i8 = getChildCount();
      int i5 = 0;
      while (i5 < i8)
      {
        localView = getChildAt(i5);
        ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
        int i4;
        int i3;
        if (!a)
        {
          i4 = i1;
          i3 = i2;
          i5 += 1;
          i1 = i4;
          i2 = i3;
        }
        else
        {
          switch (b & 0x7)
          {
          case 2: 
          case 4: 
          default: 
            i3 = i1;
            i4 = i2;
            i2 = i1;
            i1 = i4;
          }
          for (;;)
          {
            int i9 = i3 + i6 - localView.getLeft();
            i3 = i1;
            i4 = i2;
            if (i9 == 0) {
              break;
            }
            localView.offsetLeftAndRight(i9);
            i3 = i1;
            i4 = i2;
            break;
            i3 = localView.getWidth();
            i4 = i3 + i1;
            i3 = i1;
            i1 = i2;
            i2 = i4;
            continue;
            i3 = Math.max((i7 - localView.getMeasuredWidth()) / 2, i1);
            i4 = i1;
            i1 = i2;
            i2 = i4;
            continue;
            i3 = i7 - i2 - localView.getMeasuredWidth();
            i9 = localView.getMeasuredWidth();
            i4 = i1;
            i1 = i2 + i9;
            i2 = i4;
          }
        }
      }
    }
    if (V != null) {
      V.a(paramInt1, paramFloat, paramInt2);
    }
    if (W != null) {
      W.a(paramInt1, paramFloat, paramInt2);
    }
    if (ab != null)
    {
      paramInt2 = getScrollX();
      i1 = getChildCount();
      paramInt1 = 0;
      if (paramInt1 < i1)
      {
        localView = getChildAt(paramInt1);
        if (getLayoutParamsa) {}
        for (;;)
        {
          paramInt1 += 1;
          break;
          paramFloat = (localView.getLeft() - paramInt2) / h();
          ab.a(localView, paramFloat);
        }
      }
    }
    T = true;
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() == 0)
    {
      c(false);
      return;
    }
    int i1 = getScrollX();
    int i2 = getScrollY();
    int i3 = paramInt1 - i1;
    paramInt2 -= i2;
    if ((i3 == 0) && (paramInt2 == 0))
    {
      a(false);
      d();
      e(0);
      return;
    }
    c(true);
    e(2);
    paramInt1 = h();
    int i4 = paramInt1 / 2;
    float f3 = Math.min(1.0F, Math.abs(i3) * 1.0F / paramInt1);
    float f1 = i4;
    float f2 = i4;
    f3 = a(f3);
    paramInt3 = Math.abs(paramInt3);
    if (paramInt3 > 0) {}
    for (paramInt1 = Math.round(1000.0F * Math.abs((f2 * f3 + f1) / paramInt3)) * 4;; paramInt1 = (int)((Math.abs(i3) / (f1 * f2 + n) + 1.0F) * 100.0F))
    {
      paramInt1 = Math.min(paramInt1, 600);
      m.startScroll(i1, i2, i3, paramInt2, paramInt1);
      at.b(this);
      return;
      f1 = paramInt1;
      f2 = h.b(i);
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    x = false;
    a(paramInt, paramBoolean, false);
  }
  
  void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    boolean bool = false;
    if ((h == null) || (h.a() <= 0))
    {
      c(false);
      return;
    }
    if ((!paramBoolean2) && (i == paramInt1) && (e.size() != 0))
    {
      c(false);
      return;
    }
    int i1;
    if (paramInt1 < 0) {
      i1 = 0;
    }
    for (;;)
    {
      paramInt1 = y;
      if ((i1 <= i + paramInt1) && (i1 >= i - paramInt1)) {
        break;
      }
      paramInt1 = 0;
      while (paramInt1 < e.size())
      {
        e.get(paramInt1)).c = true;
        paramInt1 += 1;
      }
      i1 = paramInt1;
      if (paramInt1 >= h.a()) {
        i1 = h.a() - 1;
      }
    }
    paramBoolean2 = bool;
    if (i != i1) {
      paramBoolean2 = true;
    }
    if (R)
    {
      i = i1;
      if ((paramBoolean2) && (V != null)) {
        V.a(i1);
      }
      if ((paramBoolean2) && (W != null)) {
        W.a(i1);
      }
      requestLayout();
      return;
    }
    b(i1);
    a(i1, paramBoolean1, paramInt2, paramBoolean2);
  }
  
  void a(bx parambx)
  {
    aa = parambx;
  }
  
  public boolean a(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0) {
      switch (paramKeyEvent.getKeyCode())
      {
      }
    }
    do
    {
      do
      {
        return false;
        return d(17);
        return d(66);
      } while (Build.VERSION.SDK_INT < 11);
      if (s.a(paramKeyEvent)) {
        return d(2);
      }
    } while (!s.a(paramKeyEvent, 1));
    return d(1);
  }
  
  protected boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i2 = paramView.getScrollX();
      int i3 = paramView.getScrollY();
      i1 = localViewGroup.getChildCount() - 1;
      if (i1 >= 0)
      {
        localView = localViewGroup.getChildAt(i1);
        if ((paramInt2 + i2 < localView.getLeft()) || (paramInt2 + i2 >= localView.getRight()) || (paramInt3 + i3 < localView.getTop()) || (paramInt3 + i3 >= localView.getBottom()) || (!a(localView, true, paramInt1, paramInt2 + i2 - localView.getLeft(), paramInt3 + i3 - localView.getTop()))) {}
      }
    }
    while ((paramBoolean) && (at.a(paramView, -paramInt1)))
    {
      View localView;
      return true;
      i1 -= 1;
      break;
    }
    return false;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i2 = paramArrayList.size();
    int i3 = getDescendantFocusability();
    if (i3 != 393216)
    {
      int i1 = 0;
      while (i1 < getChildCount())
      {
        View localView = getChildAt(i1);
        if (localView.getVisibility() == 0)
        {
          bv localbv = a(localView);
          if ((localbv != null) && (b == i)) {
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          }
        }
        i1 += 1;
      }
    }
    if (((i3 == 262144) && (i2 != paramArrayList.size())) || (!isFocusable())) {}
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null)) {
      return;
    }
    paramArrayList.add(this);
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    int i1 = 0;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        bv localbv = a(localView);
        if ((localbv != null) && (b == i)) {
          localView.addTouchables(paramArrayList);
        }
      }
      i1 += 1;
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams)) {
      paramLayoutParams = generateLayoutParams(paramLayoutParams);
    }
    for (;;)
    {
      ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)paramLayoutParams;
      a |= paramView instanceof bu;
      if (v)
      {
        if ((localLayoutParams != null) && (a)) {
          throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        d = true;
        addViewInLayout(paramView, paramInt, paramLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  public ae b()
  {
    return h;
  }
  
  bv b(View paramView)
  {
    for (;;)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this) {
        break;
      }
      if ((localViewParent == null) || (!(localViewParent instanceof View))) {
        return null;
      }
      paramView = (View)localViewParent;
    }
    return a(paramView);
  }
  
  void b(int paramInt)
  {
    int i1;
    Object localObject2;
    if (i != paramInt) {
      if (i < paramInt)
      {
        i1 = 66;
        localObject2 = c(i);
        i = paramInt;
      }
    }
    for (int i2 = i1;; i2 = 2)
    {
      if (h == null) {
        i();
      }
      do
      {
        return;
        i1 = 17;
        break;
        if (x)
        {
          i();
          return;
        }
      } while (getWindowToken() == null);
      h.a(this);
      paramInt = y;
      int i8 = Math.max(0, i - paramInt);
      int i6 = h.a();
      int i7 = Math.min(i6 - 1, paramInt + i);
      Object localObject1;
      if (i6 != b) {
        try
        {
          String str = getResources().getResourceName(getId());
          throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + b + ", found: " + i6 + " Pager id: " + str + " Pager class: " + getClass() + " Problematic adapter: " + h.getClass());
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          for (;;)
          {
            localObject1 = Integer.toHexString(getId());
          }
        }
      }
      paramInt = 0;
      if (paramInt < e.size())
      {
        localObject1 = (bv)e.get(paramInt);
        if (b >= i) {
          if (b != i) {
            break label1248;
          }
        }
      }
      for (;;)
      {
        if ((localObject1 == null) && (i6 > 0)) {}
        for (Object localObject3 = a(i, paramInt);; localObject3 = localObject1)
        {
          int i5;
          label344:
          float f3;
          float f2;
          int i4;
          int i3;
          Object localObject4;
          float f1;
          if (localObject3 != null)
          {
            i5 = paramInt - 1;
            if (i5 < 0) {
              break label658;
            }
            localObject1 = (bv)e.get(i5);
            f3 = d;
            float f4 = getPaddingLeft() / h();
            i1 = i;
            f2 = 0.0F;
            i4 = i1 - 1;
            i3 = paramInt;
            localObject4 = localObject1;
            if (i4 >= 0)
            {
              if ((f2 < f4 + (2.0F - f3)) || (i4 >= i8)) {
                break label793;
              }
              if (localObject4 != null) {
                break label664;
              }
            }
            f1 = d;
            paramInt = i3 + 1;
            if (f1 < 2.0F) {
              if (paramInt >= e.size()) {
                break label911;
              }
            }
          }
          label479:
          label539:
          label658:
          label664:
          label785:
          label793:
          label911:
          for (localObject1 = (bv)e.get(paramInt);; localObject1 = null)
          {
            f2 = getPaddingRight() / h();
            i1 = i;
            i1 += 1;
            if (i1 < i6)
            {
              if ((f1 < 2.0F + f2) || (i1 <= i7)) {
                break label998;
              }
              if (localObject1 != null) {
                break label917;
              }
            }
            a((bv)localObject3, i3, (bv)localObject2);
            localObject2 = h;
            paramInt = i;
            if (localObject3 == null) {
              break label1120;
            }
            localObject1 = a;
            ((ae)localObject2).b(this, paramInt, localObject1);
            h.b(this);
            i1 = getChildCount();
            paramInt = 0;
            while (paramInt < i1)
            {
              localObject2 = getChildAt(paramInt);
              localObject1 = (ViewPager.LayoutParams)((View)localObject2).getLayoutParams();
              f = paramInt;
              if ((!a) && (c == 0.0F))
              {
                localObject2 = a((View)localObject2);
                if (localObject2 != null)
                {
                  c = d;
                  e = b;
                }
              }
              paramInt += 1;
            }
            paramInt += 1;
            break;
            localObject1 = null;
            break label344;
            localObject1 = localObject4;
            paramInt = i5;
            f1 = f2;
            i1 = i3;
            if (i4 == b)
            {
              localObject1 = localObject4;
              paramInt = i5;
              f1 = f2;
              i1 = i3;
              if (!c)
              {
                e.remove(i5);
                h.a(this, i4, a);
                paramInt = i5 - 1;
                i1 = i3 - 1;
                if (paramInt < 0) {
                  break label785;
                }
                localObject1 = (bv)e.get(paramInt);
                f1 = f2;
              }
            }
            for (;;)
            {
              i4 -= 1;
              localObject4 = localObject1;
              i5 = paramInt;
              f2 = f1;
              i3 = i1;
              break;
              localObject1 = null;
              f1 = f2;
              continue;
              if ((localObject4 != null) && (i4 == b))
              {
                f1 = f2 + d;
                paramInt = i5 - 1;
                if (paramInt >= 0)
                {
                  localObject1 = (bv)e.get(paramInt);
                  i1 = i3;
                }
                else
                {
                  localObject1 = null;
                  i1 = i3;
                }
              }
              else
              {
                f1 = f2 + a1d;
                i1 = i3 + 1;
                if (i5 >= 0)
                {
                  localObject1 = (bv)e.get(i5);
                  paramInt = i5;
                }
                else
                {
                  localObject1 = null;
                  paramInt = i5;
                }
              }
            }
          }
          label917:
          if ((i1 == b) && (!c))
          {
            e.remove(paramInt);
            h.a(this, i1, a);
            if (paramInt < e.size()) {
              localObject1 = (bv)e.get(paramInt);
            }
          }
          for (;;)
          {
            i1 += 1;
            break label479;
            localObject1 = null;
            continue;
            label998:
            if ((localObject1 != null) && (i1 == b))
            {
              f3 = d;
              paramInt += 1;
              if (paramInt < e.size()) {}
              for (localObject1 = (bv)e.get(paramInt);; localObject1 = null)
              {
                f1 += f3;
                break;
              }
            }
            localObject1 = a(i1, paramInt);
            paramInt += 1;
            f3 = d;
            if (paramInt < e.size()) {}
            for (localObject1 = (bv)e.get(paramInt);; localObject1 = null)
            {
              f1 += f3;
              break;
            }
            label1120:
            localObject1 = null;
            break label539;
            i();
            if (!hasFocus()) {
              break;
            }
            localObject1 = findFocus();
            if (localObject1 != null) {}
            for (localObject1 = b((View)localObject1);; localObject1 = null)
            {
              if ((localObject1 != null) && (b == i)) {
                break label1236;
              }
              paramInt = 0;
              for (;;)
              {
                if (paramInt >= getChildCount()) {
                  break label1230;
                }
                localObject1 = getChildAt(paramInt);
                localObject2 = a((View)localObject1);
                if ((localObject2 != null) && (b == i) && (((View)localObject1).requestFocus(i2))) {
                  break;
                }
                paramInt += 1;
              }
              label1230:
              break;
            }
            label1236:
            break;
          }
        }
        label1248:
        localObject1 = null;
      }
      localObject2 = null;
    }
  }
  
  public int c()
  {
    return i;
  }
  
  bv c(int paramInt)
  {
    int i1 = 0;
    while (i1 < e.size())
    {
      bv localbv = (bv)e.get(i1);
      if (b == paramInt) {
        return localbv;
      }
      i1 += 1;
    }
    return null;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof ViewPager.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if ((!m.isFinished()) && (m.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = m.getCurrX();
      int i4 = m.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        if (!f(i3))
        {
          m.abortAnimation();
          scrollTo(0, i4);
        }
      }
      at.b(this);
      return;
    }
    a(true);
  }
  
  void d()
  {
    b(i);
  }
  
  public boolean d(int paramInt)
  {
    View localView = findFocus();
    Object localObject;
    int i2;
    boolean bool;
    if (localView == this)
    {
      localObject = null;
      localView = FocusFinder.getInstance().findNextFocus(this, (View)localObject, paramInt);
      if ((localView == null) || (localView == localObject)) {
        break label329;
      }
      if (paramInt != 17) {
        break label266;
      }
      i1 = ag, localView).left;
      i2 = ag, (View)localObject).left;
      if ((localObject != null) && (i1 >= i2))
      {
        bool = e();
        label89:
        if (bool) {
          playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
        }
        return bool;
      }
    }
    else
    {
      if (localView == null) {
        break label375;
      }
      localObject = localView.getParent();
      if (!(localObject instanceof ViewGroup)) {
        break label382;
      }
      if (localObject != this) {}
    }
    label266:
    label329:
    label375:
    label382:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localView.getClass().getSimpleName());
        localObject = localView.getParent();
        for (;;)
        {
          if ((localObject instanceof ViewGroup))
          {
            localStringBuilder.append(" => ").append(localObject.getClass().getSimpleName());
            localObject = ((ViewParent)localObject).getParent();
            continue;
            localObject = ((ViewParent)localObject).getParent();
            break;
          }
        }
        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + localStringBuilder.toString());
        localObject = null;
        break;
        bool = localView.requestFocus();
        break label89;
        if (paramInt == 66)
        {
          i1 = ag, localView).left;
          i2 = ag, (View)localObject).left;
          if ((localObject != null) && (i1 <= i2))
          {
            bool = f();
            break label89;
          }
          bool = localView.requestFocus();
          break label89;
          if ((paramInt == 17) || (paramInt == 1))
          {
            bool = e();
            break label89;
          }
          if ((paramInt == 66) || (paramInt == 2))
          {
            bool = f();
            break label89;
          }
        }
        bool = false;
        break label89;
      }
      localObject = localView;
      break;
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (a(paramKeyEvent));
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = false;
    int i2 = getChildCount();
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < i2)
      {
        View localView = getChildAt(i1);
        if (localView.getVisibility() == 0)
        {
          bv localbv = a(localView);
          if ((localbv != null) && (b == i) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
            bool1 = true;
          }
        }
      }
      else
      {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i3 = 0;
    int i1 = 0;
    int i4 = at.a(this);
    boolean bool;
    if ((i4 == 0) || ((i4 == 1) && (h != null) && (h.a() > 1)))
    {
      int i2;
      if (!P.a())
      {
        i3 = paramCanvas.save();
        i1 = getHeight() - getPaddingTop() - getPaddingBottom();
        i4 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i1 + getPaddingTop(), r * i4);
        P.a(i1, i4);
        i2 = false | P.a(paramCanvas);
        paramCanvas.restoreToCount(i3);
      }
      i3 = i2;
      if (!Q.a())
      {
        i4 = paramCanvas.save();
        i3 = getWidth();
        int i5 = getHeight();
        int i6 = getPaddingTop();
        int i7 = getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(s + 1.0F) * i3);
        Q.a(i5 - i6 - i7, i3);
        bool = i2 | Q.a(paramCanvas);
        paramCanvas.restoreToCount(i4);
      }
    }
    for (;;)
    {
      if (bool) {
        at.b(this);
      }
      return;
      P.b();
      Q.b();
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = o;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  boolean e()
  {
    if (i > 0)
    {
      a(i - 1, true);
      return true;
    }
    return false;
  }
  
  boolean f()
  {
    if ((h != null) && (i < h.a() - 1))
    {
      a(i + 1, true);
      return true;
    }
    return false;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewPager.LayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewPager.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    int i1 = paramInt2;
    if (ac == 2) {
      i1 = paramInt1 - 1 - paramInt2;
    }
    return ad.get(i1)).getLayoutParams()).f;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    R = true;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(af);
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i3;
    int i4;
    float f3;
    Object localObject;
    float f1;
    int i5;
    int i1;
    int i6;
    int i2;
    if ((n > 0) && (o != null) && (e.size() > 0) && (h != null))
    {
      i3 = getScrollX();
      i4 = getWidth();
      f3 = n / i4;
      localObject = (bv)e.get(0);
      f1 = e;
      i5 = e.size();
      i1 = b;
      i6 = e.get(i5 - 1)).b;
      i2 = 0;
    }
    for (;;)
    {
      float f2;
      if (i1 < i6)
      {
        while ((i1 > b) && (i2 < i5))
        {
          localObject = e;
          i2 += 1;
          localObject = (bv)((ArrayList)localObject).get(i2);
        }
        if (i1 != b) {
          break label271;
        }
        f2 = (e + d) * i4;
      }
      label271:
      float f4;
      for (f1 = e + d + f3;; f1 += f4 + f3)
      {
        if (n + f2 > i3)
        {
          o.setBounds((int)f2, p, (int)(n + f2 + 0.5F), q);
          o.draw(paramCanvas);
        }
        if (f2 <= i3 + i4) {
          break;
        }
        return;
        f4 = h.b(i1);
        f2 = (f1 + f4) * i4;
      }
      i1 += 1;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction() & 0xFF;
    if ((i1 == 3) || (i1 == 1))
    {
      z = false;
      A = false;
      I = -1;
      if (J != null)
      {
        J.recycle();
        J = null;
      }
    }
    do
    {
      return false;
      if (i1 == 0) {
        break;
      }
      if (z) {
        return true;
      }
    } while (A);
    switch (i1)
    {
    }
    for (;;)
    {
      if (J == null) {
        J = VelocityTracker.obtain();
      }
      J.addMovement(paramMotionEvent);
      return z;
      i1 = I;
      if (i1 != -1)
      {
        i1 = z.a(paramMotionEvent, i1);
        float f2 = z.c(paramMotionEvent, i1);
        float f1 = f2 - E;
        float f4 = Math.abs(f1);
        float f3 = z.d(paramMotionEvent, i1);
        float f5 = Math.abs(f3 - H);
        if ((f1 != 0.0F) && (!a(E, f1)) && (a(this, false, (int)f1, (int)f2, (int)f3)))
        {
          E = f2;
          F = f3;
          A = true;
          return false;
        }
        if ((f4 > D) && (0.5F * f4 > f5))
        {
          z = true;
          e(1);
          if (f1 > 0.0F)
          {
            f1 = G + D;
            label305:
            E = f1;
            F = f3;
            c(true);
          }
        }
        while ((z) && (b(f2)))
        {
          at.b(this);
          break;
          f1 = G - D;
          break label305;
          if (f5 > D) {
            A = true;
          }
        }
        f1 = paramMotionEvent.getX();
        G = f1;
        E = f1;
        f1 = paramMotionEvent.getY();
        H = f1;
        F = f1;
        I = z.b(paramMotionEvent, 0);
        A = false;
        m.computeScrollOffset();
        if ((ag == 2) && (Math.abs(m.getFinalX() - m.getCurrX()) > N))
        {
          m.abortAnimation();
          x = false;
          d();
          z = true;
          e(1);
        }
        else
        {
          a(false);
          z = false;
          continue;
          a(paramMotionEvent);
        }
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i6 = getChildCount();
    int i8 = paramInt3 - paramInt1;
    int i7 = paramInt4 - paramInt2;
    paramInt2 = getPaddingLeft();
    paramInt1 = getPaddingTop();
    int i1 = getPaddingRight();
    paramInt3 = getPaddingBottom();
    int i9 = getScrollX();
    int i2 = 0;
    int i4 = 0;
    View localView;
    ViewPager.LayoutParams localLayoutParams;
    int i10;
    int i3;
    label154:
    int i5;
    if (i4 < i6)
    {
      localView = getChildAt(i4);
      if (localView.getVisibility() == 8) {
        break label671;
      }
      localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
      if (!a) {
        break label671;
      }
      paramInt4 = b;
      i10 = b;
      switch (paramInt4 & 0x7)
      {
      case 2: 
      case 4: 
      default: 
        paramInt4 = paramInt2;
        i3 = paramInt2;
        switch (i10 & 0x70)
        {
        default: 
          i5 = paramInt1;
          paramInt2 = paramInt1;
          paramInt1 = paramInt3;
          paramInt3 = i5;
          label204:
          paramInt4 += i9;
          localView.layout(paramInt4, paramInt3, localView.getMeasuredWidth() + paramInt4, localView.getMeasuredHeight() + paramInt3);
          i2 += 1;
          paramInt4 = i1;
          paramInt3 = i3;
          i1 = paramInt1;
          paramInt1 = i2;
        }
        break;
      }
    }
    for (;;)
    {
      i4 += 1;
      i3 = paramInt3;
      i2 = paramInt1;
      paramInt1 = paramInt2;
      paramInt3 = i1;
      i1 = paramInt4;
      paramInt2 = i3;
      break;
      i3 = localView.getMeasuredWidth();
      paramInt4 = paramInt2;
      i3 += paramInt2;
      break label154;
      paramInt4 = Math.max((i8 - localView.getMeasuredWidth()) / 2, paramInt2);
      i3 = paramInt2;
      break label154;
      i3 = localView.getMeasuredWidth();
      paramInt4 = i1 + localView.getMeasuredWidth();
      i5 = i8 - i1 - i3;
      i1 = paramInt4;
      i3 = paramInt2;
      paramInt4 = i5;
      break label154;
      i5 = localView.getMeasuredHeight();
      paramInt2 = paramInt3;
      i5 += paramInt1;
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = i5;
      break label204;
      i5 = Math.max((i7 - localView.getMeasuredHeight()) / 2, paramInt1);
      paramInt2 = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = i5;
      break label204;
      i5 = i7 - paramInt3 - localView.getMeasuredHeight();
      i10 = localView.getMeasuredHeight();
      paramInt2 = paramInt1;
      paramInt1 = paramInt3 + i10;
      paramInt3 = i5;
      break label204;
      i1 = i8 - paramInt2 - i1;
      paramInt4 = 0;
      while (paramInt4 < i6)
      {
        localView = getChildAt(paramInt4);
        if (localView.getVisibility() != 8)
        {
          localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
          if (!a)
          {
            bv localbv = a(localView);
            if (localbv != null)
            {
              float f1 = i1;
              i3 = (int)(e * f1) + paramInt2;
              if (d)
              {
                d = false;
                f1 = i1;
                localView.measure(View.MeasureSpec.makeMeasureSpec((int)(c * f1), 1073741824), View.MeasureSpec.makeMeasureSpec(i7 - paramInt1 - paramInt3, 1073741824));
              }
              localView.layout(i3, paramInt1, localView.getMeasuredWidth() + i3, localView.getMeasuredHeight() + paramInt1);
            }
          }
        }
        paramInt4 += 1;
      }
      p = paramInt1;
      q = (i7 - paramInt3);
      U = i2;
      if (R) {
        a(i, false, 0, false);
      }
      R = false;
      return;
      label671:
      paramInt4 = i2;
      i2 = paramInt1;
      i3 = paramInt2;
      paramInt1 = paramInt4;
      paramInt4 = i1;
      i1 = paramInt3;
      paramInt2 = i2;
      paramInt3 = i3;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    paramInt1 = getMeasuredWidth();
    C = Math.min(paramInt1 / 10, B);
    paramInt1 = paramInt1 - getPaddingLeft() - getPaddingRight();
    paramInt2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i9 = getChildCount();
    int i3 = 0;
    View localView;
    int i1;
    int i2;
    ViewPager.LayoutParams localLayoutParams;
    int i4;
    int i6;
    label183:
    int i5;
    if (i3 < i9)
    {
      localView = getChildAt(i3);
      i1 = paramInt1;
      i2 = paramInt2;
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
        i1 = paramInt1;
        i2 = paramInt2;
        if (localLayoutParams != null)
        {
          i1 = paramInt1;
          i2 = paramInt2;
          if (a)
          {
            i1 = b & 0x7;
            i4 = b & 0x70;
            i6 = Integer.MIN_VALUE;
            i2 = Integer.MIN_VALUE;
            if ((i4 != 48) && (i4 != 80)) {
              break label333;
            }
            i4 = 1;
            if ((i1 != 3) && (i1 != 5)) {
              break label339;
            }
            i5 = 1;
            label198:
            if (i4 == 0) {
              break label345;
            }
            i1 = 1073741824;
            label208:
            if (width == -2) {
              break label528;
            }
            i6 = 1073741824;
            if (width == -1) {
              break label522;
            }
            i1 = width;
          }
        }
      }
    }
    for (;;)
    {
      int i8;
      if (height != -2)
      {
        i7 = 1073741824;
        i2 = i7;
        if (height != -1)
        {
          i8 = height;
          i2 = i7;
        }
      }
      for (int i7 = i8;; i7 = paramInt2)
      {
        localView.measure(View.MeasureSpec.makeMeasureSpec(i1, i6), View.MeasureSpec.makeMeasureSpec(i7, i2));
        if (i4 != 0)
        {
          i2 = paramInt2 - localView.getMeasuredHeight();
          i1 = paramInt1;
        }
        for (;;)
        {
          i3 += 1;
          paramInt1 = i1;
          paramInt2 = i2;
          break;
          label333:
          i4 = 0;
          break label183;
          label339:
          i5 = 0;
          break label198;
          label345:
          i1 = i6;
          if (i5 == 0) {
            break label208;
          }
          i2 = 1073741824;
          i1 = i6;
          break label208;
          i1 = paramInt1;
          i2 = paramInt2;
          if (i5 != 0)
          {
            i1 = paramInt1 - localView.getMeasuredWidth();
            i2 = paramInt2;
          }
        }
        t = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
        u = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
        v = true;
        d();
        v = false;
        i1 = getChildCount();
        paramInt2 = 0;
        while (paramInt2 < i1)
        {
          localView = getChildAt(paramInt2);
          if (localView.getVisibility() != 8)
          {
            localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
            if ((localLayoutParams == null) || (!a))
            {
              float f1 = paramInt1;
              localView.measure(View.MeasureSpec.makeMeasureSpec((int)(c * f1), 1073741824), u);
            }
          }
          paramInt2 += 1;
        }
        return;
      }
      label522:
      i1 = paramInt1;
      continue;
      label528:
      i6 = i1;
      i1 = paramInt1;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i3 = -1;
    int i2 = getChildCount();
    int i1;
    if ((paramInt & 0x2) != 0)
    {
      i3 = 1;
      i1 = 0;
    }
    while (i1 != i2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        bv localbv = a(localView);
        if ((localbv != null) && (b == i) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          i1 = i2 - 1;
          i2 = -1;
          continue;
        }
      }
      i1 += i3;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ViewPager.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (ViewPager.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (h != null)
    {
      h.a(b, c);
      a(a, false, true);
      return;
    }
    j = a;
    k = b;
    l = c;
  }
  
  public Parcelable onSaveInstanceState()
  {
    ViewPager.SavedState localSavedState = new ViewPager.SavedState(super.onSaveInstanceState());
    a = i;
    if (h != null) {
      b = h.b();
    }
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      a(paramInt1, paramInt3, n, n);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i4 = 0;
    if (O) {
      return true;
    }
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    if ((h == null) || (h.a() == 0)) {
      return false;
    }
    if (J == null) {
      J = VelocityTracker.obtain();
    }
    J.addMovement(paramMotionEvent);
    int i1 = i4;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
      i1 = i4;
    }
    for (;;)
    {
      if (i1 != 0) {
        at.b(this);
      }
      return true;
      m.abortAnimation();
      x = false;
      d();
      z = true;
      e(1);
      float f1 = paramMotionEvent.getX();
      G = f1;
      E = f1;
      f1 = paramMotionEvent.getY();
      H = f1;
      F = f1;
      I = z.b(paramMotionEvent, 0);
      i1 = i4;
      continue;
      float f2;
      if (!z)
      {
        i1 = z.a(paramMotionEvent, I);
        f1 = z.c(paramMotionEvent, i1);
        float f3 = Math.abs(f1 - E);
        f2 = z.d(paramMotionEvent, i1);
        float f4 = Math.abs(f2 - F);
        if ((f3 > D) && (f3 > f4))
        {
          z = true;
          if (f1 - G <= 0.0F) {
            break label364;
          }
        }
      }
      label364:
      for (f1 = G + D;; f1 = G - D)
      {
        E = f1;
        F = f2;
        e(1);
        c(true);
        i1 = i4;
        if (!z) {
          break;
        }
        bool1 = false | b(z.c(paramMotionEvent, z.a(paramMotionEvent, I)));
        break;
      }
      boolean bool1 = i4;
      if (z)
      {
        Object localObject = J;
        ((VelocityTracker)localObject).computeCurrentVelocity(1000, L);
        int i2 = (int)ao.a((VelocityTracker)localObject, I);
        x = true;
        i4 = h();
        int i5 = getScrollX();
        localObject = j();
        a(a(b, (i5 / i4 - e) / d, i2, (int)(z.c(paramMotionEvent, z.a(paramMotionEvent, I)) - G)), true, true, i2);
        I = -1;
        k();
        boolean bool3 = P.c();
        boolean bool2 = Q.c() | bool3;
        continue;
        bool2 = i4;
        if (z)
        {
          a(i, true, 0, false);
          I = -1;
          k();
          bool3 = P.c();
          bool2 = Q.c() | bool3;
          continue;
          int i3 = z.b(paramMotionEvent);
          E = z.c(paramMotionEvent, i3);
          I = z.b(paramMotionEvent, i3);
          i3 = i4;
          continue;
          a(paramMotionEvent);
          E = z.c(paramMotionEvent, z.a(paramMotionEvent, I));
          i3 = i4;
        }
      }
    }
  }
  
  public void removeView(View paramView)
  {
    if (v)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == o);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */