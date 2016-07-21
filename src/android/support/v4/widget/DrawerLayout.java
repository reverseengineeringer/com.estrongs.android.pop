package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.view.bi;
import android.support.v4.view.cn;
import android.support.v4.view.dv;
import android.support.v4.view.v;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;
import java.util.List;

public class DrawerLayout
  extends ViewGroup
  implements ah
{
  static final y a;
  private static final int[] b;
  private static final boolean c;
  private static final boolean d;
  private float A;
  private Drawable B;
  private Drawable C;
  private Drawable D;
  private CharSequence E;
  private CharSequence F;
  private Object G;
  private boolean H;
  private Drawable I = null;
  private Drawable J = null;
  private Drawable K = null;
  private Drawable L = null;
  private final ArrayList<View> M;
  private final x e = new x(this);
  private float f;
  private int g;
  private int h = -1728053248;
  private float i;
  private Paint j = new Paint();
  private final cz k;
  private final cz l;
  private final ad m;
  private final ad n;
  private int o;
  private boolean p;
  private boolean q = true;
  private int r = 3;
  private int s = 3;
  private int t = 3;
  private int u = 3;
  private boolean v;
  private boolean w;
  @Deprecated
  private ab x;
  private List<ab> y;
  private float z;
  
  static
  {
    boolean bool2 = true;
    b = new int[] { 16842931 };
    if (Build.VERSION.SDK_INT >= 19)
    {
      bool1 = true;
      c = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label65;
      }
    }
    label65:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      d = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label70;
      }
      a = new z();
      return;
      bool1 = false;
      break;
    }
    label70:
    a = new aa();
  }
  
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
    setDescendantFocusability(262144);
    float f1 = getResourcesgetDisplayMetricsdensity;
    g = ((int)(64.0F * f1 + 0.5F));
    float f2 = 400.0F * f1;
    m = new ad(this, 3);
    n = new ad(this, 5);
    k = cz.a(this, 1.0F, m);
    k.a(1);
    k.a(f2);
    m.a(k);
    l = cz.a(this, 1.0F, n);
    l.a(2);
    l.a(f2);
    n.a(l);
    setFocusableInTouchMode(true);
    cn.c(this, 1);
    cn.a(this, new w(this));
    dv.a(this, false);
    if (cn.z(this))
    {
      a.a(this);
      B = a.a(paramContext);
    }
    f = (f1 * 10.0F);
    M = new ArrayList();
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (((!paramBoolean) && (!g(localView))) || ((paramBoolean) && (localView == paramView))) {
        cn.c(localView, 1);
      }
      for (;;)
      {
        i1 += 1;
        break;
        cn.c(localView, 4);
      }
    }
  }
  
  private boolean b(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable == null) || (!android.support.v4.b.a.a.b(paramDrawable))) {
      return false;
    }
    android.support.v4.b.a.a.b(paramDrawable, paramInt);
    return true;
  }
  
  static String d(int paramInt)
  {
    if ((paramInt & 0x3) == 3) {
      return "LEFT";
    }
    if ((paramInt & 0x5) == 5) {
      return "RIGHT";
    }
    return Integer.toHexString(paramInt);
  }
  
  private void f()
  {
    if (d) {
      return;
    }
    C = g();
    D = h();
  }
  
  private Drawable g()
  {
    int i1 = cn.h(this);
    if (i1 == 0)
    {
      if (I != null)
      {
        b(I, i1);
        return I;
      }
    }
    else if (J != null)
    {
      b(J, i1);
      return J;
    }
    return K;
  }
  
  private Drawable h()
  {
    int i1 = cn.h(this);
    if (i1 == 0)
    {
      if (J != null)
      {
        b(J, i1);
        return J;
      }
    }
    else if (I != null)
    {
      b(I, i1);
      return I;
    }
    return L;
  }
  
  private boolean i()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      if (DrawerLayout.LayoutParams.c((DrawerLayout.LayoutParams)getChildAt(i1).getLayoutParams())) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  private boolean j()
  {
    return k() != null;
  }
  
  private View k()
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
  
  private static boolean m(View paramView)
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
  
  private static boolean n(View paramView)
  {
    return (cn.e(paramView) != 4) && (cn.e(paramView) != 2);
  }
  
  public int a(int paramInt)
  {
    int i1 = cn.h(this);
    switch (paramInt)
    {
    }
    for (;;)
    {
      return 0;
      if (r != 3) {
        return r;
      }
      if (i1 == 0) {}
      for (paramInt = t; paramInt != 3; paramInt = u) {
        return paramInt;
      }
      if (s != 3) {
        return s;
      }
      if (i1 == 0) {}
      for (paramInt = u; paramInt != 3; paramInt = t) {
        return paramInt;
      }
      if (t != 3) {
        return t;
      }
      if (i1 == 0) {}
      for (paramInt = r; paramInt != 3; paramInt = s) {
        return paramInt;
      }
      if (u != 3) {
        return u;
      }
      if (i1 == 0) {}
      for (paramInt = s; paramInt != 3; paramInt = r) {
        return paramInt;
      }
    }
  }
  
  public int a(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return a(getLayoutParamsa);
  }
  
  View a()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((DrawerLayout.LayoutParams.b((DrawerLayout.LayoutParams)localView.getLayoutParams()) & 0x1) == 1) {
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
    paramInt1 = k.a();
    int i1 = l.a();
    DrawerLayout.LayoutParams localLayoutParams;
    if ((paramInt1 == 1) || (i1 == 1))
    {
      paramInt1 = 1;
      if ((paramView != null) && (paramInt2 == 0))
      {
        localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
        if (DrawerLayout.LayoutParams.a(localLayoutParams) != 0.0F) {
          break label145;
        }
        b(paramView);
      }
    }
    for (;;)
    {
      if (paramInt1 == o) {
        return;
      }
      o = paramInt1;
      if (y == null) {
        return;
      }
      paramInt2 = y.size() - 1;
      while (paramInt2 >= 0)
      {
        ((ab)y.get(paramInt2)).onDrawerStateChanged(paramInt1);
        paramInt2 -= 1;
      }
      if ((paramInt1 == 2) || (i1 == 2))
      {
        paramInt1 = 2;
        break;
      }
      paramInt1 = 0;
      break;
      label145:
      if (DrawerLayout.LayoutParams.a(localLayoutParams) == 1.0F) {
        c(paramView);
      }
    }
  }
  
  public void a(Drawable paramDrawable, int paramInt)
  {
    if (d) {
      return;
    }
    if ((paramInt & 0x800003) == 8388611) {
      I = paramDrawable;
    }
    for (;;)
    {
      f();
      invalidate();
      return;
      if ((paramInt & 0x800005) == 8388613)
      {
        J = paramDrawable;
      }
      else if ((paramInt & 0x3) == 3)
      {
        K = paramDrawable;
      }
      else
      {
        if ((paramInt & 0x5) != 5) {
          break;
        }
        L = paramDrawable;
      }
    }
  }
  
  public void a(ab paramab)
  {
    if (paramab == null) {
      return;
    }
    if (y == null) {
      y = new ArrayList();
    }
    y.add(paramab);
  }
  
  void a(View paramView, float paramFloat)
  {
    if (y != null)
    {
      int i1 = y.size() - 1;
      while (i1 >= 0)
      {
        ((ab)y.get(i1)).onDrawerSlide(paramView, paramFloat);
        i1 -= 1;
      }
    }
  }
  
  public void a(Object paramObject, boolean paramBoolean)
  {
    G = paramObject;
    H = paramBoolean;
    if ((!paramBoolean) && (getBackground() == null)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      setWillNotDraw(paramBoolean);
      requestLayout();
      return;
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
        if ((paramBoolean) && (!DrawerLayout.LayoutParams.c(localLayoutParams))) {
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
        i1 |= k.a(localView, -i4, localView.getTop());
      }
      for (;;)
      {
        DrawerLayout.LayoutParams.a(localLayoutParams, false);
        i4 = i1;
        break;
        i1 |= l.a(localView, getWidth(), localView.getTop());
      }
    }
    m.a();
    n.a();
    if (i1 != 0) {
      invalidate();
    }
  }
  
  boolean a(View paramView, int paramInt)
  {
    return (e(paramView) & paramInt) == paramInt;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i3 = 0;
    if (getDescendantFocusability() == 393216) {
      return;
    }
    int i4 = getChildCount();
    int i1 = 0;
    int i2 = 0;
    View localView;
    if (i1 < i4)
    {
      localView = getChildAt(i1);
      if (g(localView)) {
        if (j(localView))
        {
          i2 = 1;
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
      }
      for (;;)
      {
        i1 += 1;
        break;
        M.add(localView);
      }
    }
    if (i2 == 0)
    {
      i2 = M.size();
      i1 = i3;
      while (i1 < i2)
      {
        localView = (View)M.get(i1);
        if (localView.getVisibility() == 0) {
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
        i1 += 1;
      }
    }
    M.clear();
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if ((a() != null) || (g(paramView))) {
      cn.c(paramView, 4);
    }
    for (;;)
    {
      if (!c) {
        cn.a(paramView, e);
      }
      return;
      cn.c(paramView, 1);
    }
  }
  
  public CharSequence b(int paramInt)
  {
    paramInt = v.a(paramInt, cn.h(this));
    if (paramInt == 3) {
      return E;
    }
    if (paramInt == 5) {
      return F;
    }
    return null;
  }
  
  public void b()
  {
    a(false);
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    int i1 = v.a(paramInt2, cn.h(this));
    Object localObject;
    switch (paramInt2)
    {
    default: 
      if (paramInt1 != 0)
      {
        if (i1 == 3)
        {
          localObject = k;
          label67:
          ((cz)localObject).e();
        }
      }
      else {
        switch (paramInt1)
        {
        }
      }
      break;
    }
    do
    {
      do
      {
        return;
        r = paramInt1;
        break;
        s = paramInt1;
        break;
        t = paramInt1;
        break;
        u = paramInt1;
        break;
        localObject = l;
        break label67;
        localObject = c(i1);
      } while (localObject == null);
      h((View)localObject);
      return;
      localObject = c(i1);
    } while (localObject == null);
    i((View)localObject);
  }
  
  public void b(ab paramab)
  {
    if (paramab == null) {}
    while (y == null) {
      return;
    }
    y.remove(paramab);
  }
  
  void b(View paramView)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if ((DrawerLayout.LayoutParams.b(localLayoutParams) & 0x1) == 1)
    {
      DrawerLayout.LayoutParams.a(localLayoutParams, 0);
      if (y != null)
      {
        int i1 = y.size() - 1;
        while (i1 >= 0)
        {
          ((ab)y.get(i1)).onDrawerClosed(paramView);
          i1 -= 1;
        }
      }
      a(paramView, false);
      if (hasWindowFocus())
      {
        paramView = getRootView();
        if (paramView != null) {
          paramView.sendAccessibilityEvent(32);
        }
      }
    }
  }
  
  void b(View paramView, float paramFloat)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (paramFloat == DrawerLayout.LayoutParams.a(localLayoutParams)) {
      return;
    }
    DrawerLayout.LayoutParams.a(localLayoutParams, paramFloat);
    a(paramView, paramFloat);
  }
  
  View c(int paramInt)
  {
    int i1 = v.a(paramInt, cn.h(this));
    int i2 = getChildCount();
    paramInt = 0;
    while (paramInt < i2)
    {
      View localView = getChildAt(paramInt);
      if ((e(localView) & 0x7) == (i1 & 0x7)) {
        return localView;
      }
      paramInt += 1;
    }
    return null;
  }
  
  void c()
  {
    int i1 = 0;
    if (!w)
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
      w = true;
    }
  }
  
  void c(View paramView)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if ((DrawerLayout.LayoutParams.b(localLayoutParams) & 0x1) == 0)
    {
      DrawerLayout.LayoutParams.a(localLayoutParams, 1);
      if (y != null)
      {
        int i1 = y.size() - 1;
        while (i1 >= 0)
        {
          ((ab)y.get(i1)).onDrawerOpened(paramView);
          i1 -= 1;
        }
      }
      a(paramView, true);
      if (hasWindowFocus()) {
        sendAccessibilityEvent(32);
      }
      paramView.requestFocus();
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
      f1 = Math.max(f1, DrawerLayout.LayoutParams.a((DrawerLayout.LayoutParams)getChildAt(i1).getLayoutParams()));
      i1 += 1;
    }
    i = f1;
    if ((k.a(true) | l.a(true))) {
      cn.d(this);
    }
  }
  
  float d(View paramView)
  {
    return DrawerLayout.LayoutParams.a((DrawerLayout.LayoutParams)paramView.getLayoutParams());
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
          if ((localView != paramView) && (localView.getVisibility() == 0) && (m(localView)) && (g(localView)))
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
      if ((i > 0.0F) && (bool1))
      {
        i1 = (int)(((h & 0xFF000000) >>> 24) * i);
        i4 = h;
        j.setColor(i1 << 24 | i4 & 0xFFFFFF);
        paramCanvas.drawRect(i3, 0.0F, i2, getHeight(), j);
      }
      do
      {
        return bool2;
        if ((C != null) && (a(paramView, 3)))
        {
          i1 = C.getIntrinsicWidth();
          i2 = paramView.getRight();
          i3 = k.b();
          f1 = Math.max(0.0F, Math.min(i2 / i3, 1.0F));
          C.setBounds(i2, paramView.getTop(), i1 + i2, paramView.getBottom());
          C.setAlpha((int)(255.0F * f1));
          C.draw(paramCanvas);
          return bool2;
        }
      } while ((D == null) || (!a(paramView, 5)));
      i1 = D.getIntrinsicWidth();
      i2 = paramView.getLeft();
      i3 = getWidth();
      i4 = l.b();
      float f1 = Math.max(0.0F, Math.min((i3 - i2) / i4, 1.0F));
      D.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      D.setAlpha((int)(255.0F * f1));
      D.draw(paramCanvas);
      return bool2;
      label534:
      i2 = i3;
    }
  }
  
  int e(View paramView)
  {
    return v.a(getLayoutParamsa, cn.h(this));
  }
  
  public void e(int paramInt)
  {
    View localView = c(paramInt);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + d(paramInt));
    }
    h(localView);
  }
  
  public void f(int paramInt)
  {
    View localView = c(paramInt);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + d(paramInt));
    }
    i(localView);
  }
  
  boolean f(View paramView)
  {
    return getLayoutParamsa == 0;
  }
  
  public boolean g(int paramInt)
  {
    View localView = c(paramInt);
    if (localView != null) {
      return j(localView);
    }
    return false;
  }
  
  boolean g(View paramView)
  {
    int i1 = v.a(getLayoutParamsa, cn.h(paramView));
    if ((i1 & 0x3) != 0) {
      return true;
    }
    return (i1 & 0x5) != 0;
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
  
  public float getDrawerElevation()
  {
    if (d) {
      return f;
    }
    return 0.0F;
  }
  
  public Drawable getStatusBarBackgroundDrawable()
  {
    return B;
  }
  
  public void h(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (q)
    {
      DrawerLayout.LayoutParams.a(localLayoutParams, 1.0F);
      DrawerLayout.LayoutParams.a(localLayoutParams, 1);
      a(paramView, true);
    }
    for (;;)
    {
      invalidate();
      return;
      DrawerLayout.LayoutParams.b(localLayoutParams, 2);
      if (a(paramView, 3)) {
        k.a(paramView, 0, paramView.getTop());
      } else {
        l.a(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
      }
    }
  }
  
  public boolean h(int paramInt)
  {
    View localView = c(paramInt);
    if (localView != null) {
      return k(localView);
    }
    return false;
  }
  
  public void i(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (q)
    {
      DrawerLayout.LayoutParams.a(localLayoutParams, 0.0F);
      DrawerLayout.LayoutParams.a(localLayoutParams, 0);
    }
    for (;;)
    {
      invalidate();
      return;
      DrawerLayout.LayoutParams.b(localLayoutParams, 4);
      if (a(paramView, 3)) {
        k.a(paramView, -paramView.getWidth(), paramView.getTop());
      } else {
        l.a(paramView, getWidth(), paramView.getTop());
      }
    }
  }
  
  public boolean j(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return (DrawerLayout.LayoutParams.b((DrawerLayout.LayoutParams)paramView.getLayoutParams()) & 0x1) == 1;
  }
  
  public boolean k(View paramView)
  {
    if (!g(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return DrawerLayout.LayoutParams.a((DrawerLayout.LayoutParams)paramView.getLayoutParams()) > 0.0F;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    q = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    q = true;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((H) && (B != null))
    {
      int i1 = a.a(G);
      if (i1 > 0)
      {
        B.setBounds(0, 0, getWidth(), i1);
        B.draw(paramCanvas);
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    int i1 = bi.a(paramMotionEvent);
    boolean bool2 = k.a(paramMotionEvent);
    boolean bool3 = l.a(paramMotionEvent);
    switch (i1)
    {
    default: 
      i1 = 0;
      if (((bool2 | bool3)) || (i1 != 0) || (i()) || (w)) {
        bool1 = true;
      }
      return bool1;
    case 0: 
      label63:
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      z = f1;
      A = f2;
      if (i > 0.0F)
      {
        paramMotionEvent = k.d((int)f1, (int)f2);
        if ((paramMotionEvent == null) || (!f(paramMotionEvent))) {
          break;
        }
      }
      break;
    }
    for (i1 = 1;; i1 = 0)
    {
      v = false;
      w = false;
      break label63;
      if (!k.d(3)) {
        break;
      }
      m.a();
      n.a();
      i1 = 0;
      break label63;
      a(true);
      v = false;
      w = false;
      break;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (j()))
    {
      android.support.v4.view.aa.b(paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramKeyEvent = k();
      if ((paramKeyEvent != null) && (a(paramKeyEvent) == 0)) {
        b();
      }
      return paramKeyEvent != null;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    p = true;
    int i4 = paramInt3 - paramInt1;
    int i5 = getChildCount();
    paramInt3 = 0;
    if (paramInt3 < i5)
    {
      View localView = getChildAt(paramInt3);
      if (localView.getVisibility() == 8) {}
      DrawerLayout.LayoutParams localLayoutParams;
      for (;;)
      {
        paramInt3 += 1;
        break;
        localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        if (!f(localView)) {
          break label113;
        }
        localView.layout(leftMargin, topMargin, leftMargin + localView.getMeasuredWidth(), topMargin + localView.getMeasuredHeight());
      }
      label113:
      int i6 = localView.getMeasuredWidth();
      int i7 = localView.getMeasuredHeight();
      int i1;
      float f1;
      label167:
      int i2;
      if (a(localView, 3))
      {
        paramInt1 = -i6;
        i1 = (int)(i6 * DrawerLayout.LayoutParams.a(localLayoutParams)) + paramInt1;
        f1 = (i6 + i1) / i6;
        if (f1 == DrawerLayout.LayoutParams.a(localLayoutParams)) {
          break label314;
        }
        i2 = 1;
        label181:
        switch (a & 0x70)
        {
        default: 
          localView.layout(i1, topMargin, i6 + i1, i7 + topMargin);
          label241:
          if (i2 != 0) {
            b(localView, f1);
          }
          if (DrawerLayout.LayoutParams.a(localLayoutParams) <= 0.0F) {
            break;
          }
        }
      }
      for (paramInt1 = 0; localView.getVisibility() != paramInt1; paramInt1 = 4)
      {
        localView.setVisibility(paramInt1);
        break;
        i1 = i4 - (int)(i6 * DrawerLayout.LayoutParams.a(localLayoutParams));
        f1 = (i4 - i1) / i6;
        break label167;
        label314:
        i2 = 0;
        break label181;
        paramInt1 = paramInt4 - paramInt2;
        localView.layout(i1, paramInt1 - bottomMargin - localView.getMeasuredHeight(), i6 + i1, paramInt1 - bottomMargin);
        break label241;
        int i8 = paramInt4 - paramInt2;
        int i3 = (i8 - i7) / 2;
        if (i3 < topMargin) {
          paramInt1 = topMargin;
        }
        for (;;)
        {
          localView.layout(i1, paramInt1, i6 + i1, i7 + paramInt1);
          break;
          paramInt1 = i3;
          if (i3 + i7 > i8 - bottomMargin) {
            paramInt1 = i8 - bottomMargin - i7;
          }
        }
      }
    }
    p = false;
    q = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i5 = View.MeasureSpec.getMode(paramInt1);
    int i4 = View.MeasureSpec.getMode(paramInt2);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i3 = View.MeasureSpec.getSize(paramInt2);
    int i2;
    if (i5 == 1073741824)
    {
      i2 = i1;
      if (i4 == 1073741824) {}
    }
    else if (isInEditMode())
    {
      if (i5 == Integer.MIN_VALUE)
      {
        if (i4 != Integer.MIN_VALUE) {
          break label162;
        }
        i2 = i1;
        i1 = i3;
      }
    }
    for (;;)
    {
      label71:
      setMeasuredDimension(i2, i1);
      if ((G != null) && (cn.z(this))) {}
      int i8;
      int i6;
      View localView;
      for (i5 = 1;; i5 = 0)
      {
        i8 = cn.h(this);
        i3 = 0;
        i4 = 0;
        int i9 = getChildCount();
        i6 = 0;
        for (;;)
        {
          if (i6 >= i9) {
            break label581;
          }
          localView = getChildAt(i6);
          if (localView.getVisibility() != 8) {
            break;
          }
          i6 += 1;
        }
        if (i5 != 0) {
          break;
        }
        i1 = 300;
        break;
        label162:
        i2 = i1;
        if (i4 != 0) {
          break label582;
        }
        i2 = i1;
        i1 = 300;
        break label71;
        throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
      }
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
      int i7;
      if (i5 != 0)
      {
        i7 = v.a(a, i8);
        if (!cn.z(localView)) {
          break label304;
        }
        a.a(localView, G, i7);
      }
      for (;;)
      {
        if (!f(localView)) {
          break label323;
        }
        localView.measure(View.MeasureSpec.makeMeasureSpec(i2 - leftMargin - rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i1 - topMargin - bottomMargin, 1073741824));
        break;
        label304:
        a.a(localLayoutParams, G, i7);
      }
      label323:
      if (g(localView))
      {
        if ((d) && (cn.w(localView) != f)) {
          cn.l(localView, f);
        }
        int i10 = e(localView) & 0x7;
        if (i10 == 3) {}
        for (i7 = 1; ((i7 != 0) && (i3 != 0)) || ((i7 == 0) && (i4 != 0)); i7 = 0) {
          throw new IllegalStateException("Child drawer has absolute gravity " + d(i10) + " but this " + "DrawerLayout" + " already has a " + "drawer view along that edge");
        }
        if (i7 != 0) {
          i3 = 1;
        }
        for (;;)
        {
          localView.measure(getChildMeasureSpec(paramInt1, g + leftMargin + rightMargin, width), getChildMeasureSpec(paramInt2, topMargin + bottomMargin, height));
          break;
          i4 = 1;
        }
      }
      throw new IllegalStateException("Child " + localView + " at index " + i6 + " does not have a valid layout_gravity - must be Gravity.LEFT, " + "Gravity.RIGHT or Gravity.NO_GRAVITY");
      label581:
      return;
      label582:
      i1 = i3;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (DrawerLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (a != 0)
    {
      View localView = c(a);
      if (localView != null) {
        h(localView);
      }
    }
    if (b != 3) {
      b(b, 3);
    }
    if (c != 3) {
      b(c, 5);
    }
    if (d != 3) {
      b(d, 8388611);
    }
    if (e != 3) {
      b(e, 8388613);
    }
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    f();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    DrawerLayout.SavedState localSavedState = new DrawerLayout.SavedState(super.onSaveInstanceState());
    int i4 = getChildCount();
    int i1 = 0;
    for (;;)
    {
      DrawerLayout.LayoutParams localLayoutParams;
      int i2;
      if (i1 < i4)
      {
        localLayoutParams = (DrawerLayout.LayoutParams)getChildAt(i1).getLayoutParams();
        if (DrawerLayout.LayoutParams.b(localLayoutParams) != 1) {
          break label119;
        }
        i2 = 1;
        if (DrawerLayout.LayoutParams.b(localLayoutParams) != 2) {
          break label124;
        }
      }
      label119:
      label124:
      for (int i3 = 1;; i3 = 0)
      {
        if ((i2 == 0) && (i3 == 0)) {
          break label129;
        }
        a = a;
        b = r;
        c = s;
        d = t;
        e = u;
        return localSavedState;
        i2 = 0;
        break;
      }
      label129:
      i1 += 1;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    k.b(paramMotionEvent);
    l.b(paramMotionEvent);
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
      z = f1;
      A = f2;
      v = false;
      w = false;
      return true;
    case 1: 
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      paramMotionEvent = k.d((int)f2, (int)f1);
      if ((paramMotionEvent != null) && (f(paramMotionEvent)))
      {
        f2 -= z;
        f1 -= A;
        int i1 = k.d();
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
      v = false;
      return true;
      bool = false;
      continue;
      a(true);
      v = false;
      w = false;
      return true;
      bool = true;
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    v = paramBoolean;
    if (paramBoolean) {
      a(true);
    }
  }
  
  public void requestLayout()
  {
    if (!p) {
      super.requestLayout();
    }
  }
  
  public void setDrawerElevation(float paramFloat)
  {
    f = paramFloat;
    int i1 = 0;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if (g(localView)) {
        cn.l(localView, f);
      }
      i1 += 1;
    }
  }
  
  @Deprecated
  public void setDrawerListener(ab paramab)
  {
    if (x != null) {
      b(x);
    }
    if (paramab != null) {
      a(paramab);
    }
    x = paramab;
  }
  
  public void setDrawerLockMode(int paramInt)
  {
    b(paramInt, 3);
    b(paramInt, 5);
  }
  
  public void setScrimColor(int paramInt)
  {
    h = paramInt;
    invalidate();
  }
  
  public void setStatusBarBackground(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = android.support.v4.content.a.a(getContext(), paramInt);; localDrawable = null)
    {
      B = localDrawable;
      invalidate();
      return;
    }
  }
  
  public void setStatusBarBackground(Drawable paramDrawable)
  {
    B = paramDrawable;
    invalidate();
  }
  
  public void setStatusBarBackgroundColor(int paramInt)
  {
    B = new ColorDrawable(paramInt);
    invalidate();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */