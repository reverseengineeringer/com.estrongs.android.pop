package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.design.i;
import android.support.design.j;
import android.support.v4.view.bi;
import android.support.v4.view.bt;
import android.support.v4.view.bu;
import android.support.v4.view.cn;
import android.support.v4.view.fr;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.ViewTreeObserver;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout
  extends ViewGroup
  implements bt
{
  static final String a;
  static final Class<?>[] b;
  static final ThreadLocal<Map<String, Constructor<CoordinatorLayout.Behavior>>> c;
  static final Comparator<View> e;
  static final z f;
  final Comparator<View> d = new r(this);
  private final List<View> g = new ArrayList();
  private final List<View> h = new ArrayList();
  private final List<View> i = new ArrayList();
  private final Rect j = new Rect();
  private final Rect k = new Rect();
  private final Rect l = new Rect();
  private final int[] m = new int[2];
  private Paint n;
  private boolean o;
  private int[] p;
  private View q;
  private View r;
  private View s;
  private w t;
  private boolean u;
  private fr v;
  private boolean w;
  private Drawable x;
  private ViewGroup.OnHierarchyChangeListener y;
  private final bu z = new bu(this);
  
  static
  {
    Object localObject = CoordinatorLayout.class.getPackage();
    if (localObject != null)
    {
      localObject = ((Package)localObject).getName();
      a = (String)localObject;
      if (Build.VERSION.SDK_INT < 21) {
        break label80;
      }
      e = new y();
    }
    for (f = new aa();; f = null)
    {
      b = new Class[] { Context.class, AttributeSet.class };
      c = new ThreadLocal();
      return;
      localObject = null;
      break;
      label80:
      e = null;
    }
  }
  
  public CoordinatorLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    cr.a(paramContext);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, j.CoordinatorLayout, paramInt, i.Widget_Design_CoordinatorLayout);
    paramInt = paramAttributeSet.getResourceId(j.CoordinatorLayout_keylines, 0);
    if (paramInt != 0)
    {
      paramContext = paramContext.getResources();
      p = paramContext.getIntArray(paramInt);
      float f1 = getDisplayMetricsdensity;
      int i2 = p.length;
      paramInt = i1;
      while (paramInt < i2)
      {
        paramContext = p;
        paramContext[paramInt] = ((int)(paramContext[paramInt] * f1));
        paramInt += 1;
      }
    }
    x = paramAttributeSet.getDrawable(j.CoordinatorLayout_statusBarBackground);
    paramAttributeSet.recycle();
    if (f != null) {
      f.a(this, new s(this, null));
    }
    super.setOnHierarchyChangeListener(new u(this, null));
  }
  
  private int a(int paramInt)
  {
    if (p == null)
    {
      Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + paramInt);
      return 0;
    }
    if ((paramInt < 0) || (paramInt >= p.length))
    {
      Log.e("CoordinatorLayout", "Keyline index " + paramInt + " out of range for " + this);
      return 0;
    }
    return p[paramInt];
  }
  
  static CoordinatorLayout.Behavior a(Context paramContext, AttributeSet paramAttributeSet, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    String str;
    if (paramString.startsWith(".")) {
      str = paramContext.getPackageName() + paramString;
    }
    label228:
    for (;;)
    {
      try
      {
        paramString = (Map)c.get();
        if (paramString != null) {
          break label228;
        }
        paramString = new HashMap();
        c.set(paramString);
        Constructor localConstructor2 = (Constructor)paramString.get(str);
        Constructor localConstructor1 = localConstructor2;
        if (localConstructor2 == null)
        {
          localConstructor1 = Class.forName(str, true, paramContext.getClassLoader()).getConstructor(b);
          localConstructor1.setAccessible(true);
          paramString.put(str, localConstructor1);
        }
        paramContext = (CoordinatorLayout.Behavior)localConstructor1.newInstance(new Object[] { paramContext, paramAttributeSet });
        return paramContext;
      }
      catch (Exception paramContext)
      {
        throw new RuntimeException("Could not inflate Behavior subclass " + str, paramContext);
      }
      str = paramString;
      if (paramString.indexOf('.') < 0)
      {
        str = paramString;
        if (!TextUtils.isEmpty(a)) {
          str = a + '.' + paramString;
        }
      }
    }
  }
  
  private fr a(fr paramfr)
  {
    boolean bool2 = true;
    fr localfr = paramfr;
    if (v != paramfr)
    {
      v = paramfr;
      if ((paramfr == null) || (paramfr.b() <= 0)) {
        break label71;
      }
      bool1 = true;
      w = bool1;
      if ((w) || (getBackground() != null)) {
        break label76;
      }
    }
    label71:
    label76:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      setWillNotDraw(bool1);
      localfr = b(paramfr);
      requestLayout();
      return localfr;
      bool1 = false;
      break;
    }
  }
  
  private void a(View paramView1, View paramView2, int paramInt)
  {
    Object localObject = (v)paramView1.getLayoutParams();
    localObject = j;
    Rect localRect = k;
    a(paramView2, (Rect)localObject);
    a(paramView1, paramInt, (Rect)localObject, localRect);
    paramView1.layout(left, top, right, bottom);
  }
  
  private void a(List<View> paramList)
  {
    paramList.clear();
    boolean bool = isChildrenDrawingOrderEnabled();
    int i3 = getChildCount();
    int i1 = i3 - 1;
    if (i1 >= 0)
    {
      if (bool) {}
      for (int i2 = getChildDrawingOrder(i3, i1);; i2 = i1)
      {
        paramList.add(getChildAt(i2));
        i1 -= 1;
        break;
      }
    }
    if (e != null) {
      Collections.sort(paramList, e);
    }
  }
  
  private static void a(List<View> paramList, Comparator<View> paramComparator)
  {
    if ((paramList == null) || (paramList.size() < 2)) {}
    for (;;)
    {
      return;
      View[] arrayOfView = new View[paramList.size()];
      paramList.toArray(arrayOfView);
      int i5 = arrayOfView.length;
      int i1 = 0;
      while (i1 < i5)
      {
        int i2 = i1 + 1;
        int i4;
        for (int i3 = i1; i2 < i5; i3 = i4)
        {
          i4 = i3;
          if (paramComparator.compare(arrayOfView[i2], arrayOfView[i3]) < 0) {
            i4 = i2;
          }
          i2 += 1;
        }
        if (i1 != i3)
        {
          View localView = arrayOfView[i3];
          arrayOfView[i3] = arrayOfView[i1];
          arrayOfView[i1] = localView;
        }
        i1 += 1;
      }
      paramList.clear();
      i1 = 0;
      while (i1 < i5)
      {
        paramList.add(arrayOfView[i1]);
        i1 += 1;
      }
    }
  }
  
  private boolean a(MotionEvent paramMotionEvent, int paramInt)
  {
    boolean bool1 = false;
    int i1 = 0;
    MotionEvent localMotionEvent = null;
    int i3 = bi.a(paramMotionEvent);
    List localList = h;
    a(localList);
    int i4 = localList.size();
    int i2 = 0;
    View localView;
    CoordinatorLayout.Behavior localBehavior;
    if (i2 < i4)
    {
      localView = (View)localList.get(i2);
      v localv = (v)localView.getLayoutParams();
      localBehavior = localv.b();
      if (((bool1) || (i1 != 0)) && (i3 != 0))
      {
        if (localBehavior == null) {
          break label330;
        }
        if (localMotionEvent == null)
        {
          long l1 = SystemClock.uptimeMillis();
          localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
          switch (paramInt)
          {
          }
          for (;;)
          {
            label140:
            i2 += 1;
            break;
            localBehavior.a(this, localView, localMotionEvent);
            continue;
            localBehavior.b(this, localView, localMotionEvent);
          }
        }
      }
      else
      {
        boolean bool2 = bool1;
        if (!bool1)
        {
          bool2 = bool1;
          if (localBehavior == null) {}
        }
        switch (paramInt)
        {
        default: 
          label220:
          bool2 = bool1;
          if (bool1)
          {
            q = localView;
            bool2 = bool1;
          }
          bool1 = bool2;
          bool2 = localv.e();
          boolean bool3 = localv.a(this, localView);
          if ((bool3) && (!bool2))
          {
            i1 = 1;
            label272:
            if ((!bool3) || (i1 != 0)) {
              break label324;
            }
          }
          break;
        }
      }
    }
    for (;;)
    {
      localList.clear();
      return bool1;
      bool1 = localBehavior.a(this, localView, paramMotionEvent);
      break label220;
      bool1 = localBehavior.b(this, localView, paramMotionEvent);
      break label220;
      i1 = 0;
      break label272;
      label324:
      break label140;
      break;
      label330:
      break label140;
    }
  }
  
  private static int b(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt == 0) {
      i1 = 8388659;
    }
    return i1;
  }
  
  private fr b(fr paramfr)
  {
    if (paramfr.e()) {
      return paramfr;
    }
    int i2 = getChildCount();
    int i1 = 0;
    Object localObject;
    if (i1 < i2)
    {
      localObject = getChildAt(i1);
      if (cn.z((View)localObject))
      {
        CoordinatorLayout.Behavior localBehavior = ((v)((View)localObject).getLayoutParams()).b();
        if (localBehavior != null)
        {
          localObject = localBehavior.a(this, (View)localObject, paramfr);
          paramfr = (fr)localObject;
          if (!((fr)localObject).e()) {}
        }
      }
    }
    for (;;)
    {
      return (fr)localObject;
      i1 += 1;
      break;
      localObject = paramfr;
    }
  }
  
  private void b(View paramView, int paramInt1, int paramInt2)
  {
    v localv = (v)paramView.getLayoutParams();
    int i6 = android.support.v4.view.v.a(c(c), paramInt2);
    int i5 = getWidth();
    int i4 = getHeight();
    int i2 = paramView.getMeasuredWidth();
    int i3 = paramView.getMeasuredHeight();
    int i1 = paramInt1;
    if (paramInt2 == 1) {
      i1 = i5 - paramInt1;
    }
    paramInt1 = a(i1) - i2;
    paramInt2 = 0;
    switch (i6 & 0x7)
    {
    default: 
      switch (i6 & 0x70)
      {
      }
      break;
    }
    for (;;)
    {
      paramInt1 = Math.max(getPaddingLeft() + leftMargin, Math.min(paramInt1, i5 - getPaddingRight() - i2 - rightMargin));
      paramInt2 = Math.max(getPaddingTop() + topMargin, Math.min(paramInt2, i4 - getPaddingBottom() - i3 - bottomMargin));
      paramView.layout(paramInt1, paramInt2, paramInt1 + i2, paramInt2 + i3);
      return;
      paramInt1 += i2;
      break;
      paramInt1 += i2 / 2;
      break;
      paramInt2 = 0 + i3;
      continue;
      paramInt2 = 0 + i3 / 2;
    }
  }
  
  private static int c(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt == 0) {
      i1 = 8388661;
    }
    return i1;
  }
  
  private void c(View paramView, int paramInt)
  {
    v localv = (v)paramView.getLayoutParams();
    Rect localRect1 = j;
    localRect1.set(getPaddingLeft() + leftMargin, getPaddingTop() + topMargin, getWidth() - getPaddingRight() - rightMargin, getHeight() - getPaddingBottom() - bottomMargin);
    if ((v != null) && (cn.z(this)) && (!cn.z(paramView)))
    {
      left += v.a();
      top += v.b();
      right -= v.c();
      bottom -= v.d();
    }
    Rect localRect2 = k;
    android.support.v4.view.v.a(b(c), paramView.getMeasuredWidth(), paramView.getMeasuredHeight(), localRect1, localRect2, paramInt);
    paramView.layout(left, top, right, bottom);
  }
  
  private static int d(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt == 0) {
      i1 = 17;
    }
    return i1;
  }
  
  private void e()
  {
    int i1 = 0;
    if (q != null)
    {
      CoordinatorLayout.Behavior localBehavior = ((v)q.getLayoutParams()).b();
      if (localBehavior != null)
      {
        long l1 = SystemClock.uptimeMillis();
        MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
        localBehavior.b(this, q, localMotionEvent);
        localMotionEvent.recycle();
      }
      q = null;
    }
    int i2 = getChildCount();
    while (i1 < i2)
    {
      ((v)getChildAt(i1).getLayoutParams()).f();
      i1 += 1;
    }
  }
  
  private void f()
  {
    g.clear();
    int i1 = 0;
    int i2 = getChildCount();
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      a(localView).b(this, localView);
      g.add(localView);
      i1 += 1;
    }
    a(g, d);
  }
  
  public v a(AttributeSet paramAttributeSet)
  {
    return new v(getContext(), paramAttributeSet);
  }
  
  v a(View paramView)
  {
    v localv = (v)paramView.getLayoutParams();
    View localView;
    if (!b)
    {
      Class localClass = paramView.getClass();
      paramView = null;
      for (;;)
      {
        localView = paramView;
        if (localClass == null) {
          break;
        }
        paramView = (t)localClass.getAnnotation(t.class);
        localView = paramView;
        if (paramView != null) {
          break;
        }
        localClass = localClass.getSuperclass();
      }
      if (localView == null) {}
    }
    try
    {
      localv.a((CoordinatorLayout.Behavior)localView.a().newInstance());
      b = true;
      return localv;
    }
    catch (Exception paramView)
    {
      for (;;)
      {
        Log.e("CoordinatorLayout", "Default behavior class " + localView.a().getName() + " could not be instantiated. Did you forget a default constructor?", paramView);
      }
    }
  }
  
  protected v a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof v)) {
      return new v((v)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new v((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new v(paramLayoutParams);
  }
  
  void a()
  {
    int i4 = 0;
    int i2 = getChildCount();
    int i1 = 0;
    for (;;)
    {
      int i3 = i4;
      if (i1 < i2)
      {
        if (e(getChildAt(i1))) {
          i3 = 1;
        }
      }
      else
      {
        if (i3 != u)
        {
          if (i3 == 0) {
            break;
          }
          b();
        }
        return;
      }
      i1 += 1;
    }
    c();
  }
  
  public void a(View paramView, int paramInt)
  {
    v localv = (v)paramView.getLayoutParams();
    if (localv.d()) {
      throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }
    if (g != null)
    {
      a(paramView, g, paramInt);
      return;
    }
    if (e >= 0)
    {
      b(paramView, e, paramInt);
      return;
    }
    c(paramView, paramInt);
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  void a(View paramView, int paramInt, Rect paramRect1, Rect paramRect2)
  {
    v localv = (v)paramView.getLayoutParams();
    int i5 = android.support.v4.view.v.a(d(c), paramInt);
    int i1 = android.support.v4.view.v.a(b(d), paramInt);
    int i3 = paramView.getMeasuredWidth();
    int i4 = paramView.getMeasuredHeight();
    label122:
    int i2;
    switch (i1 & 0x7)
    {
    default: 
      paramInt = left;
      switch (i1 & 0x70)
      {
      default: 
        i1 = top;
        i2 = paramInt;
        switch (i5 & 0x7)
        {
        default: 
          i2 = paramInt - i3;
        case 5: 
          label162:
          paramInt = i1;
          switch (i5 & 0x70)
          {
          }
          break;
        }
        break;
      }
      break;
    }
    for (paramInt = i1 - i4;; paramInt = i1 - i4 / 2)
    {
      i5 = getWidth();
      i1 = getHeight();
      i2 = Math.max(getPaddingLeft() + leftMargin, Math.min(i2, i5 - getPaddingRight() - i3 - rightMargin));
      paramInt = Math.max(getPaddingTop() + topMargin, Math.min(paramInt, i1 - getPaddingBottom() - i4 - bottomMargin));
      paramRect2.set(i2, paramInt, i2 + i3, paramInt + i4);
      return;
      paramInt = right;
      break;
      paramInt = left;
      paramInt = paramRect1.width() / 2 + paramInt;
      break;
      i1 = bottom;
      break label122;
      i1 = top + paramRect1.height() / 2;
      break label122;
      i2 = paramInt - i3 / 2;
      break label162;
    }
  }
  
  void a(View paramView, Rect paramRect)
  {
    dh.b(this, paramView, paramRect);
  }
  
  void a(View paramView, boolean paramBoolean, Rect paramRect)
  {
    if ((paramView.isLayoutRequested()) || (paramView.getVisibility() == 8))
    {
      paramRect.set(0, 0, 0, 0);
      return;
    }
    if (paramBoolean)
    {
      a(paramView, paramRect);
      return;
    }
    paramRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
  }
  
  void a(boolean paramBoolean)
  {
    int i3 = cn.h(this);
    int i4 = g.size();
    int i1 = 0;
    while (i1 < i4)
    {
      View localView = (View)g.get(i1);
      Object localObject1 = (v)localView.getLayoutParams();
      int i2 = 0;
      while (i2 < i1)
      {
        localObject2 = (View)g.get(i2);
        if (h == localObject2) {
          b(localView, i3);
        }
        i2 += 1;
      }
      localObject1 = j;
      Object localObject2 = k;
      c(localView, (Rect)localObject1);
      a(localView, true, (Rect)localObject2);
      if (((Rect)localObject1).equals(localObject2))
      {
        i1 += 1;
      }
      else
      {
        b(localView, (Rect)localObject2);
        i2 = i1 + 1;
        label155:
        CoordinatorLayout.Behavior localBehavior;
        if (i2 < i4)
        {
          localObject1 = (View)g.get(i2);
          localObject2 = (v)((View)localObject1).getLayoutParams();
          localBehavior = ((v)localObject2).b();
          if ((localBehavior != null) && (localBehavior.b(this, (View)localObject1, localView)))
          {
            if ((paramBoolean) || (!((v)localObject2).i())) {
              break label235;
            }
            ((v)localObject2).j();
          }
        }
        for (;;)
        {
          i2 += 1;
          break label155;
          break;
          label235:
          boolean bool = localBehavior.c(this, (View)localObject1, localView);
          if (paramBoolean) {
            ((v)localObject2).b(bool);
          }
        }
      }
    }
  }
  
  public boolean a(View paramView, int paramInt1, int paramInt2)
  {
    Rect localRect = j;
    a(paramView, localRect);
    return localRect.contains(paramInt1, paramInt2);
  }
  
  public boolean a(View paramView1, View paramView2)
  {
    if ((paramView1.getVisibility() == 0) && (paramView2.getVisibility() == 0))
    {
      Rect localRect = j;
      if (paramView1.getParent() != this)
      {
        bool = true;
        a(paramView1, bool, localRect);
        paramView1 = k;
        if (paramView2.getParent() == this) {
          break label115;
        }
      }
      label115:
      for (boolean bool = true;; bool = false)
      {
        a(paramView2, bool, paramView1);
        if ((left > right) || (top > bottom) || (right < left) || (bottom < top)) {
          break label120;
        }
        return true;
        bool = false;
        break;
      }
      label120:
      return false;
    }
    return false;
  }
  
  void b()
  {
    if (o)
    {
      if (t == null) {
        t = new w(this);
      }
      getViewTreeObserver().addOnPreDrawListener(t);
    }
    u = true;
  }
  
  void b(View paramView)
  {
    int i3 = g.size();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i3)
    {
      View localView = (View)g.get(i2);
      if (localView == paramView) {
        i1 = 1;
      }
      for (;;)
      {
        i2 += 1;
        break;
        if (i1 != 0)
        {
          v localv = (v)localView.getLayoutParams();
          CoordinatorLayout.Behavior localBehavior = localv.b();
          if ((localBehavior != null) && (localv.a(this, localView, paramView))) {
            localBehavior.d(this, localView, paramView);
          }
        }
      }
    }
  }
  
  void b(View paramView, int paramInt)
  {
    v localv = (v)paramView.getLayoutParams();
    if (g != null)
    {
      Object localObject = j;
      Rect localRect1 = k;
      Rect localRect2 = l;
      a(g, (Rect)localObject);
      a(paramView, false, localRect1);
      a(paramView, paramInt, (Rect)localObject, localRect2);
      paramInt = left - left;
      int i1 = top - top;
      if (paramInt != 0) {
        paramView.offsetLeftAndRight(paramInt);
      }
      if (i1 != 0) {
        paramView.offsetTopAndBottom(i1);
      }
      if ((paramInt != 0) || (i1 != 0))
      {
        localObject = localv.b();
        if (localObject != null) {
          ((CoordinatorLayout.Behavior)localObject).c(this, paramView, g);
        }
      }
    }
  }
  
  void b(View paramView, Rect paramRect)
  {
    ((v)paramView.getLayoutParams()).a(paramRect);
  }
  
  void c()
  {
    if ((o) && (t != null)) {
      getViewTreeObserver().removeOnPreDrawListener(t);
    }
    u = false;
  }
  
  public void c(View paramView)
  {
    int i3 = g.size();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i3)
    {
      View localView = (View)g.get(i2);
      if (localView == paramView) {
        i1 = 1;
      }
      for (;;)
      {
        i2 += 1;
        break;
        if (i1 != 0)
        {
          v localv = (v)localView.getLayoutParams();
          CoordinatorLayout.Behavior localBehavior = localv.b();
          if ((localBehavior != null) && (localv.a(this, localView, paramView))) {
            localBehavior.c(this, localView, paramView);
          }
        }
      }
    }
  }
  
  void c(View paramView, Rect paramRect)
  {
    paramRect.set(((v)paramView.getLayoutParams()).c());
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof v)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  protected v d()
  {
    return new v(-2, -2);
  }
  
  public List<View> d(View paramView)
  {
    v localv = (v)paramView.getLayoutParams();
    List localList = i;
    localList.clear();
    int i2 = getChildCount();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (localView == paramView) {}
      for (;;)
      {
        i1 += 1;
        break;
        if (localv.a(this, paramView, localView)) {
          localList.add(localView);
        }
      }
    }
    return localList;
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    v localv = (v)paramView.getLayoutParams();
    if ((a != null) && (a.d(this, paramView) > 0.0F))
    {
      if (n == null) {
        n = new Paint();
      }
      n.setColor(a.c(this, paramView));
      paramCanvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), n);
    }
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    boolean bool2 = false;
    Drawable localDrawable = x;
    boolean bool1 = bool2;
    if (localDrawable != null)
    {
      bool1 = bool2;
      if (localDrawable.isStateful()) {
        bool1 = false | localDrawable.setState(arrayOfInt);
      }
    }
    if (bool1) {
      invalidate();
    }
  }
  
  boolean e(View paramView)
  {
    v localv = (v)paramView.getLayoutParams();
    if (g != null) {
      return true;
    }
    int i2 = getChildCount();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (localView == paramView) {}
      while (!localv.a(this, paramView, localView))
      {
        i1 += 1;
        break;
      }
      return true;
    }
    return false;
  }
  
  public int getNestedScrollAxes()
  {
    return z.a();
  }
  
  public Drawable getStatusBarBackground()
  {
    return x;
  }
  
  protected int getSuggestedMinimumHeight()
  {
    return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
  }
  
  protected int getSuggestedMinimumWidth()
  {
    return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    e();
    if (u)
    {
      if (t == null) {
        t = new w(this);
      }
      getViewTreeObserver().addOnPreDrawListener(t);
    }
    if ((v == null) && (cn.z(this))) {
      cn.y(this);
    }
    o = true;
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    e();
    if ((u) && (t != null)) {
      getViewTreeObserver().removeOnPreDrawListener(t);
    }
    if (s != null) {
      onStopNestedScroll(s);
    }
    o = false;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((w) && (x != null)) {
      if (v == null) {
        break label61;
      }
    }
    label61:
    for (int i1 = v.b();; i1 = 0)
    {
      if (i1 > 0)
      {
        x.setBounds(0, 0, getWidth(), i1);
        x.draw(paramCanvas);
      }
      return;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = bi.a(paramMotionEvent);
    if (i1 == 0) {
      e();
    }
    boolean bool = a(paramMotionEvent, 0);
    if (0 != 0) {
      throw new NullPointerException();
    }
    if ((i1 == 1) || (i1 == 3)) {
      e();
    }
    return bool;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = cn.h(this);
    paramInt3 = g.size();
    paramInt1 = 0;
    while (paramInt1 < paramInt3)
    {
      View localView = (View)g.get(paramInt1);
      CoordinatorLayout.Behavior localBehavior = ((v)localView.getLayoutParams()).b();
      if ((localBehavior == null) || (!localBehavior.a(this, localView, paramInt2))) {
        a(localView, paramInt2);
      }
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    f();
    a();
    int i10 = getPaddingLeft();
    int i11 = getPaddingTop();
    int i12 = getPaddingRight();
    int i13 = getPaddingBottom();
    int i14 = cn.h(this);
    int i2;
    int i7;
    int i6;
    int i3;
    label100:
    int i4;
    int i5;
    label117:
    View localView;
    v localv;
    int i8;
    int i1;
    int i9;
    int i20;
    if (i14 == 1)
    {
      i2 = 1;
      int i15 = View.MeasureSpec.getMode(paramInt1);
      int i16 = View.MeasureSpec.getSize(paramInt1);
      int i17 = View.MeasureSpec.getMode(paramInt2);
      int i18 = View.MeasureSpec.getSize(paramInt2);
      i7 = getSuggestedMinimumWidth();
      i6 = getSuggestedMinimumHeight();
      if ((v == null) || (!cn.z(this))) {
        break label443;
      }
      i3 = 1;
      int i19 = g.size();
      i4 = 0;
      i5 = 0;
      if (i4 >= i19) {
        break label490;
      }
      localView = (View)g.get(i4);
      localv = (v)localView.getLayoutParams();
      i8 = 0;
      i1 = i8;
      if (e >= 0)
      {
        i1 = i8;
        if (i15 != 0)
        {
          i9 = a(e);
          i20 = android.support.v4.view.v.a(c(c), i14) & 0x7;
          if (((i20 != 3) || (i2 != 0)) && ((i20 != 5) || (i2 == 0))) {
            break label449;
          }
          i1 = Math.max(0, i16 - i12 - i9);
        }
      }
      label236:
      if ((i3 == 0) || (cn.z(localView))) {
        break label518;
      }
      i8 = v.a();
      int i21 = v.c();
      i9 = v.b();
      i20 = v.d();
      i8 = View.MeasureSpec.makeMeasureSpec(i16 - (i8 + i21), i15);
      i9 = View.MeasureSpec.makeMeasureSpec(i18 - (i9 + i20), i17);
    }
    for (;;)
    {
      CoordinatorLayout.Behavior localBehavior = localv.b();
      if ((localBehavior == null) || (!localBehavior.a(this, localView, i8, i1, i9, 0))) {
        a(localView, i8, i1, i9, 0);
      }
      i7 = Math.max(i7, localView.getMeasuredWidth() + (i10 + i12) + leftMargin + rightMargin);
      i6 = Math.max(i6, localView.getMeasuredHeight() + (i11 + i13) + topMargin + bottomMargin);
      i5 = cn.a(i5, cn.l(localView));
      i4 += 1;
      break label117;
      i2 = 0;
      break;
      label443:
      i3 = 0;
      break label100;
      label449:
      if ((i20 != 5) || (i2 != 0))
      {
        i1 = i8;
        if (i20 != 3) {
          break label236;
        }
        i1 = i8;
        if (i2 == 0) {
          break label236;
        }
      }
      i1 = Math.max(0, i9 - i10);
      break label236;
      label490:
      setMeasuredDimension(cn.a(i7, paramInt1, 0xFF000000 & i5), cn.a(i6, paramInt2, i5 << 16));
      return;
      label518:
      i9 = paramInt2;
      i8 = paramInt1;
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    boolean bool = false;
    View localView;
    Object localObject;
    if (i1 < i2)
    {
      localView = getChildAt(i1);
      localObject = (v)localView.getLayoutParams();
      if (((v)localObject).h()) {}
    }
    for (;;)
    {
      i1 += 1;
      break;
      localObject = ((v)localObject).b();
      if (localObject != null)
      {
        bool = ((CoordinatorLayout.Behavior)localObject).a(this, localView, paramView, paramFloat1, paramFloat2, paramBoolean) | bool;
        continue;
        if (bool) {
          a(true);
        }
        return bool;
      }
    }
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    int i2 = getChildCount();
    int i1 = 0;
    boolean bool = false;
    View localView;
    Object localObject;
    if (i1 < i2)
    {
      localView = getChildAt(i1);
      localObject = (v)localView.getLayoutParams();
      if (((v)localObject).h()) {}
    }
    for (;;)
    {
      i1 += 1;
      break;
      localObject = ((v)localObject).b();
      if (localObject != null)
      {
        bool = ((CoordinatorLayout.Behavior)localObject).a(this, localView, paramView, paramFloat1, paramFloat2) | bool;
        continue;
        return bool;
      }
    }
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    int i2 = 0;
    int i1 = 0;
    int i3 = 0;
    int i6 = getChildCount();
    int i4 = 0;
    View localView;
    Object localObject;
    int i5;
    if (i4 < i6)
    {
      localView = getChildAt(i4);
      localObject = (v)localView.getLayoutParams();
      if (!((v)localObject).h())
      {
        i5 = i3;
        i3 = i2;
        i2 = i1;
        i1 = i5;
      }
    }
    for (;;)
    {
      i5 = i4 + 1;
      i4 = i3;
      i3 = i1;
      i1 = i2;
      i2 = i4;
      i4 = i5;
      break;
      localObject = ((v)localObject).b();
      if (localObject != null)
      {
        int[] arrayOfInt = m;
        m[1] = 0;
        arrayOfInt[0] = 0;
        ((CoordinatorLayout.Behavior)localObject).a(this, localView, paramView, paramInt1, paramInt2, m);
        if (paramInt1 > 0)
        {
          i3 = Math.max(i2, m[0]);
          label158:
          if (paramInt2 <= 0) {
            break label201;
          }
        }
        label201:
        for (i1 = Math.max(i1, m[1]);; i1 = Math.min(i1, m[1]))
        {
          i2 = i1;
          i1 = 1;
          break;
          i3 = Math.min(i2, m[0]);
          break label158;
        }
        paramArrayOfInt[0] = i2;
        paramArrayOfInt[1] = i1;
        if (i3 != 0) {
          a(true);
        }
        return;
      }
      i5 = i3;
      i3 = i2;
      i2 = i1;
      i1 = i5;
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i3 = getChildCount();
    int i1 = 0;
    int i2 = 0;
    View localView;
    Object localObject;
    if (i2 < i3)
    {
      localView = getChildAt(i2);
      localObject = (v)localView.getLayoutParams();
      if (((v)localObject).h()) {}
    }
    for (;;)
    {
      i2 += 1;
      break;
      localObject = ((v)localObject).b();
      if (localObject != null)
      {
        ((CoordinatorLayout.Behavior)localObject).a(this, localView, paramView, paramInt1, paramInt2, paramInt3, paramInt4);
        i1 = 1;
        continue;
        if (i1 != 0) {
          a(true);
        }
        return;
      }
    }
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    z.a(paramView1, paramView2, paramInt);
    r = paramView1;
    s = paramView2;
    int i2 = getChildCount();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = getChildAt(i1);
      Object localObject = (v)localView.getLayoutParams();
      if (!((v)localObject).h()) {}
      for (;;)
      {
        i1 += 1;
        break;
        localObject = ((v)localObject).b();
        if (localObject != null) {
          ((CoordinatorLayout.Behavior)localObject).b(this, localView, paramView1, paramView2, paramInt);
        }
      }
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof CoordinatorLayout.SavedState)) {
      super.onRestoreInstanceState(paramParcelable);
    }
    for (;;)
    {
      return;
      paramParcelable = (CoordinatorLayout.SavedState)paramParcelable;
      super.onRestoreInstanceState(paramParcelable.getSuperState());
      paramParcelable = a;
      int i2 = getChildCount();
      int i1 = 0;
      while (i1 < i2)
      {
        View localView = getChildAt(i1);
        int i3 = localView.getId();
        CoordinatorLayout.Behavior localBehavior = a(localView).b();
        if ((i3 != -1) && (localBehavior != null))
        {
          Parcelable localParcelable = (Parcelable)paramParcelable.get(i3);
          if (localParcelable != null) {
            localBehavior.a(this, localView, localParcelable);
          }
        }
        i1 += 1;
      }
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    CoordinatorLayout.SavedState localSavedState = new CoordinatorLayout.SavedState(super.onSaveInstanceState());
    SparseArray localSparseArray = new SparseArray();
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = getChildAt(i1);
      int i3 = ((View)localObject).getId();
      CoordinatorLayout.Behavior localBehavior = ((v)((View)localObject).getLayoutParams()).b();
      if ((i3 != -1) && (localBehavior != null))
      {
        localObject = localBehavior.b(this, (View)localObject);
        if (localObject != null) {
          localSparseArray.append(i3, localObject);
        }
      }
      i1 += 1;
    }
    a = localSparseArray;
    return localSavedState;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    int i2 = getChildCount();
    int i1 = 0;
    boolean bool1 = false;
    if (i1 < i2)
    {
      View localView = getChildAt(i1);
      v localv = (v)localView.getLayoutParams();
      CoordinatorLayout.Behavior localBehavior = localv.b();
      if (localBehavior != null)
      {
        boolean bool2 = localBehavior.a(this, localView, paramView1, paramView2, paramInt);
        bool1 |= bool2;
        localv.a(bool2);
      }
      for (;;)
      {
        i1 += 1;
        break;
        localv.a(false);
      }
    }
    return bool1;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    z.a(paramView);
    int i2 = getChildCount();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = getChildAt(i1);
      v localv = (v)localView.getLayoutParams();
      if (!localv.h()) {}
      for (;;)
      {
        i1 += 1;
        break;
        CoordinatorLayout.Behavior localBehavior = localv.b();
        if (localBehavior != null) {
          localBehavior.a(this, localView, paramView);
        }
        localv.g();
        localv.j();
      }
    }
    r = null;
    s = null;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    Object localObject = null;
    int i1 = bi.a(paramMotionEvent);
    boolean bool2;
    if (q == null)
    {
      bool2 = a(paramMotionEvent, 1);
      if (!bool2) {}
    }
    for (;;)
    {
      CoordinatorLayout.Behavior localBehavior = ((v)q.getLayoutParams()).b();
      boolean bool1;
      if (localBehavior != null) {
        bool1 = localBehavior.b(this, q, paramMotionEvent);
      }
      for (;;)
      {
        boolean bool3;
        if (q == null)
        {
          bool3 = bool1 | super.onTouchEvent(paramMotionEvent);
          paramMotionEvent = (MotionEvent)localObject;
        }
        do
        {
          if (((bool3) || (i1 != 0)) || (paramMotionEvent != null)) {
            paramMotionEvent.recycle();
          }
          if ((i1 == 1) || (i1 == 3)) {
            e();
          }
          return bool3;
          paramMotionEvent = (MotionEvent)localObject;
          bool3 = bool1;
        } while (!bool2);
        long l1;
        if (0 == 0) {
          l1 = SystemClock.uptimeMillis();
        }
        for (paramMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);; paramMotionEvent = null)
        {
          super.onTouchEvent(paramMotionEvent);
          bool3 = bool1;
          break;
        }
        bool1 = false;
        continue;
        bool1 = false;
      }
      bool2 = false;
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    if (paramBoolean) {
      e();
    }
  }
  
  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener)
  {
    y = paramOnHierarchyChangeListener;
  }
  
  public void setStatusBarBackground(Drawable paramDrawable)
  {
    Drawable localDrawable = null;
    if (x != paramDrawable)
    {
      if (x != null) {
        x.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable = paramDrawable.mutate();
      }
      x = localDrawable;
      if (x != null)
      {
        if (x.isStateful()) {
          x.setState(getDrawableState());
        }
        android.support.v4.b.a.a.b(x, cn.h(this));
        paramDrawable = x;
        if (getVisibility() != 0) {
          break label113;
        }
      }
    }
    label113:
    for (boolean bool = true;; bool = false)
    {
      paramDrawable.setVisible(bool, false);
      x.setCallback(this);
      cn.d(this);
      return;
    }
  }
  
  public void setStatusBarBackgroundColor(int paramInt)
  {
    setStatusBarBackground(new ColorDrawable(paramInt));
  }
  
  public void setStatusBarBackgroundResource(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = android.support.v4.content.a.a(getContext(), paramInt);; localDrawable = null)
    {
      setStatusBarBackground(localDrawable);
      return;
    }
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      if ((x != null) && (x.isVisible() != bool)) {
        x.setVisible(bool, false);
      }
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == x);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CoordinatorLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */