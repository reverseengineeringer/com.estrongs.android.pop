package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.view.at;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;

public class SlidingPaneLayout
  extends ViewGroup
{
  static final w a = new x();
  private int b = -858993460;
  private int c;
  private Drawable d;
  private final int e;
  private boolean f;
  private View g;
  private float h;
  private float i;
  private int j;
  private boolean k;
  private int l;
  private float m;
  private float n;
  private u o;
  private final aa p;
  private boolean q;
  private boolean r = true;
  private final Rect s = new Rect();
  private final ArrayList<s> t = new ArrayList();
  
  static
  {
    int i1 = Build.VERSION.SDK_INT;
    if (i1 >= 17)
    {
      a = new z();
      return;
    }
    if (i1 >= 16)
    {
      a = new y();
      return;
    }
  }
  
  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    float f1 = getResourcesgetDisplayMetricsdensity;
    e = ((int)(32.0F * f1 + 0.5F));
    ViewConfiguration.get(paramContext);
    setWillNotDraw(false);
    at.a(this, new r(this));
    at.b(this, 1);
    p = aa.a(this, 0.5F, new t(this, null));
    p.a(1);
    p.a(f1 * 400.0F);
  }
  
  private void a(float paramFloat)
  {
    int i2 = 0;
    Object localObject = (SlidingPaneLayout.LayoutParams)g.getLayoutParams();
    int i1;
    if ((c) && (leftMargin <= 0))
    {
      i1 = 1;
      int i3 = getChildCount();
      label38:
      if (i2 >= i3) {
        return;
      }
      localObject = getChildAt(i2);
      if (localObject != g) {
        break label72;
      }
    }
    for (;;)
    {
      i2 += 1;
      break label38;
      i1 = 0;
      break;
      label72:
      int i4 = (int)((1.0F - i) * l);
      i = paramFloat;
      ((View)localObject).offsetLeftAndRight(i4 - (int)((1.0F - paramFloat) * l));
      if (i1 != 0) {
        a((View)localObject, 1.0F - i, c);
      }
    }
  }
  
  private void a(int paramInt)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)g.getLayoutParams();
    h = ((paramInt - (getPaddingLeft() + leftMargin)) / j);
    if (l != 0) {
      a(h);
    }
    if (c) {
      a(g, h, b);
    }
    a(g);
  }
  
  private void a(View paramView, float paramFloat, int paramInt)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    if ((paramFloat > 0.0F) && (paramInt != 0))
    {
      i1 = (int)(((0xFF000000 & paramInt) >>> 24) * paramFloat);
      if (d == null) {
        d = new Paint();
      }
      d.setColorFilter(new PorterDuffColorFilter(i1 << 24 | 0xFFFFFF & paramInt, PorterDuff.Mode.SRC_OVER));
      if (at.d(paramView) != 2) {
        at.a(paramView, 2, d);
      }
      g(paramView);
    }
    while (at.d(paramView) == 0)
    {
      int i1;
      return;
    }
    if (d != null) {
      d.setColorFilter(null);
    }
    paramView = new s(this, paramView);
    t.add(paramView);
    at.a(this, paramView);
  }
  
  private boolean a(View paramView, int paramInt)
  {
    boolean bool = false;
    if ((r) || (a(0.0F, paramInt)))
    {
      q = false;
      bool = true;
    }
    return bool;
  }
  
  private boolean b(View paramView, int paramInt)
  {
    if ((r) || (a(1.0F, paramInt)))
    {
      q = true;
      return true;
    }
    return false;
  }
  
  private static boolean f(View paramView)
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
  
  private void g(View paramView)
  {
    a.a(this, paramView);
  }
  
  void a()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 4) {
        localView.setVisibility(0);
      }
      i1 += 1;
    }
  }
  
  void a(View paramView)
  {
    if (o != null) {
      o.a(paramView, h);
    }
  }
  
  boolean a(float paramFloat, int paramInt)
  {
    if (!f) {
      return false;
    }
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)g.getLayoutParams();
    paramInt = getPaddingLeft();
    paramInt = (int)(leftMargin + paramInt + j * paramFloat);
    if (p.a(g, paramInt, g.getTop()))
    {
      a();
      at.b(this);
      return true;
    }
    return false;
  }
  
  void b(View paramView)
  {
    if (o != null) {
      o.a(paramView);
    }
    sendAccessibilityEvent(32);
  }
  
  public boolean b()
  {
    return b(g, 0);
  }
  
  void c(View paramView)
  {
    if (o != null) {
      o.b(paramView);
    }
    sendAccessibilityEvent(32);
  }
  
  public boolean c()
  {
    return a(g, 0);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof SlidingPaneLayout.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if (p.a(true))
    {
      if (!f) {
        p.f();
      }
    }
    else {
      return;
    }
    at.b(this);
  }
  
  void d(View paramView)
  {
    int i7 = getPaddingLeft();
    int i8 = getWidth();
    int i9 = getPaddingRight();
    int i10 = getPaddingTop();
    int i11 = getHeight();
    int i12 = getPaddingBottom();
    int i4;
    int i3;
    int i2;
    int i1;
    if ((paramView != null) && (f(paramView)))
    {
      i4 = paramView.getLeft();
      i3 = paramView.getRight();
      i2 = paramView.getTop();
      i1 = paramView.getBottom();
    }
    int i5;
    View localView;
    for (;;)
    {
      int i13 = getChildCount();
      i5 = 0;
      if (i5 < i13)
      {
        localView = getChildAt(i5);
        if (localView != paramView) {
          break;
        }
      }
      return;
      i1 = 0;
      i2 = 0;
      i3 = 0;
      i4 = 0;
    }
    int i6 = Math.max(i7, localView.getLeft());
    int i14 = Math.max(i10, localView.getTop());
    int i15 = Math.min(i8 - i9, localView.getRight());
    int i16 = Math.min(i11 - i12, localView.getBottom());
    if ((i6 >= i4) && (i14 >= i2) && (i15 <= i3) && (i16 <= i1)) {}
    for (i6 = 4;; i6 = 0)
    {
      localView.setVisibility(i6);
      i5 += 1;
      break;
    }
  }
  
  public boolean d()
  {
    return (!f) || (h == 1.0F);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (getChildCount() > 1) {}
    for (View localView = getChildAt(1); (localView == null) || (d == null); localView = null) {
      return;
    }
    int i1 = d.getIntrinsicWidth();
    int i2 = localView.getLeft();
    int i3 = localView.getTop();
    int i4 = localView.getBottom();
    d.setBounds(i2 - i1, i3, i2, i4);
    d.draw(paramCanvas);
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    int i1 = paramCanvas.save(2);
    if ((f) && (!b) && (g != null))
    {
      paramCanvas.getClipBounds(s);
      s.right = Math.min(s.right, g.getLeft());
      paramCanvas.clipRect(s);
    }
    boolean bool;
    if (Build.VERSION.SDK_INT >= 11) {
      bool = super.drawChild(paramCanvas, paramView, paramLong);
    }
    for (;;)
    {
      paramCanvas.restoreToCount(i1);
      return bool;
      if ((c) && (h > 0.0F))
      {
        if (!paramView.isDrawingCacheEnabled()) {
          paramView.setDrawingCacheEnabled(true);
        }
        Bitmap localBitmap = paramView.getDrawingCache();
        if (localBitmap != null)
        {
          paramCanvas.drawBitmap(localBitmap, paramView.getLeft(), paramView.getTop(), d);
          bool = false;
        }
        else
        {
          Log.e("SlidingPaneLayout", "drawChild: child view " + paramView + " returned null drawing cache");
          bool = super.drawChild(paramCanvas, paramView, paramLong);
        }
      }
      else
      {
        if (paramView.isDrawingCacheEnabled()) {
          paramView.setDrawingCacheEnabled(false);
        }
        bool = super.drawChild(paramCanvas, paramView, paramLong);
      }
    }
  }
  
  public boolean e()
  {
    return f;
  }
  
  boolean e(View paramView)
  {
    if (paramView == null) {
      return false;
    }
    paramView = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    if ((f) && (c) && (h > 0.0F)) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new SlidingPaneLayout.LayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new SlidingPaneLayout.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new SlidingPaneLayout.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new SlidingPaneLayout.LayoutParams(paramLayoutParams);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    r = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    r = true;
    int i2 = t.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((s)t.get(i1)).run();
      i1 += 1;
    }
    t.clear();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    int i1 = android.support.v4.view.z.a(paramMotionEvent);
    if ((!f) && (i1 == 0) && (getChildCount() > 1))
    {
      View localView = getChildAt(1);
      if (localView != null) {
        if (p.b(localView, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
          break label108;
        }
      }
    }
    label108:
    for (boolean bool1 = true;; bool1 = false)
    {
      q = bool1;
      if ((f) && ((!k) || (i1 == 0))) {
        break;
      }
      p.e();
      bool1 = super.onInterceptTouchEvent(paramMotionEvent);
      return bool1;
    }
    if ((i1 == 3) || (i1 == 1))
    {
      p.e();
      return false;
    }
    switch (i1)
    {
    }
    label164:
    float f1;
    float f2;
    do
    {
      for (i1 = 0;; i1 = 1)
      {
        if (!p.a(paramMotionEvent))
        {
          bool1 = bool2;
          if (i1 == 0) {
            break;
          }
        }
        return true;
        k = false;
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        m = f1;
        n = f2;
        if ((!p.b(g, (int)f1, (int)f2)) || (!e(g))) {
          break label164;
        }
      }
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      f2 = Math.abs(f2 - m);
      f1 = Math.abs(f1 - n);
    } while ((f2 <= p.d()) || (f1 <= f2));
    p.e();
    k = true;
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i2 = paramInt3 - paramInt1;
    paramInt1 = getPaddingLeft();
    int i3 = getPaddingRight();
    int i4 = getPaddingTop();
    int i1 = getChildCount();
    if (r) {
      if ((!f) || (!q)) {
        break label98;
      }
    }
    View localView;
    label98:
    for (float f1 = 1.0F;; f1 = 0.0F)
    {
      h = f1;
      paramInt4 = 0;
      paramInt2 = paramInt1;
      for (;;)
      {
        if (paramInt4 >= i1) {
          break label315;
        }
        localView = getChildAt(paramInt4);
        if (localView.getVisibility() != 8) {
          break;
        }
        paramInt4 += 1;
      }
    }
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)localView.getLayoutParams();
    int i5 = localView.getMeasuredWidth();
    if (b)
    {
      paramInt3 = leftMargin;
      int i6 = rightMargin;
      paramInt3 = Math.min(paramInt1, i2 - i3 - e) - paramInt2 - (paramInt3 + i6);
      j = paramInt3;
      if (leftMargin + paramInt2 + paramInt3 + i5 / 2 > i2 - i3)
      {
        paramBoolean = true;
        label198:
        c = paramBoolean;
        paramInt3 = (int)(paramInt3 * h);
        paramInt2 = leftMargin + paramInt3 + paramInt2;
        paramInt3 = 0;
      }
    }
    for (;;)
    {
      paramInt3 = paramInt2 - paramInt3;
      localView.layout(paramInt3, i4, paramInt3 + i5, localView.getMeasuredHeight() + i4);
      paramInt1 += localView.getWidth();
      break;
      paramBoolean = false;
      break label198;
      if ((f) && (l != 0))
      {
        paramInt3 = (int)((1.0F - h) * l);
        paramInt2 = paramInt1;
      }
      else
      {
        paramInt3 = 0;
        paramInt2 = paramInt1;
      }
    }
    label315:
    if (r)
    {
      if (!f) {
        break label390;
      }
      if (l != 0) {
        a(h);
      }
      if (g.getLayoutParams()).c) {
        a(g, h, b);
      }
    }
    for (;;)
    {
      d(g);
      r = false;
      return;
      label390:
      paramInt1 = 0;
      while (paramInt1 < i1)
      {
        a(getChildAt(paramInt1), 0.0F, b);
        paramInt1 += 1;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i5 = View.MeasureSpec.getSize(paramInt1);
    int i7 = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if (i1 != 1073741824) {
      throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
    }
    if (i7 == 0) {
      throw new IllegalStateException("Height must not be UNSPECIFIED");
    }
    int i2;
    boolean bool1;
    int i6;
    int i4;
    float f1;
    label141:
    View localView;
    SlidingPaneLayout.LayoutParams localLayoutParams;
    switch (i7)
    {
    default: 
      paramInt1 = 0;
      i2 = -1;
      bool1 = false;
      paramInt2 = i5 - getPaddingLeft() - getPaddingRight();
      i6 = getChildCount();
      if (i6 > 2) {
        Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
      }
      g = null;
      i4 = 0;
      f1 = 0.0F;
      if (i4 >= i6) {
        break label536;
      }
      localView = getChildAt(i4);
      localLayoutParams = (SlidingPaneLayout.LayoutParams)localView.getLayoutParams();
      if (localView.getVisibility() == 8)
      {
        c = false;
        i1 = paramInt2;
        paramInt2 = paramInt1;
        paramInt1 = i1;
      }
      break;
    }
    float f2;
    for (;;)
    {
      i4 += 1;
      i1 = paramInt2;
      paramInt2 = paramInt1;
      paramInt1 = i1;
      break label141;
      paramInt1 = paramInt2 - getPaddingTop() - getPaddingBottom();
      i2 = paramInt1;
      break;
      i1 = getPaddingTop();
      i2 = getPaddingBottom();
      paramInt1 = 0;
      i2 = paramInt2 - i1 - i2;
      break;
      f2 = f1;
      if (a <= 0.0F) {
        break label294;
      }
      f1 += a;
      f2 = f1;
      if (width != 0) {
        break label294;
      }
      i1 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = i1;
    }
    label294:
    i1 = leftMargin + rightMargin;
    label330:
    int i3;
    label350:
    int i8;
    if (width == -2)
    {
      i1 = View.MeasureSpec.makeMeasureSpec(i5 - i1, Integer.MIN_VALUE);
      if (height != -2) {
        break label492;
      }
      i3 = View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE);
      localView.measure(i1, i3);
      i3 = localView.getMeasuredWidth();
      i8 = localView.getMeasuredHeight();
      i1 = paramInt1;
      if (i7 == Integer.MIN_VALUE)
      {
        i1 = paramInt1;
        if (i8 > paramInt1) {
          i1 = Math.min(i8, i2);
        }
      }
      paramInt1 = paramInt2 - i3;
      if (paramInt1 >= 0) {
        break label530;
      }
    }
    label492:
    label530:
    for (boolean bool2 = true;; bool2 = false)
    {
      b = bool2;
      if (b) {
        g = localView;
      }
      paramInt2 = i1;
      bool1 = bool2 | bool1;
      f1 = f2;
      break;
      if (width == -1)
      {
        i1 = View.MeasureSpec.makeMeasureSpec(i5 - i1, 1073741824);
        break label330;
      }
      i1 = View.MeasureSpec.makeMeasureSpec(width, 1073741824);
      break label330;
      if (height == -1)
      {
        i3 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        break label350;
      }
      i3 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
      break label350;
    }
    label536:
    if ((bool1) || (f1 > 0.0F))
    {
      i7 = i5 - e;
      i3 = 0;
      if (i3 < i6)
      {
        localView = getChildAt(i3);
        if (localView.getVisibility() == 8) {}
        for (;;)
        {
          i3 += 1;
          break;
          localLayoutParams = (SlidingPaneLayout.LayoutParams)localView.getLayoutParams();
          if ((width == 0) && (a > 0.0F))
          {
            i1 = 1;
            label624:
            if (i1 == 0) {
              break label720;
            }
            i4 = 0;
            label632:
            if ((!bool1) || (localView == g)) {
              break label784;
            }
            if ((width >= 0) || ((i4 <= i7) && (a <= 0.0F))) {
              continue;
            }
            if (i1 == 0) {
              break label768;
            }
            if (height != -2) {
              break label730;
            }
            i1 = View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE);
          }
          for (;;)
          {
            localView.measure(View.MeasureSpec.makeMeasureSpec(i7, 1073741824), i1);
            break;
            i1 = 0;
            break label624;
            label720:
            i4 = localView.getMeasuredWidth();
            break label632;
            label730:
            if (height == -1)
            {
              i1 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
            }
            else
            {
              i1 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
              continue;
              label768:
              i1 = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
            }
          }
          label784:
          if (a > 0.0F)
          {
            if (width == 0) {
              if (height == -2) {
                i1 = View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE);
              }
            }
            for (;;)
            {
              if (!bool1) {
                break label930;
              }
              i8 = leftMargin;
              i8 = i5 - (rightMargin + i8);
              int i9 = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
              if (i4 == i8) {
                break;
              }
              localView.measure(i9, i1);
              break;
              if (height == -1)
              {
                i1 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
              }
              else
              {
                i1 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
                continue;
                i1 = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
              }
            }
            label930:
            i8 = Math.max(0, paramInt2);
            localView.measure(View.MeasureSpec.makeMeasureSpec((int)(a * i8 / f1) + i4, 1073741824), i1);
          }
        }
      }
    }
    setMeasuredDimension(i5, paramInt1);
    f = bool1;
    if ((p.a() != 0) && (!bool1)) {
      p.f();
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SlidingPaneLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (a) {
      b();
    }
    for (;;)
    {
      q = a;
      return;
      c();
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SlidingPaneLayout.SavedState localSavedState = new SlidingPaneLayout.SavedState(super.onSaveInstanceState());
    if (e()) {}
    for (boolean bool = d();; bool = q)
    {
      a = bool;
      return localSavedState;
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      r = true;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1;
    if (!f) {
      bool1 = super.onTouchEvent(paramMotionEvent);
    }
    float f1;
    float f2;
    do
    {
      int i1;
      boolean bool2;
      float f3;
      float f4;
      do
      {
        do
        {
          return bool1;
          p.b(paramMotionEvent);
          i1 = paramMotionEvent.getAction();
          bool2 = true;
          switch (i1 & 0xFF)
          {
          default: 
            return true;
          case 0: 
            f1 = paramMotionEvent.getX();
            f2 = paramMotionEvent.getY();
            m = f1;
            n = f2;
            return true;
          }
          bool1 = bool2;
        } while (!e(g));
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        f3 = f1 - m;
        f4 = f2 - n;
        i1 = p.d();
        bool1 = bool2;
      } while (f3 * f3 + f4 * f4 >= i1 * i1);
      bool1 = bool2;
    } while (!p.b(g, (int)f1, (int)f2));
    a(g, 0);
    return true;
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    super.requestChildFocus(paramView1, paramView2);
    if ((!isInTouchMode()) && (!f)) {
      if (paramView1 != g) {
        break label36;
      }
    }
    label36:
    for (boolean bool = true;; bool = false)
    {
      q = bool;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */