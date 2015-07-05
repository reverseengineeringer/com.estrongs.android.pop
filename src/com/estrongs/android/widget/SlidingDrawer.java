package com.estrongs.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.estrongs.android.pop.ah;

public class SlidingDrawer
  extends ViewGroup
{
  private boolean A;
  private boolean B;
  private boolean C;
  private final int D;
  private final int E;
  private final int F;
  private final int G;
  private final int H;
  private final int I;
  private final int a;
  private final int b;
  private View c;
  private View d;
  private final Rect e = new Rect();
  private final Rect f = new Rect();
  private boolean g;
  private boolean h;
  private VelocityTracker i;
  private boolean j;
  private int k;
  private boolean l;
  private int m;
  private int n;
  private int o;
  private int p;
  private bp q;
  private bo r;
  private bq s;
  private final Handler t = new br(this, null);
  private float u;
  private float v;
  private float w;
  private long x;
  private long y;
  private int z;
  
  public SlidingDrawer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SlidingDrawer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ah.d, paramInt, 0);
    if (paramContext.getInt(2, 1) == 1) {}
    for (boolean bool = true;; bool = false)
    {
      j = bool;
      m = ((int)paramContext.getDimension(3, 0.0F));
      n = ((int)paramContext.getDimension(4, 0.0F));
      B = paramContext.getBoolean(5, true);
      C = paramContext.getBoolean(6, true);
      k = paramContext.getInt(7, 0);
      paramInt = paramContext.getResourceId(0, 0);
      if (paramInt != 0) {
        break;
      }
      throw new IllegalArgumentException("The handle attribute is required and must refer to a valid child.");
    }
    int i1 = paramContext.getResourceId(1, 0);
    if (i1 == 0) {
      throw new IllegalArgumentException("The content attribute is required and must refer to a valid child.");
    }
    if (paramInt == i1) {
      throw new IllegalArgumentException("The content and handle attributes must refer to different children.");
    }
    a = paramInt;
    b = i1;
    float f1 = getResourcesgetDisplayMetricsdensity;
    D = ((int)(6.0F * f1 + 0.5F));
    E = ((int)(100.0F * f1 + 0.5F));
    F = ((int)(150.0F * f1 + 0.5F));
    G = ((int)(200.0F * f1 + 0.5F));
    H = ((int)(2000.0F * f1 + 0.5F));
    I = ((int)(f1 * 1000.0F + 0.5F));
    paramContext.recycle();
    setAlwaysDrawnWithCacheEnabled(false);
  }
  
  private void a(int paramInt)
  {
    a("animateClose", "" + paramInt);
    c(paramInt);
    if ((k == 2) || (k == 1)) {}
    for (float f1 = H;; f1 = -H)
    {
      a(paramInt, f1, true);
      return;
    }
  }
  
  private void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    a("performFling", "" + paramInt);
    a("velocity", paramFloat);
    w = paramInt;
    v = paramFloat;
    int i2;
    int i1;
    if (l) {
      if ((k == 1) || (k == 3)) {
        if ((!paramBoolean) && (paramFloat <= G))
        {
          i2 = n;
          if (j)
          {
            i1 = o;
            if ((paramInt <= i1 + i2) || (paramFloat <= -G)) {
              break label212;
            }
          }
        }
        else
        {
          u = H;
          if (paramFloat < 0.0F) {
            v = 0.0F;
          }
        }
      }
    }
    for (;;)
    {
      long l1 = SystemClock.uptimeMillis();
      x = l1;
      y = (l1 + 16L);
      A = true;
      t.removeMessages(1000);
      t.sendMessageAtTime(t.obtainMessage(1000), y);
      g();
      return;
      i1 = p;
      break;
      label212:
      u = (-H);
      if (paramFloat > 0.0F)
      {
        v = 0.0F;
        continue;
        i2 = getWidth();
        int i3 = n;
        if (j)
        {
          i1 = o;
          label261:
          a("delta", i2 - i3 - i1 * 2);
          if (!paramBoolean)
          {
            if (paramFloat > G) {
              break label384;
            }
            i2 = getWidth();
            i3 = n;
            if (!j) {
              break label375;
            }
          }
        }
        label375:
        for (i1 = o;; i1 = p)
        {
          if ((paramInt > i2 - i3 - i1 * 2) && (paramFloat >= -G)) {
            break label384;
          }
          u = (-H);
          if (paramFloat <= 0.0F) {
            break;
          }
          v = 0.0F;
          break;
          i1 = p;
          break label261;
        }
        label384:
        u = H;
        if (paramFloat < 0.0F)
        {
          v = 0.0F;
          continue;
          if ((k == 1) || (k == 3))
          {
            if (!paramBoolean)
            {
              if (paramFloat <= G) {
                if (!j) {
                  break label492;
                }
              }
              label492:
              for (i1 = getHeight();; i1 = getWidth())
              {
                if ((paramInt <= i1 / 2) || (paramFloat <= -G)) {
                  break label501;
                }
                u = H;
                if (paramFloat >= 0.0F) {
                  break;
                }
                v = 0.0F;
                break;
              }
            }
            label501:
            u = (-H);
            if (paramFloat > 0.0F) {
              v = 0.0F;
            }
          }
          else
          {
            if (!paramBoolean)
            {
              if (paramFloat >= -G) {
                if (!j) {
                  break label601;
                }
              }
              label601:
              for (i1 = getHeight();; i1 = getWidth())
              {
                if ((paramInt >= i1 / 2) || (paramFloat >= G)) {
                  break label610;
                }
                a("not hard enough!");
                u = (-H);
                if (paramFloat <= 0.0F) {
                  break;
                }
                v = 0.0F;
                break;
              }
            }
            label610:
            a("hard enough!");
            u = H;
            if (paramFloat < 0.0F) {
              v = 0.0F;
            }
          }
        }
      }
    }
  }
  
  private void a(String paramString) {}
  
  private void a(String paramString, double paramDouble) {}
  
  private void a(String paramString1, String paramString2) {}
  
  private void b(int paramInt)
  {
    a("animateOpen", "" + paramInt);
    c(paramInt);
    if ((k == 2) || (k == 1)) {}
    for (float f1 = -H;; f1 = H)
    {
      a("velocity", f1);
      a(paramInt, f1, true);
      return;
    }
  }
  
  private void c(int paramInt)
  {
    a("prepareTracking", "" + paramInt);
    g = true;
    i = VelocityTracker.obtain();
    int i1;
    if (!l)
    {
      i1 = 1;
      if (i1 == 0) {
        break label184;
      }
      u = H;
      v = G;
      i1 = m;
      if (!j) {
        break label152;
      }
      paramInt = getHeight() - o;
    }
    for (;;)
    {
      w = (paramInt + i1);
      d((int)w);
      A = true;
      t.removeMessages(1000);
      long l1 = SystemClock.uptimeMillis();
      x = l1;
      y = (l1 + 16L);
      A = true;
      return;
      i1 = 0;
      break;
      label152:
      if (k == 1) {
        paramInt = getWidth() - p;
      } else {
        paramInt = c.getLeft();
      }
    }
    label184:
    if (A)
    {
      A = false;
      t.removeMessages(1000);
    }
    d(paramInt);
  }
  
  private void d(int paramInt)
  {
    a("moveHandle", "" + paramInt);
    View localView = c;
    int i2 = getBottom();
    int i3 = getTop();
    int i4 = getLeft();
    int i5 = getRight();
    Rect localRect1;
    Rect localRect2;
    if (j)
    {
      if (k == 2)
      {
        if (paramInt == 55535)
        {
          localView.offsetTopAndBottom(n - localView.getTop());
          invalidate();
          return;
        }
        if (paramInt == 55534)
        {
          localView.offsetTopAndBottom(m + i2 - i3 - o - localView.getTop());
          invalidate();
          return;
        }
        i4 = localView.getTop();
        i1 = paramInt - i4;
        if (paramInt < n) {
          paramInt = n - i4;
        }
        for (;;)
        {
          localView.offsetTopAndBottom(paramInt);
          localRect1 = e;
          localRect2 = f;
          localView.getHitRect(localRect1);
          localRect2.set(localRect1);
          localRect2.union(left, top - paramInt, right, bottom - paramInt);
          localRect2.union(0, bottom - paramInt, getWidth(), bottom - paramInt + d.getHeight());
          invalidate(localRect2);
          return;
          paramInt = i1;
          if (i1 > m + i2 - i3 - o - i4) {
            paramInt = m + i2 - i3 - o - i4;
          }
        }
      }
      a("direction_down_to_up", "not finished");
      return;
    }
    if (k == 1)
    {
      if (paramInt == 55535)
      {
        localView.offsetLeftAndRight(n - localView.getLeft());
        invalidate();
        return;
      }
      if (paramInt == 55534)
      {
        localView.offsetLeftAndRight(m + i5 - i4 - p - localView.getLeft());
        invalidate();
        return;
      }
      i2 = localView.getLeft();
      i1 = paramInt - i2;
      if (paramInt < n) {
        paramInt = n - i2;
      }
      for (;;)
      {
        localView.offsetLeftAndRight(paramInt);
        localRect1 = e;
        localRect2 = f;
        localView.getHitRect(localRect1);
        localRect2.set(localRect1);
        localRect2.union(left - paramInt, top, right - paramInt, bottom);
        localRect2.union(right - paramInt, 0, right - paramInt + d.getWidth(), getHeight());
        invalidate(localRect2);
        return;
        paramInt = i1;
        if (i1 > m + i5 - i4 - p - i2) {
          paramInt = m + i5 - i4 - p - i2;
        }
      }
    }
    if (paramInt == 55535)
    {
      localView.offsetLeftAndRight(getWidth() - n - localView.getWidth());
      invalidate();
      return;
    }
    if (paramInt == 55534)
    {
      localView.offsetLeftAndRight(m - localView.getLeft());
      invalidate();
      return;
    }
    i2 = localView.getLeft();
    int i1 = paramInt - i2;
    if (paramInt < m) {
      paramInt = m - i2;
    }
    for (;;)
    {
      localView.offsetLeftAndRight(paramInt);
      localRect1 = e;
      localRect2 = f;
      localView.getHitRect(localRect1);
      localRect2.set(localRect1);
      localRect2.union(left - paramInt, top, right - paramInt, bottom);
      localRect2.union(left - d.getWidth() - paramInt, 0, left - paramInt, getHeight());
      invalidate(localRect2);
      return;
      paramInt = i1;
      if (i1 > getWidth() - m - p - i2) {
        paramInt = getWidth() - m - p - i2;
      }
    }
  }
  
  private void f()
  {
    a("prepareContent");
    if (A) {
      return;
    }
    int i2 = getBottom();
    int i3 = getTop();
    int i4 = getLeft();
    int i5 = getRight();
    View localView = d;
    if (localView.isLayoutRequested())
    {
      if (j)
      {
        i1 = o;
        int i6 = n;
        localView.measure(View.MeasureSpec.makeMeasureSpec(i5 - i4, 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - i3 - i1 - i6, 1073741824));
        localView.layout(0, n + i1, localView.getMeasuredWidth(), i1 + n + localView.getMeasuredHeight());
      }
    }
    else
    {
      localView.getViewTreeObserver().dispatchOnPreDraw();
      localView.buildDrawingCache();
      localView.setVisibility(8);
      return;
    }
    int i1 = c.getWidth();
    localView.measure(View.MeasureSpec.makeMeasureSpec(i5 - i4 - i1 - n, 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - i3, 1073741824));
    if (k == 1) {}
    for (;;)
    {
      i1 += n;
      localView.layout(i1, 0, localView.getMeasuredWidth() + i1, localView.getMeasuredHeight());
      a("content layout", "left:" + i1 + "right:" + i1 + localView.getMeasuredWidth());
      break;
      i1 = 0;
    }
  }
  
  private void g()
  {
    a("stopTracking");
    c.setPressed(false);
    g = false;
    if (s != null) {
      s.b();
    }
    if (i != null)
    {
      i.recycle();
      i = null;
    }
  }
  
  private void h()
  {
    a("doAnimation", w);
    if (A)
    {
      i();
      if ((k != 1) && (k != 2)) {
        break label157;
      }
      f1 = w;
      i2 = m;
      if (!j) {
        break label82;
      }
    }
    label82:
    for (int i1 = getHeight(); f1 >= i1 + i2 - 1; i1 = getWidth())
    {
      A = false;
      j();
      return;
    }
    if (w < n)
    {
      A = false;
      k();
      return;
    }
    d((int)w);
    y += 16L;
    t.sendMessageAtTime(t.obtainMessage(1000), y);
    return;
    label157:
    float f1 = w;
    int i2 = m;
    if (j) {}
    for (i1 = getHeight(); f1 >= i1 + i2 - 1; i1 = getWidth())
    {
      A = false;
      k();
      return;
    }
    if (w < n)
    {
      A = false;
      j();
      return;
    }
    d((int)w);
    y += 16L;
    t.sendMessageAtTime(t.obtainMessage(1000), y);
  }
  
  private void i()
  {
    a("incrementAnimation");
    long l1 = SystemClock.uptimeMillis();
    float f1 = (float)(l1 - x) / 1000.0F;
    float f2 = w;
    float f3 = v;
    float f4 = u;
    a("mAnimatedVelocity", v);
    a("mAnimatedAcceleration", u);
    w = (f2 + f3 * f1 + 0.5F * f4 * f1 * f1);
    v = (f1 * f4 + f3);
    x = l1;
  }
  
  private void j()
  {
    a("closeDrawer");
    d(55534);
    d.setVisibility(8);
    d.destroyDrawingCache();
    if (!l) {}
    do
    {
      return;
      l = false;
    } while (r == null);
    r.a();
  }
  
  private void k()
  {
    a("openDrawer");
    d(55535);
    d.setVisibility(0);
    if (l) {}
    do
    {
      return;
      l = true;
    } while (q == null);
    q.a();
  }
  
  public void a()
  {
    if (!l) {
      k();
    }
    for (;;)
    {
      invalidate();
      requestLayout();
      return;
      j();
    }
  }
  
  public void b()
  {
    if (!l)
    {
      d();
      return;
    }
    c();
  }
  
  public void c()
  {
    a("animateClose");
    f();
    bq localbq = s;
    if (localbq != null) {
      localbq.a();
    }
    int i1;
    if (j) {
      if (k == 2) {
        i1 = c.getTop();
      }
    }
    for (;;)
    {
      a(i1);
      if (localbq != null) {
        localbq.b();
      }
      return;
      i1 = c.getBottom();
      continue;
      if (k == 1) {
        i1 = c.getLeft();
      } else {
        i1 = getRight();
      }
    }
  }
  
  public void d()
  {
    a("animateOpen");
    f();
    bq localbq = s;
    if (localbq != null) {
      localbq.a();
    }
    if (j) {}
    for (int i1 = c.getTop();; i1 = c.getLeft())
    {
      b(i1);
      if (localbq != null) {
        localbq.b();
      }
      return;
    }
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    long l1 = getDrawingTime();
    View localView = c;
    boolean bool = j;
    drawChild(paramCanvas, localView, l1);
    if ((g) || (A))
    {
      localBitmap = d.getDrawingCache();
      if (localBitmap != null) {
        if (bool) {
          if (k == 2)
          {
            f1 = m;
            paramCanvas.drawBitmap(localBitmap, 0.0F, f1, null);
          }
        }
      }
    }
    label248:
    label263:
    while (!l)
    {
      Bitmap localBitmap;
      for (;;)
      {
        return;
        f1 = localView.getTop();
      }
      if (k == 1) {}
      for (float f1 = localView.getRight();; f1 = c.getLeft() - d.getMeasuredWidth())
      {
        paramCanvas.drawBitmap(localBitmap, f1, 0.0F, null);
        return;
      }
      paramCanvas.save();
      float f2;
      if (bool)
      {
        f1 = 0.0F;
        if (!bool) {
          break label263;
        }
        if (k != 2) {
          break label248;
        }
        f2 = localView.getTop() - n;
      }
      for (;;)
      {
        paramCanvas.translate(f1, f2);
        drawChild(paramCanvas, d, l1);
        paramCanvas.restore();
        return;
        if (k == 1)
        {
          f1 = localView.getLeft() - n;
          break;
        }
        f1 = c.getLeft() - d.getMeasuredWidth() - n;
        break;
        f2 = localView.getBottom() - n;
        continue;
        f2 = 0.0F;
      }
    }
    drawChild(paramCanvas, d, l1);
  }
  
  public View e()
  {
    return d;
  }
  
  protected void onFinishInflate()
  {
    c = findViewById(a);
    if (c == null) {
      throw new IllegalArgumentException("The handle attribute is must refer to an existing child.");
    }
    c.setOnClickListener(new bn(this, null));
    d = findViewById(b);
    d.setOnClickListener(new bm(this));
    if (d == null) {
      throw new IllegalArgumentException("The content attribute is must refer to an existing child.");
    }
    d.setVisibility(8);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (h) {}
    int i1;
    float f1;
    float f2;
    Rect localRect;
    View localView;
    do
    {
      return false;
      i1 = paramMotionEvent.getAction();
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      localRect = e;
      localView = c;
      localView.getHitRect(localRect);
    } while ((!g) && (!localRect.contains((int)f1, (int)f2)));
    if (i1 == 0)
    {
      g = true;
      localView.setPressed(true);
      f();
      if (s != null) {
        s.a();
      }
      if (!j) {
        break label140;
      }
      i1 = c.getTop();
      z = ((int)f2 - i1);
      c(i1);
    }
    for (;;)
    {
      i.addMovement(paramMotionEvent);
      return true;
      label140:
      i1 = c.getLeft();
      z = ((int)f1 - i1);
      c(i1);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (g) {
      return;
    }
    paramInt1 = paramInt3 - paramInt1;
    paramInt3 = paramInt4 - paramInt2;
    View localView1 = c;
    paramInt4 = localView1.getMeasuredWidth();
    int i1 = localView1.getMeasuredHeight();
    View localView2 = d;
    if (j)
    {
      paramInt2 = (paramInt1 - paramInt4) / 2;
      if (l) {}
      for (paramInt1 = n;; paramInt1 = paramInt3 - i1 + m)
      {
        localView2.layout(0, n + i1, localView2.getMeasuredWidth(), n + i1 + localView2.getMeasuredHeight());
        a("expanded", "" + l);
        localView1.layout(paramInt2, paramInt1, paramInt2 + paramInt4, paramInt1 + i1);
        o = localView1.getHeight();
        p = localView1.getWidth();
        return;
      }
    }
    paramInt2 = (paramInt3 - i1) / 2;
    if (k == 1)
    {
      if (l) {}
      for (paramInt1 = n;; paramInt1 = paramInt1 - paramInt4 + m)
      {
        localView2.layout(n + paramInt4, 0, n + paramInt4 + localView2.getMeasuredWidth(), localView2.getMeasuredHeight());
        paramInt3 = paramInt1;
        paramInt1 = paramInt2;
        paramInt2 = paramInt3;
        break;
      }
    }
    a("direction", "left_to_right");
    if (l) {}
    for (paramInt1 = paramInt1 - paramInt4 + m;; paramInt1 = m)
    {
      localView2.layout(m, 0, m + localView2.getMeasuredWidth(), localView2.getMeasuredHeight());
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = paramInt3;
      break;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i2 = View.MeasureSpec.getSize(paramInt2);
    View localView = c;
    measureChild(localView, paramInt1, paramInt2);
    if (j)
    {
      paramInt1 = localView.getMeasuredHeight();
      paramInt2 = n;
      d.measure(View.MeasureSpec.makeMeasureSpec(i1, 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - paramInt1 - paramInt2, 1073741824));
    }
    for (;;)
    {
      setMeasuredDimension(i1, i2);
      return;
      paramInt1 = localView.getMeasuredWidth();
      paramInt2 = n;
      d.measure(View.MeasureSpec.makeMeasureSpec(i1 - paramInt1 - paramInt2, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (h) {
      return true;
    }
    int i3 = getBottom();
    int i4 = getTop();
    int i5 = getLeft();
    int i6 = getRight();
    if (g) {
      i.addMovement(paramMotionEvent);
    }
    float f1;
    float f2;
    boolean bool;
    int i1;
    label241:
    float f5;
    float f3;
    float f4;
    int i2;
    switch (paramMotionEvent.getAction())
    {
    default: 
      a("content layout", "left:" + e().getLeft() + "right:" + e().getRight());
      if ((g) || (A) || (super.onTouchEvent(paramMotionEvent))) {
        return true;
      }
      break;
    case 2: 
      if (j) {}
      for (f1 = paramMotionEvent.getY();; f1 = paramMotionEvent.getX())
      {
        d((int)f1 - z);
        break;
      }
    case 1: 
    case 3: 
      a("------------ACTION_CANCEL");
      VelocityTracker localVelocityTracker = i;
      localVelocityTracker.computeCurrentVelocity(I);
      f1 = localVelocityTracker.getYVelocity();
      f2 = localVelocityTracker.getXVelocity();
      bool = j;
      if (bool) {
        if (f1 < 0.0F)
        {
          i1 = 1;
          f5 = f2;
          if (f2 < 0.0F) {
            f5 = -f2;
          }
          f3 = f5;
          f4 = f1;
          i2 = i1;
          if (f5 <= F) {
            break label791;
          }
          f3 = F;
          f2 = f1;
          f1 = f3;
        }
      }
      break;
    }
    for (;;)
    {
      f1 = (float)Math.hypot(f1, f2);
      if (i1 != 0) {
        f1 = -f1;
      }
      for (;;)
      {
        i1 = c.getTop();
        i2 = c.getLeft();
        if (Math.abs(f1) < E)
        {
          a("left", i2);
          a("mTapThreshold + mTopOffset", D + n);
          a("mMaximumTapVelocity", E);
          if (bool) {
            if (((!l) || (i1 >= D + n)) && ((l) || (i1 <= i3 + m - i4 - o - D))) {
              break label605;
            }
          }
          for (;;)
          {
            label433:
            if (B)
            {
              playSoundEffect(0);
              if (l)
              {
                a("case1++++++++++");
                if (bool)
                {
                  label464:
                  a(i1);
                  break;
                  i1 = 0;
                  break label241;
                  if (f2 < 0.0F) {}
                  for (i1 = 1;; i1 = 0)
                  {
                    f5 = f1;
                    if (f1 < 0.0F) {
                      f5 = -f1;
                    }
                    f3 = f2;
                    f4 = f5;
                    i2 = i1;
                    if (f5 <= F) {
                      break label791;
                    }
                    f3 = F;
                    f1 = f2;
                    f2 = f3;
                    break;
                  }
                  if (k == 1)
                  {
                    if (((l) && (i2 < D + n)) || ((!l) && (i2 > m + i6 - i5 - p - D))) {
                      continue;
                    }
                    label605:
                    a("case4++++++++++");
                    if (!bool) {
                      break label749;
                    }
                  }
                }
              }
            }
          }
          for (;;)
          {
            a(i1, f1, false);
            break;
            if ((!l) && (i2 < D + m)) {
              break label433;
            }
            if ((!l) || (i2 <= n + i6 - i5 - p - D)) {
              break label605;
            }
            break label433;
            i1 = i2;
            break label464;
            a("case2++++++++++");
            if (bool) {}
            for (;;)
            {
              b(i1);
              break;
              i1 = i2;
            }
            a("case3++++++++++");
            if (bool) {}
            for (;;)
            {
              a(i1, f1, false);
              break;
              i1 = i2;
            }
            label749:
            i1 = i2;
          }
        }
        a("case5++++++++++");
        if (bool) {}
        for (;;)
        {
          a(i1, f1, false);
          break;
          i1 = i2;
        }
        return false;
      }
      label791:
      f2 = f4;
      f1 = f3;
      i1 = i2;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.SlidingDrawer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */