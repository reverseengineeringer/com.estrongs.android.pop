package com.estrongs.android.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.widget.Scroller;
import android.widget.ViewAnimator;
import com.estrongs.android.pop.ac;

public class RealViewSwitcher
  extends ViewAnimator
{
  private int A = -1;
  private boolean B = false;
  private boolean C = false;
  private VelocityTracker a;
  private int b = -1;
  protected Scroller c;
  public int d;
  protected int e = 0;
  protected int f = -2;
  protected boolean g = true;
  protected bc h = null;
  float i = -1.0F;
  private int j = 0;
  private float k;
  private float l;
  private int m = -2;
  private boolean n = true;
  private int o = 0;
  private int p = 0;
  private int q = -1;
  private boolean r = true;
  private boolean s = true;
  private boolean t = true;
  private boolean u = false;
  private boolean v = false;
  private boolean w = true;
  private boolean x = false;
  private boolean y = false;
  private int z = -1;
  
  public RealViewSwitcher(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public RealViewSwitcher(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  @SuppressLint({"NewApi"})
  private void a()
  {
    c = new Scroller(getContext());
    if (ac.a() >= 11) {
      c.setFriction(0.6F);
    }
    d = ViewConfiguration.get(getContext()).getScaledTouchSlop();
  }
  
  private void b()
  {
    View localView = getChildAt(0);
    if (localView == null) {
      return;
    }
    localView.layout(localView.getWidth() + c(p - 1), localView.getTop(), localView.getWidth() * 2 + c(p - 1), localView.getBottom());
    v = true;
  }
  
  private int c(int paramInt)
  {
    int i1 = 0;
    if (paramInt < 0) {
      return 0;
    }
    if (paramInt >= p) {
      return (paramInt + 1) * o;
    }
    int i2 = o;
    if (g) {
      i1 = o;
    }
    return i1 + i2 * paramInt;
  }
  
  private void c()
  {
    View localView = getChildAt(0);
    if (localView == null) {
      return;
    }
    localView.layout(o, localView.getTop(), localView.getWidth() + o, localView.getBottom());
    v = false;
  }
  
  private int d(int paramInt)
  {
    return paramInt;
  }
  
  private void d()
  {
    View localView = getChildAt(p - 1);
    if (localView == null) {
      return;
    }
    localView.layout(0, localView.getTop(), localView.getWidth(), localView.getBottom());
    u = true;
  }
  
  private void e()
  {
    View localView = getChildAt(p - 1);
    if (localView == null) {
      return;
    }
    localView.layout(c(p - 1), localView.getTop(), localView.getWidth() + c(p - 1), localView.getBottom());
    u = false;
  }
  
  private void f()
  {
    p = getChildCount();
    if (p < 2) {
      g = false;
    }
    while (!r) {
      return;
    }
    g = true;
  }
  
  public void a(int paramInt)
  {
    a(paramInt, true);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    z = paramInt1;
    A = paramInt2;
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if ((super.getInAnimation() != null) || (super.getOutAnimation() != null)) {
      super.setDisplayedChild(paramInt);
    }
    paramInt = d(paramInt);
    if (paramInt == -1) {
      return;
    }
    if (paramBoolean) {
      m = paramInt;
    }
    e = paramInt;
    scrollTo(c(e), 0);
    invalidate();
  }
  
  public void a(bc parambc)
  {
    h = parambc;
  }
  
  public void addView(View paramView)
  {
    addView(paramView, -1);
  }
  
  public void addView(View paramView, int paramInt)
  {
    m = -2;
    w = true;
    paramView.setVisibility(0);
    super.addView(paramView, paramInt);
    f();
    requestLayout();
  }
  
  public void b(int paramInt)
  {
    if (!c.isFinished()) {
      return;
    }
    f = paramInt;
    int i1;
    if (f < 0) {
      i1 = p - 1;
    }
    for (;;)
    {
      if (h != null) {
        h.d(i1);
      }
      paramInt = c(paramInt) - getScrollX();
      i1 = Math.min(Math.abs(paramInt) * 1000 / o, 200);
      c.startScroll(getScrollX(), 0, paramInt, 0, i1);
      invalidate();
      return;
      if (f >= p) {
        i1 = 0;
      } else {
        i1 = paramInt;
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    x = paramBoolean;
  }
  
  public void c(boolean paramBoolean)
  {
    r = paramBoolean;
    g = paramBoolean;
  }
  
  public void computeScroll()
  {
    int i2 = 1;
    if (c.computeScrollOffset())
    {
      scrollTo(c.getCurrX(), c.getCurrY());
      postInvalidate();
    }
    while (f == -2) {
      return;
    }
    int i1 = -1;
    e = f;
    if (e < 0) {
      i1 = p - 1;
    }
    for (;;)
    {
      if (v) {
        c();
      }
      if (u) {
        e();
      }
      if (i2 != 0) {
        a(i1, false);
      }
      if (h != null)
      {
        h.b(e);
        if (m != e)
        {
          m = e;
          h.c(e);
        }
      }
      f = -2;
      y = false;
      return;
      if (e >= p) {
        i1 = 0;
      } else {
        i2 = 0;
      }
    }
  }
  
  public void d(boolean paramBoolean)
  {
    t = paramBoolean;
  }
  
  public void e(boolean paramBoolean)
  {
    s = paramBoolean;
  }
  
  public void f(boolean paramBoolean)
  {
    B = paramBoolean;
  }
  
  public void g()
  {
    int i1 = getWidth();
    int i2 = (getScrollX() + i1 / 2) / i1;
    i1 = i2;
    if (g) {
      i1 = i2 - 1;
    }
    b(i1);
  }
  
  public int h()
  {
    return e;
  }
  
  public int i()
  {
    return h();
  }
  
  public boolean j()
  {
    return B;
  }
  
  public boolean k()
  {
    return C;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    if (getChildCount() == 1) {}
    int i1;
    float f1;
    do
    {
      return false;
      i1 = paramMotionEvent.getAction();
      if (a == null)
      {
        a = VelocityTracker.obtain();
        a.clear();
      }
      a.addMovement(paramMotionEvent);
      f1 = paramMotionEvent.getX();
      if (i1 == 0) {
        i = f1;
      }
    } while ((i <= z) || (i >= getWidth() - A));
    switch (i1 & 0xFF)
    {
    default: 
      label132:
      if (j == 0) {
        break;
      }
    }
    for (;;)
    {
      return bool;
      int i2 = paramMotionEvent.findPointerIndex(b);
      if (i2 == -1) {
        break;
      }
      f1 = paramMotionEvent.getX(i2);
      i1 = (int)Math.abs(f1 - k);
      if (((j()) && (f1 > k)) || ((k()) && (f1 < k))) {
        break;
      }
      i2 = (int)Math.abs(paramMotionEvent.getY(i2) - l);
      if ((i1 > d) && (i1 >= i2)) {}
      for (i1 = 1;; i1 = 0)
      {
        if ((i1 == 0) || (paramMotionEvent.getPointerCount() != 1)) {
          break label297;
        }
        j = 1;
        if (h != null) {
          h.a(e);
        }
        y = true;
        break;
      }
      label297:
      if (getScrollX() % getWidth() == 0) {
        break label132;
      }
      g();
      break label132;
      if ((x) && (y)) {
        return true;
      }
      f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      k = f1;
      l = f2;
      b = paramMotionEvent.getPointerId(0);
      if (!c.isFinished())
      {
        c.abortAnimation();
        y = false;
      }
      j = 0;
      break label132;
      if ((x) && (y)) {
        return true;
      }
      j = 0;
      b = -1;
      if (a == null) {
        break label132;
      }
      a.recycle();
      a = null;
      break label132;
      bool = false;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    label20:
    View localView;
    if (g)
    {
      paramInt1 = o;
      paramInt3 = getChildCount();
      paramInt2 = 0;
      if (paramInt2 >= paramInt3) {
        return;
      }
      localView = getChildAt(paramInt2);
      if (localView != null) {
        break label50;
      }
    }
    for (;;)
    {
      paramInt2 += 1;
      break label20;
      paramInt1 = 0;
      break;
      label50:
      localView.setVisibility(0);
      paramInt4 = localView.getMeasuredWidth();
      localView.layout(paramInt1, 0, paramInt1 + paramInt4, localView.getMeasuredHeight());
      paramInt1 += paramInt4;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    try
    {
      int i1 = o;
      super.onMeasure(paramInt1, paramInt2);
      o = View.MeasureSpec.getSize(paramInt1);
      if ((getChildCount() < 2) || ((!w) && (p < 2))) {
        g = false;
      }
      if (w)
      {
        w = false;
        f();
      }
      if ((n) || (i1 != o))
      {
        scrollTo(c(e), 0);
        n = false;
      }
      return;
    }
    catch (NullPointerException localNullPointerException) {}
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    paramInt4 = 0;
    if ((paramInt1 != o * p) || (paramInt3 != 0))
    {
      paramInt2 = paramInt4;
      if (paramInt1 == o)
      {
        paramInt2 = paramInt4;
        if (paramInt3 != o * (p + 1)) {}
      }
    }
    else
    {
      paramInt2 = 1;
    }
    if ((h != null) && (paramInt2 == 0))
    {
      paramInt2 = c(e);
      paramInt3 = getWidth();
      if (paramInt3 != 0) {
        break label90;
      }
    }
    label90:
    float f1;
    do
    {
      return;
      f1 = (paramInt1 - paramInt2) / paramInt3;
    } while (Float.isNaN(f1));
    h.a(e, f1);
  }
  
  /* Error */
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_0
    //   4: getfield 255	com/estrongs/android/widget/RealViewSwitcher:a	Landroid/view/VelocityTracker;
    //   7: ifnonnull +10 -> 17
    //   10: aload_0
    //   11: invokestatic 261	android/view/VelocityTracker:obtain	()Landroid/view/VelocityTracker;
    //   14: putfield 255	com/estrongs/android/widget/RealViewSwitcher:a	Landroid/view/VelocityTracker;
    //   17: aload_0
    //   18: getfield 255	com/estrongs/android/widget/RealViewSwitcher:a	Landroid/view/VelocityTracker;
    //   21: aload_1
    //   22: invokevirtual 268	android/view/VelocityTracker:addMovement	(Landroid/view/MotionEvent;)V
    //   25: aload_1
    //   26: invokevirtual 253	android/view/MotionEvent:getAction	()I
    //   29: istore_3
    //   30: aload_1
    //   31: invokevirtual 272	android/view/MotionEvent:getX	()F
    //   34: fstore_2
    //   35: iload_3
    //   36: ifne +8 -> 44
    //   39: aload_0
    //   40: fload_2
    //   41: putfield 88	com/estrongs/android/widget/RealViewSwitcher:i	F
    //   44: aload_0
    //   45: getfield 88	com/estrongs/android/widget/RealViewSwitcher:i	F
    //   48: aload_0
    //   49: getfield 83	com/estrongs/android/widget/RealViewSwitcher:z	I
    //   52: i2f
    //   53: fcmpg
    //   54: ifgt +5 -> 59
    //   57: iconst_0
    //   58: ireturn
    //   59: aload_0
    //   60: getfield 88	com/estrongs/android/widget/RealViewSwitcher:i	F
    //   63: aload_0
    //   64: invokevirtual 243	com/estrongs/android/widget/RealViewSwitcher:getWidth	()I
    //   67: aload_0
    //   68: getfield 85	com/estrongs/android/widget/RealViewSwitcher:A	I
    //   71: isub
    //   72: i2f
    //   73: fcmpl
    //   74: ifge -17 -> 57
    //   77: iload_3
    //   78: tableswitch	default:+30->108, 0:+32->110, 1:+598->676, 2:+67->145, 3:+823->901
    //   108: iconst_1
    //   109: ireturn
    //   110: aload_0
    //   111: getfield 77	com/estrongs/android/widget/RealViewSwitcher:x	Z
    //   114: ifeq +20 -> 134
    //   117: aload_0
    //   118: getfield 79	com/estrongs/android/widget/RealViewSwitcher:y	Z
    //   121: ifeq +13 -> 134
    //   124: aload_0
    //   125: aload_0
    //   126: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   129: putfield 61	com/estrongs/android/widget/RealViewSwitcher:q	I
    //   132: iconst_1
    //   133: ireturn
    //   134: aload_0
    //   135: aload_0
    //   136: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   139: putfield 61	com/estrongs/android/widget/RealViewSwitcher:q	I
    //   142: goto -34 -> 108
    //   145: aload_0
    //   146: getfield 47	com/estrongs/android/widget/RealViewSwitcher:j	I
    //   149: iconst_1
    //   150: if_icmpeq +90 -> 240
    //   153: fload_2
    //   154: aload_0
    //   155: getfield 280	com/estrongs/android/widget/RealViewSwitcher:k	F
    //   158: fsub
    //   159: invokestatic 283	java/lang/Math:abs	(F)F
    //   162: f2i
    //   163: istore_3
    //   164: aload_0
    //   165: invokevirtual 285	com/estrongs/android/widget/RealViewSwitcher:j	()Z
    //   168: ifeq +12 -> 180
    //   171: fload_2
    //   172: aload_0
    //   173: getfield 280	com/estrongs/android/widget/RealViewSwitcher:k	F
    //   176: fcmpl
    //   177: ifgt -120 -> 57
    //   180: aload_0
    //   181: invokevirtual 287	com/estrongs/android/widget/RealViewSwitcher:k	()Z
    //   184: ifeq +12 -> 196
    //   187: fload_2
    //   188: aload_0
    //   189: getfield 280	com/estrongs/android/widget/RealViewSwitcher:k	F
    //   192: fcmpg
    //   193: iflt -136 -> 57
    //   196: iload_3
    //   197: aload_0
    //   198: getfield 132	com/estrongs/android/widget/RealViewSwitcher:d	I
    //   201: if_icmple +98 -> 299
    //   204: iconst_1
    //   205: istore_3
    //   206: iload_3
    //   207: ifeq +33 -> 240
    //   210: aload_0
    //   211: getfield 81	com/estrongs/android/widget/RealViewSwitcher:h	Lcom/estrongs/android/widget/bc;
    //   214: ifnull +16 -> 230
    //   217: aload_0
    //   218: getfield 81	com/estrongs/android/widget/RealViewSwitcher:h	Lcom/estrongs/android/widget/bc;
    //   221: aload_0
    //   222: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   225: invokeinterface 297 2 0
    //   230: aload_0
    //   231: iconst_1
    //   232: putfield 79	com/estrongs/android/widget/RealViewSwitcher:y	Z
    //   235: aload_0
    //   236: iconst_1
    //   237: putfield 47	com/estrongs/android/widget/RealViewSwitcher:j	I
    //   240: aload_0
    //   241: getfield 47	com/estrongs/android/widget/RealViewSwitcher:j	I
    //   244: iconst_1
    //   245: if_icmpne -137 -> 108
    //   248: aload_0
    //   249: getfield 280	com/estrongs/android/widget/RealViewSwitcher:k	F
    //   252: fload_2
    //   253: fsub
    //   254: f2i
    //   255: istore 5
    //   257: aload_0
    //   258: fload_2
    //   259: putfield 280	com/estrongs/android/widget/RealViewSwitcher:k	F
    //   262: aload_0
    //   263: invokevirtual 207	com/estrongs/android/widget/RealViewSwitcher:getScrollX	()I
    //   266: istore 6
    //   268: iload 6
    //   270: iload 5
    //   272: iadd
    //   273: istore_3
    //   274: aload_0
    //   275: aload_0
    //   276: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   279: invokespecial 145	com/estrongs/android/widget/RealViewSwitcher:c	(I)I
    //   282: istore 7
    //   284: iload_3
    //   285: iload 7
    //   287: if_icmpge +17 -> 304
    //   290: aload_0
    //   291: getfield 65	com/estrongs/android/widget/RealViewSwitcher:s	Z
    //   294: ifne +10 -> 304
    //   297: iconst_1
    //   298: ireturn
    //   299: iconst_0
    //   300: istore_3
    //   301: goto -95 -> 206
    //   304: iload_3
    //   305: iload 7
    //   307: if_icmple +12 -> 319
    //   310: aload_0
    //   311: getfield 67	com/estrongs/android/widget/RealViewSwitcher:t	Z
    //   314: ifne +5 -> 319
    //   317: iconst_1
    //   318: ireturn
    //   319: iload 5
    //   321: ifge +157 -> 478
    //   324: iload 6
    //   326: ifle +49 -> 375
    //   329: aload_0
    //   330: getfield 69	com/estrongs/android/widget/RealViewSwitcher:g	Z
    //   333: ifeq +29 -> 362
    //   336: iload 6
    //   338: iload 5
    //   340: iadd
    //   341: istore_3
    //   342: iload_3
    //   343: aload_0
    //   344: iconst_0
    //   345: invokespecial 145	com/estrongs/android/widget/RealViewSwitcher:c	(I)I
    //   348: if_icmpge +107 -> 455
    //   351: aload_0
    //   352: getfield 71	com/estrongs/android/widget/RealViewSwitcher:u	Z
    //   355: ifne +7 -> 362
    //   358: aload_0
    //   359: invokespecial 345	com/estrongs/android/widget/RealViewSwitcher:d	()V
    //   362: aload_0
    //   363: iload 6
    //   365: ineg
    //   366: iload 5
    //   368: invokestatic 348	java/lang/Math:max	(II)I
    //   371: iconst_0
    //   372: invokevirtual 351	com/estrongs/android/widget/RealViewSwitcher:scrollBy	(II)V
    //   375: aload_0
    //   376: getfield 81	com/estrongs/android/widget/RealViewSwitcher:h	Lcom/estrongs/android/widget/bc;
    //   379: ifnull -271 -> 108
    //   382: aload_0
    //   383: getfield 57	com/estrongs/android/widget/RealViewSwitcher:o	I
    //   386: istore_3
    //   387: aload_0
    //   388: invokevirtual 207	com/estrongs/android/widget/RealViewSwitcher:getScrollX	()I
    //   391: iload_3
    //   392: iconst_2
    //   393: idiv
    //   394: iadd
    //   395: iload_3
    //   396: idiv
    //   397: istore 5
    //   399: iload 5
    //   401: istore_3
    //   402: aload_0
    //   403: getfield 69	com/estrongs/android/widget/RealViewSwitcher:g	Z
    //   406: ifeq +267 -> 673
    //   409: iload 5
    //   411: iconst_1
    //   412: isub
    //   413: istore 5
    //   415: iload 5
    //   417: ifge +241 -> 658
    //   420: aload_0
    //   421: getfield 59	com/estrongs/android/widget/RealViewSwitcher:p	I
    //   424: iconst_1
    //   425: isub
    //   426: istore_3
    //   427: aload_0
    //   428: getfield 61	com/estrongs/android/widget/RealViewSwitcher:q	I
    //   431: iload_3
    //   432: if_icmpeq -324 -> 108
    //   435: iload_3
    //   436: aload_0
    //   437: getfield 59	com/estrongs/android/widget/RealViewSwitcher:p	I
    //   440: if_icmpge -332 -> 108
    //   443: iload_3
    //   444: iflt -336 -> 108
    //   447: aload_0
    //   448: iload_3
    //   449: putfield 61	com/estrongs/android/widget/RealViewSwitcher:q	I
    //   452: goto -344 -> 108
    //   455: iload_3
    //   456: aload_0
    //   457: iconst_1
    //   458: invokespecial 145	com/estrongs/android/widget/RealViewSwitcher:c	(I)I
    //   461: if_icmpge -99 -> 362
    //   464: aload_0
    //   465: getfield 73	com/estrongs/android/widget/RealViewSwitcher:v	Z
    //   468: ifeq -106 -> 362
    //   471: aload_0
    //   472: invokespecial 236	com/estrongs/android/widget/RealViewSwitcher:c	()V
    //   475: goto -113 -> 362
    //   478: iload 5
    //   480: ifle -105 -> 375
    //   483: aload_0
    //   484: getfield 69	com/estrongs/android/widget/RealViewSwitcher:g	Z
    //   487: ifeq +34 -> 521
    //   490: iload 6
    //   492: iload 5
    //   494: iadd
    //   495: istore_3
    //   496: iload_3
    //   497: aload_0
    //   498: aload_0
    //   499: getfield 59	com/estrongs/android/widget/RealViewSwitcher:p	I
    //   502: iconst_1
    //   503: isub
    //   504: invokespecial 145	com/estrongs/android/widget/RealViewSwitcher:c	(I)I
    //   507: if_icmple +65 -> 572
    //   510: aload_0
    //   511: getfield 73	com/estrongs/android/widget/RealViewSwitcher:v	Z
    //   514: ifne +7 -> 521
    //   517: aload_0
    //   518: invokespecial 353	com/estrongs/android/widget/RealViewSwitcher:b	()V
    //   521: aload_0
    //   522: getfield 59	com/estrongs/android/widget/RealViewSwitcher:p	I
    //   525: ifle +128 -> 653
    //   528: aload_0
    //   529: getfield 73	com/estrongs/android/widget/RealViewSwitcher:v	Z
    //   532: ifeq +73 -> 605
    //   535: aload_0
    //   536: iconst_0
    //   537: invokevirtual 137	com/estrongs/android/widget/RealViewSwitcher:getChildAt	(I)Landroid/view/View;
    //   540: invokevirtual 356	android/view/View:getRight	()I
    //   543: istore_3
    //   544: iload_3
    //   545: iload 6
    //   547: isub
    //   548: aload_0
    //   549: invokevirtual 243	com/estrongs/android/widget/RealViewSwitcher:getWidth	()I
    //   552: isub
    //   553: istore_3
    //   554: iload_3
    //   555: ifle -180 -> 375
    //   558: aload_0
    //   559: iload_3
    //   560: iload 5
    //   562: invokestatic 216	java/lang/Math:min	(II)I
    //   565: iconst_0
    //   566: invokevirtual 351	com/estrongs/android/widget/RealViewSwitcher:scrollBy	(II)V
    //   569: goto -194 -> 375
    //   572: iload_3
    //   573: aload_0
    //   574: aload_0
    //   575: getfield 59	com/estrongs/android/widget/RealViewSwitcher:p	I
    //   578: iconst_1
    //   579: isub
    //   580: invokespecial 145	com/estrongs/android/widget/RealViewSwitcher:c	(I)I
    //   583: aload_0
    //   584: getfield 57	com/estrongs/android/widget/RealViewSwitcher:o	I
    //   587: isub
    //   588: if_icmple -67 -> 521
    //   591: aload_0
    //   592: getfield 71	com/estrongs/android/widget/RealViewSwitcher:u	Z
    //   595: ifeq -74 -> 521
    //   598: aload_0
    //   599: invokespecial 238	com/estrongs/android/widget/RealViewSwitcher:e	()V
    //   602: goto -81 -> 521
    //   605: aload_0
    //   606: getfield 71	com/estrongs/android/widget/RealViewSwitcher:u	Z
    //   609: ifeq +22 -> 631
    //   612: aload_0
    //   613: aload_0
    //   614: getfield 59	com/estrongs/android/widget/RealViewSwitcher:p	I
    //   617: iconst_1
    //   618: isub
    //   619: invokespecial 145	com/estrongs/android/widget/RealViewSwitcher:c	(I)I
    //   622: aload_0
    //   623: getfield 57	com/estrongs/android/widget/RealViewSwitcher:o	I
    //   626: iadd
    //   627: istore_3
    //   628: goto -84 -> 544
    //   631: aload_0
    //   632: aload_0
    //   633: getfield 59	com/estrongs/android/widget/RealViewSwitcher:p	I
    //   636: iconst_1
    //   637: isub
    //   638: invokevirtual 137	com/estrongs/android/widget/RealViewSwitcher:getChildAt	(I)Landroid/view/View;
    //   641: invokevirtual 356	android/view/View:getRight	()I
    //   644: istore_3
    //   645: goto -101 -> 544
    //   648: astore_1
    //   649: aload_1
    //   650: invokevirtual 359	java/lang/Exception:printStackTrace	()V
    //   653: iconst_0
    //   654: istore_3
    //   655: goto -111 -> 544
    //   658: iload 4
    //   660: istore_3
    //   661: iload 5
    //   663: aload_0
    //   664: getfield 59	com/estrongs/android/widget/RealViewSwitcher:p	I
    //   667: if_icmpge -240 -> 427
    //   670: iload 5
    //   672: istore_3
    //   673: goto -246 -> 427
    //   676: aload_0
    //   677: getfield 47	com/estrongs/android/widget/RealViewSwitcher:j	I
    //   680: iconst_1
    //   681: if_icmpne +91 -> 772
    //   684: aload_0
    //   685: getfield 255	com/estrongs/android/widget/RealViewSwitcher:a	Landroid/view/VelocityTracker;
    //   688: astore_1
    //   689: aload_1
    //   690: sipush 1000
    //   693: invokevirtual 362	android/view/VelocityTracker:computeCurrentVelocity	(I)V
    //   696: aload_1
    //   697: invokevirtual 365	android/view/VelocityTracker:getXVelocity	()F
    //   700: f2i
    //   701: istore_3
    //   702: iload_3
    //   703: sipush 300
    //   706: if_icmple +81 -> 787
    //   709: aload_0
    //   710: getfield 69	com/estrongs/android/widget/RealViewSwitcher:g	Z
    //   713: ifeq +67 -> 780
    //   716: aload_0
    //   717: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   720: iflt +67 -> 787
    //   723: aload_0
    //   724: aload_0
    //   725: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   728: invokevirtual 137	com/estrongs/android/widget/RealViewSwitcher:getChildAt	(I)Landroid/view/View;
    //   731: invokevirtual 368	android/view/View:getLeft	()I
    //   734: istore_3
    //   735: iload_3
    //   736: aload_0
    //   737: invokevirtual 207	com/estrongs/android/widget/RealViewSwitcher:getScrollX	()I
    //   740: if_icmple +116 -> 856
    //   743: aload_0
    //   744: aload_0
    //   745: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   748: iconst_1
    //   749: isub
    //   750: invokevirtual 244	com/estrongs/android/widget/RealViewSwitcher:b	(I)V
    //   753: aload_0
    //   754: getfield 255	com/estrongs/android/widget/RealViewSwitcher:a	Landroid/view/VelocityTracker;
    //   757: ifnull +15 -> 772
    //   760: aload_0
    //   761: getfield 255	com/estrongs/android/widget/RealViewSwitcher:a	Landroid/view/VelocityTracker;
    //   764: invokevirtual 310	android/view/VelocityTracker:recycle	()V
    //   767: aload_0
    //   768: aconst_null
    //   769: putfield 255	com/estrongs/android/widget/RealViewSwitcher:a	Landroid/view/VelocityTracker;
    //   772: aload_0
    //   773: iconst_0
    //   774: putfield 47	com/estrongs/android/widget/RealViewSwitcher:j	I
    //   777: goto -669 -> 108
    //   780: aload_0
    //   781: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   784: ifgt -61 -> 723
    //   787: iload_3
    //   788: sipush 65236
    //   791: if_icmpge +85 -> 876
    //   794: aload_0
    //   795: getfield 69	com/estrongs/android/widget/RealViewSwitcher:g	Z
    //   798: ifeq +65 -> 863
    //   801: aload_0
    //   802: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   805: aload_0
    //   806: getfield 59	com/estrongs/android/widget/RealViewSwitcher:p	I
    //   809: if_icmpge +67 -> 876
    //   812: aload_0
    //   813: aload_0
    //   814: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   817: invokevirtual 137	com/estrongs/android/widget/RealViewSwitcher:getChildAt	(I)Landroid/view/View;
    //   820: invokevirtual 368	android/view/View:getLeft	()I
    //   823: istore_3
    //   824: iload_3
    //   825: aload_0
    //   826: invokevirtual 207	com/estrongs/android/widget/RealViewSwitcher:getScrollX	()I
    //   829: if_icmpge +65 -> 894
    //   832: aload_0
    //   833: aload_0
    //   834: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   837: iconst_1
    //   838: iadd
    //   839: invokevirtual 244	com/estrongs/android/widget/RealViewSwitcher:b	(I)V
    //   842: goto -89 -> 753
    //   845: astore_1
    //   846: aload_1
    //   847: invokevirtual 359	java/lang/Exception:printStackTrace	()V
    //   850: aload_0
    //   851: invokevirtual 299	com/estrongs/android/widget/RealViewSwitcher:g	()V
    //   854: iconst_1
    //   855: ireturn
    //   856: aload_0
    //   857: invokevirtual 299	com/estrongs/android/widget/RealViewSwitcher:g	()V
    //   860: goto -107 -> 753
    //   863: aload_0
    //   864: getfield 49	com/estrongs/android/widget/RealViewSwitcher:e	I
    //   867: aload_0
    //   868: getfield 59	com/estrongs/android/widget/RealViewSwitcher:p	I
    //   871: iconst_1
    //   872: isub
    //   873: if_icmplt -61 -> 812
    //   876: aload_0
    //   877: invokevirtual 299	com/estrongs/android/widget/RealViewSwitcher:g	()V
    //   880: goto -127 -> 753
    //   883: astore_1
    //   884: aload_1
    //   885: invokevirtual 359	java/lang/Exception:printStackTrace	()V
    //   888: aload_0
    //   889: invokevirtual 299	com/estrongs/android/widget/RealViewSwitcher:g	()V
    //   892: iconst_1
    //   893: ireturn
    //   894: aload_0
    //   895: invokevirtual 299	com/estrongs/android/widget/RealViewSwitcher:g	()V
    //   898: goto -145 -> 753
    //   901: aload_0
    //   902: invokevirtual 299	com/estrongs/android/widget/RealViewSwitcher:g	()V
    //   905: aload_0
    //   906: getfield 255	com/estrongs/android/widget/RealViewSwitcher:a	Landroid/view/VelocityTracker;
    //   909: ifnull +15 -> 924
    //   912: aload_0
    //   913: getfield 255	com/estrongs/android/widget/RealViewSwitcher:a	Landroid/view/VelocityTracker;
    //   916: invokevirtual 310	android/view/VelocityTracker:recycle	()V
    //   919: aload_0
    //   920: aconst_null
    //   921: putfield 255	com/estrongs/android/widget/RealViewSwitcher:a	Landroid/view/VelocityTracker;
    //   924: aload_0
    //   925: iconst_0
    //   926: putfield 47	com/estrongs/android/widget/RealViewSwitcher:j	I
    //   929: goto -821 -> 108
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	932	0	this	RealViewSwitcher
    //   0	932	1	paramMotionEvent	MotionEvent
    //   34	225	2	f1	float
    //   29	801	3	i1	int
    //   1	658	4	i2	int
    //   255	416	5	i3	int
    //   266	282	6	i4	int
    //   282	26	7	i5	int
    // Exception table:
    //   from	to	target	type
    //   521	544	648	java/lang/Exception
    //   605	628	648	java/lang/Exception
    //   631	645	648	java/lang/Exception
    //   723	735	845	java/lang/Exception
    //   812	824	883	java/lang/Exception
  }
  
  public void removeViewAt(int paramInt)
  {
    m = -2;
    w = true;
    super.removeViewAt(paramInt);
    f();
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.RealViewSwitcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */