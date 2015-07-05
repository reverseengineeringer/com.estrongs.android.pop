package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.view.at;
import android.support.v4.view.bl;
import android.support.v4.view.n;
import android.support.v4.view.s;
import android.support.v4.view.z;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class DrawerLayout
  extends ViewGroup
{
  private static final int[] a = { 16842931 };
  private int b;
  private int c = -1728053248;
  private float d;
  private Paint e = new Paint();
  private final aa f;
  private final aa g;
  private final d h;
  private final d i;
  private int j;
  private boolean k;
  private boolean l = true;
  private int m;
  private int n;
  private boolean o;
  private boolean p;
  private b q;
  private float r;
  private float s;
  private Drawable t;
  private Drawable u;
  
  public DrawerLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    float f1 = getResourcesgetDisplayMetricsdensity;
    b = ((int)(64.0F * f1 + 0.5F));
    f1 *= 400.0F;
    h = new d(this, 3);
    i = new d(this, 5);
    f = aa.a(this, 0.5F, h);
    f.a(1);
    f.a(f1);
    h.a(f);
    g = aa.a(this, 0.5F, i);
    g.a(2);
    g.a(f1);
    i.a(g);
    setFocusableInTouchMode(true);
    at.a(this, new a(this));
    bl.a(this, false);
  }
  
  static String c(int paramInt)
  {
    if ((paramInt & 0x3) == 3) {
      return "LEFT";
    }
    if ((paramInt & 0x5) == 5) {
      return "RIGHT";
    }
    return Integer.toHexString(paramInt);
  }
  
  private boolean e()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      if (getChildAtgetLayoutParamsc) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  private boolean f()
  {
    return g() != null;
  }
  
  private View g()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((g(localView)) && (k(localView))) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  private static boolean l(View paramView)
  {
    boolean bool2 = false;
    paramView = paramView.getBackground();
    boolean bool1 = bool2;
    if (paramView != null)
    {
      bool1 = bool2;
      if (paramView.getOpacity() == -1) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public int a(int paramInt)
  {
    paramInt = n.a(paramInt, at.e(this));
    if (paramInt == 3) {
      return m;
    }
    if (paramInt == 5) {
      return n;
    }
    return 0;
  }
  
  public int a(View paramView)
  {
    int i1 = e(paramView);
    if (i1 == 3) {
      return m;
    }
    if (i1 == 5) {
      return n;
    }
    return 0;
  }
  
  View a()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (getLayoutParamsd) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a(getResources().getDrawable(paramInt1), paramInt2);
  }
  
  void a(int paramInt1, int paramInt2, View paramView)
  {
    int i1 = 1;
    int i2 = f.a();
    int i3 = g.a();
    paramInt1 = i1;
    DrawerLayout.LayoutParams localLayoutParams;
    if (i2 != 1)
    {
      if (i3 == 1) {
        paramInt1 = i1;
      }
    }
    else if ((paramView != null) && (paramInt2 == 0))
    {
      localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      if (b != 0.0F) {
        break label124;
      }
      b(paramView);
    }
    for (;;)
    {
      if (paramInt1 != j)
      {
        j = paramInt1;
        if (q != null) {
          q.a(paramInt1);
        }
      }
      return;
      if ((i2 == 2) || (i3 == 2))
      {
        paramInt1 = 2;
        break;
      }
      paramInt1 = 0;
      break;
      label124:
      if (b == 1.0F) {
        c(paramView);
      }
    }
  }
  
  public void a(Drawable paramDrawable, int paramInt)
  {
    paramInt = n.a(paramInt, at.e(this));
    if ((paramInt & 0x3) == 3)
    {
      t = paramDrawable;
      invalidate();
    }
    if ((paramInt & 0x5) == 5)
    {
      u = paramDrawable;
      invalidate();
    }
  }
  
  public void a(b paramb)
  {
    q = paramb;
  }
  
  void a(View paramView, float paramFloat)
  {
    if (q != null) {
      q.a(paramView, paramFloat);
    }
  }
  
  void a(boolean paramBoolean)
  {
    int i5 = getChildCount();
    int i2 = 0;
    int i1 = 0;
    while (i2 < i5)
    {
      View localView = getChildAt(i2);
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
      int i3 = i1;
      if (g(localView))
      {
        if ((paramBoolean) && (!c)) {
          i3 = i1;
        }
      }
      else
      {
        i2 += 1;
        i1 = i3;
        continue;
      }
      int i4 = localView.getWidth();
      if (a(localView, 3)) {
        i1 |= f.a(localView, -i4, localView.getTop());
      }
      for (;;)
      {
        c = false;
        i4 = i1;
        break;
        i1 |= g.a(localView, getWidth(), localView.getTop());
      }
    }
    h.a();
    i.a();
    if (i1 != 0) {
      invalidate();
    }
  }
  
  boolean a(View paramView, int paramInt)
  {
    return (e(paramView) & paramInt) == paramInt;
  }
  
  View b(int paramInt)
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((e(localView) & 0x7) == (paramInt & 0x7)) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  public void b()
  {
    a(false);
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    paramInt2 = n.a(paramInt2, at.e(this));
    Object localObject;
    if (paramInt2 == 3)
    {
      m = paramInt1;
      if (paramInt1 != 0)
      {
        if (paramInt2 != 3) {
          break label74;
        }
        localObject = f;
        label33:
        ((aa)localObject).e();
      }
      switch (paramInt1)
      {
      }
    }
    label74:
    do
    {
      do
      {
        return;
        if (paramInt2 != 5) {
          break;
        }
        n = paramInt1;
        break;
        localObject = g;
        break label33;
        localObject = b(paramInt2);
      } while (localObject == null);
      h((View)localObject);
      return;
      localObject = b(paramInt2);
    } while (localObject == null);
    i((View)localObject);
  }
  
  void b(View paramView)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (d)
    {
      d = false;
      if (q != null) {
        q.b(paramView);
      }
      sendAccessibilityEvent(32);
    }
  }
  
  void b(View paramView, float paramFloat)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (paramFloat == b) {
      return;
    }
    b = paramFloat;
    a(paramView, paramFloat);
  }
  
  void c()
  {
    int i1 = 0;
    if (!p)
    {
      long l1 = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
      int i2 = getChildCount();
      while (i1 < i2)
      {
        getChildAt(i1).dispatchTouchEvent(localMotionEvent);
        i1 += 1;
      }
      localMotionEvent.recycle();
      p = true;
    }
  }
  
  void c(View paramView)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (!d)
    {
      d = true;
      if (q != null) {
        q.a(paramView);
      }
      paramView.sendAccessibilityEvent(32);
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof DrawerLayout.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    int i2 = getChildCount();
    float f1 = 0.0F;
    int i1 = 0;
    while (i1 < i2)
    {
      f1 = Math.max(f1, getChildAtgetLayoutParamsb);
      i1 += 1;
    }
    d = f1;
    if ((f.a(true) | g.a(true))) {
      at.b(this);
    }
  }
  
  float d(View paramView)
  {
    return getLayoutParamsb;
  }
  
  public boolean d(int paramInt)
  {
    View localView = b(paramInt);
    if (localView != null) {
      return j(localView);
    }
    return false;
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i7 = getHeight();
    boolean bool1 = f(paramView);
    int i3 = 0;
    int i5 = 0;
    int i1 = getWidth();
    int i8 = paramCanvas.save();
    int i2 = i1;
    int i4;
    View localView;
    if (bool1)
    {
      int i9 = getChildCount();
      i4 = 0;
      i3 = i5;
      for (;;)
      {
        if (i4 < i9)
        {
          localView = getChildAt(i4);
          if ((localView != paramView) && (localView.getVisibility() == 0) && (l(localView)) && (g(localView)))
          {
            if (localView.getHeight() < i7)
            {
              i5 = i3;
              i2 = i1;
              i4 += 1;
              i1 = i2;
              i3 = i5;
              continue;
            }
            if (a(localView, 3))
            {
              i2 = localView.getRight();
              if (i2 <= i3) {
                break label534;
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      i5 = i2;
      i2 = i1;
      break;
      int i6 = localView.getLeft();
      i2 = i6;
      i5 = i3;
      if (i6 < i1) {
        break;
      }
      i2 = i1;
      i5 = i3;
      break;
      paramCanvas.clipRect(i3, 0, i1, getHeight());
      i2 = i1;
      boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(i8);
      if ((d > 0.0F) && (bool1))
      {
        i1 = (int)(((c & 0xFF000000) >>> 24) * d);
        i4 = c;
        e.setColor(i1 << 24 | i4 & 0xFFFFFF);
        paramCanvas.drawRect(i3, 0.0F, i2, getHeight(), e);
      }
      do
      {
        return bool2;
        if ((t != null) && (a(paramView, 3)))
        {
          i1 = t.getIntrinsicWidth();
          i2 = paramView.getRight();
          i3 = f.b();
          f1 = Math.max(0.0F, Math.min(i2 / i3, 1.0F));
          t.setBounds(i2, paramView.getTop(), i1 + i2, paramView.getBottom());
          t.setAlpha((int)(255.0F * f1));
          t.draw(paramCanvas);
          return bool2;
        }
      } while ((u == null) || (!a(paramView, 5)));
      i1 = u.getIntrinsicWidth();
      i2 = paramView.getLeft();
      i3 = getWidth();
      i4 = g.b();
      float f1 = Math.max(0.0F, Math.min((i3 - i2) / i4, 1.0F));
      u.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      u.setAlpha((int)(255.0F * f1));
      u.draw(paramCanvas);
      return bool2;
      label534:
      i2 = i3;
    }
  }
  
  int e(View paramView)
  {
    return n.a(getLayoutParamsa, at.e(paramView));
  }
  
  boolean f(View paramView)
  {
    return getLayoutParamsa == 0;
  }
  
  boolean g(View paramView)
  {
    return (n.a(getLayoutParamsa, at.e(paramView)) & 0x7) != 0;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new DrawerLayout.LayoutParams(-1, -1);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new DrawerLayout.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof DrawerLayout.LayoutParams)) {
      return new DrawerLayout.LayoutParams((DrawerLayout.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new DrawerLayout.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new DrawerLayout.LayoutParams(paramLayoutParams);
  }
  
  public void h(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (l)
    {
      paramView = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      b = 1.0F;
      d = true;
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        f.a(paramView, 0, paramView.getTop());
      } else {
        g.a(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
      }
    }
  }
  
  public void i(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (l)
    {
      paramView = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      b = 0.0F;
      d = false;
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        f.a(paramView, -paramView.getWidth(), paramView.getTop());
      } else {
        g.a(paramView, getWidth(), paramView.getTop());
      }
    }
  }
  
  public boolean j(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getLayoutParamsd;
  }
  
  public boolean k(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getLayoutParamsb > 0.0F;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    l = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    l = true;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    int i1 = z.a(paramMotionEvent);
    boolean bool2 = f.a(paramMotionEvent);
    boolean bool3 = g.a(paramMotionEvent);
    switch (i1)
    {
    default: 
      i1 = 0;
      if (((bool2 | bool3)) || (i1 != 0) || (e()) || (p)) {
        bool1 = true;
      }
      return bool1;
    case 0: 
      label63:
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      r = f1;
      s = f2;
      if ((d <= 0.0F) || (!f(f.e((int)f1, (int)f2)))) {
        break;
      }
    }
    for (i1 = 1;; i1 = 0)
    {
      o = false;
      p = false;
      break label63;
      if (!f.d(3)) {
        break;
      }
      h.a();
      i.a();
      i1 = 0;
      break label63;
      a(true);
      o = false;
      p = false;
      break;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (f()))
    {
      s.b(paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramKeyEvent = g();
      if ((paramKeyEvent != null) && (a(paramKeyEvent) == 0)) {
        b();
      }
      return paramKeyEvent != null;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    k = true;
    int i5 = getChildCount();
    int i2 = 0;
    if (i2 < i5)
    {
      View localView = getChildAt(i2);
      if (localView.getVisibility() == 8) {}
      DrawerLayout.LayoutParams localLayoutParams;
      for (;;)
      {
        i2 += 1;
        break;
        localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        if (!f(localView)) {
          break label107;
        }
        localView.layout(leftMargin, topMargin, leftMargin + localView.getMeasuredWidth(), topMargin + localView.getMeasuredHeight());
      }
      label107:
      int i6 = localView.getMeasuredWidth();
      int i7 = localView.getMeasuredHeight();
      int i3;
      if (a(localView, 3)) {
        i3 = -i6 + (int)(i6 * b);
      }
      label147:
      int i1;
      switch (a & 0x70)
      {
      default: 
        localView.layout(i3, topMargin, i6 + i3, i7);
      case 80: 
        while (b == 0.0F)
        {
          localView.setVisibility(4);
          break;
          i3 = paramInt3 - paramInt1 - (int)(i6 * b);
          break label147;
          i1 = paramInt4 - paramInt2;
          localView.layout(i3, i1 - bottomMargin - localView.getMeasuredHeight(), i6 + i3, i1 - bottomMargin);
        }
      }
      int i8 = paramInt4 - paramInt2;
      int i4 = (i8 - i7) / 2;
      if (i4 < topMargin) {
        i1 = topMargin;
      }
      for (;;)
      {
        localView.layout(i3, i1, i6 + i3, i7 + i1);
        break;
        i1 = i4;
        if (i4 + i7 > i8 - bottomMargin) {
          i1 = i8 - bottomMargin - i7;
        }
      }
    }
    k = false;
    l = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i4 = View.MeasureSpec.getMode(paramInt2);
    int i2 = View.MeasureSpec.getSize(paramInt1);
    int i3 = View.MeasureSpec.getSize(paramInt2);
    if ((i1 != 1073741824) || (i4 != 1073741824)) {
      throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
    }
    setMeasuredDimension(i2, i3);
    i4 = getChildCount();
    i1 = 0;
    if (i1 < i4)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 8) {}
      for (;;)
      {
        i1 += 1;
        break;
        DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        if (f(localView))
        {
          localView.measure(View.MeasureSpec.makeMeasureSpec(i2 - leftMargin - rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i3 - topMargin - bottomMargin, 1073741824));
        }
        else
        {
          if (!g(localView)) {
            break label298;
          }
          int i5 = e(localView) & 0x7;
          if ((0x0 & i5) != 0) {
            throw new IllegalStateException("Child drawer has absolute gravity " + c(i5) + " but this " + "DrawerLayout" + " already has a " + "drawer view along that edge");
          }
          localView.measure(getChildMeasureSpec(paramInt1, b + leftMargin + rightMargin, width), getChildMeasureSpec(paramInt2, topMargin + bottomMargin, height));
        }
      }
      label298:
      throw new IllegalStateException("Child " + localView + " at index " + i1 + " does not have a valid layout_gravity - must be Gravity.LEFT, " + "Gravity.RIGHT or Gravity.NO_GRAVITY");
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (DrawerLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (a != 0)
    {
      View localView = b(a);
      if (localView != null) {
        h(localView);
      }
    }
    b(b, 3);
    b(c, 5);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    DrawerLayout.SavedState localSavedState = new DrawerLayout.SavedState(super.onSaveInstanceState());
    int i2 = getChildCount();
    int i1 = 0;
    if (i1 < i2)
    {
      Object localObject = getChildAt(i1);
      if (!g((View)localObject)) {}
      do
      {
        i1 += 1;
        break;
        localObject = (DrawerLayout.LayoutParams)((View)localObject).getLayoutParams();
      } while (!d);
      a = a;
    }
    b = m;
    c = n;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    f.b(paramMotionEvent);
    g.b(paramMotionEvent);
    float f1;
    float f2;
    boolean bool;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    case 2: 
    default: 
      return true;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      r = f1;
      s = f2;
      o = false;
      p = false;
      return true;
    case 1: 
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      paramMotionEvent = f.e((int)f2, (int)f1);
      if ((paramMotionEvent != null) && (f(paramMotionEvent)))
      {
        f2 -= r;
        f1 -= s;
        int i1 = f.d();
        if (f2 * f2 + f1 * f1 < i1 * i1)
        {
          paramMotionEvent = a();
          if (paramMotionEvent != null) {
            if (a(paramMotionEvent) == 2) {
              bool = true;
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      a(bool);
      o = false;
      return true;
      bool = false;
      continue;
      a(true);
      o = false;
      p = false;
      return true;
      bool = true;
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if ((!f.e(1)) && (!g.e(2))) {
      super.requestDisallowInterceptTouchEvent(paramBoolean);
    }
    o = paramBoolean;
    if (paramBoolean) {
      a(true);
    }
  }
  
  public void requestLayout()
  {
    if (!k) {
      super.requestLayout();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */