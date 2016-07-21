package com.estrongs.android.ui.controller.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.design.j;
import android.support.design.widget.FloatingActionButton;
import android.util.AttributeSet;
import com.estrongs.android.util.l;
import java.text.DecimalFormat;

public class ESFloatingActionButton
  extends FloatingActionButton
{
  private int A = -1;
  private Bitmap B = null;
  private boolean C = false;
  private boolean D = true;
  private f E;
  private int F = 1000;
  private boolean G = false;
  private int H;
  private int I;
  private int J;
  private int K;
  private boolean L = false;
  private e M;
  private int N = 1000;
  private int O = 1;
  private Runnable P = new a(this);
  private Runnable Q = new b(this);
  private boolean a = false;
  private String b = "%";
  private float c = 270.0F;
  private float d = 1.0F;
  private float e = 0.0F;
  private float f = 0.0F;
  private float g = 0.0F;
  private float h = 0.0F;
  private boolean i = true;
  private int j = 80;
  private DecimalFormat k = new DecimalFormat("###,###,###,##0");
  private String[] l = null;
  private RectF m = new RectF();
  private Paint n;
  private Paint o;
  private Paint p;
  private int q = -1;
  private float r = g.a(getResources(), 1.5F);
  private float s = g.a(getResources(), 6.0F);
  private int t = -1;
  private float u = 10.0F;
  private float v = 0.8F;
  private int w = 1000;
  private ColorStateList x = null;
  private ColorStateList y = null;
  private float z = 0.75F;
  
  public ESFloatingActionButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ESFloatingActionButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ESFloatingActionButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    try
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.FloatingActionButton, paramInt, 2131296615);
      O = paramContext.getInt(2, 0);
      paramContext.recycle();
      e();
      return;
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
  }
  
  private void a(Canvas paramCanvas)
  {
    int i5 = getWidth();
    int i4 = getHeight();
    int i2 = getIconWidth();
    int i3 = getIconHeight();
    if (B == null) {
      B = BitmapFactory.decodeResource(getResources(), A);
    }
    if (B != null)
    {
      int i7 = B.getWidth();
      int i6 = B.getHeight();
      int i1 = i2;
      if (i7 < i2 * 0.8D) {
        i1 = (int)(i2 * 0.8D);
      }
      i2 = i3;
      if (i6 < i3 * 0.8D) {
        i2 = (int)(i3 * 0.8D);
      }
      i1 = (int)(i1 * Math.sqrt(2.0D) / 2.0D);
      i2 = (int)(i2 * Math.sqrt(2.0D) / 2.0D);
      i3 = (i5 - i1) / 2;
      i4 = (i4 - i2) / 2;
      g.a(paramCanvas, B, i3, i4, i1, i2, i3, i4);
    }
  }
  
  private float b(float paramFloat)
  {
    return paramFloat / 100.0F * 360.0F;
  }
  
  private void b(Canvas paramCanvas)
  {
    String str = k.format(g * f);
    int i3 = g.a(o, str);
    int i4 = g.a(p, b);
    int i5 = getIconWidth();
    int i2 = i4;
    int i1 = i3;
    if ((i3 + i4) / i5 > 0.8F)
    {
      setTextSize(u * 0.8F);
      i1 = g.a(o, str);
      i2 = g.a(p, b);
    }
    paramCanvas.drawText(str, getWidth() / 2 - i2 / 2, getHeight() / 2 + o.descent(), o);
    str = b;
    i3 = getWidth() / 2;
    paramCanvas.drawText(str, (i1 - i2) / 2 + i3, getHeight() / 2 + o.descent(), p);
  }
  
  private void c(Canvas paramCanvas)
  {
    int i1 = (int)(g * f / d);
    if (i1 < l.length)
    {
      paramCanvas.drawText(l[i1], getWidth() / 2, getHeight() / 2 + o.descent(), o);
      return;
    }
    l.e("ESFloatingActionButton", "Custom text array not long enough.");
  }
  
  private void d(Canvas paramCanvas)
  {
    n.setAlpha(j);
    paramCanvas.drawArc(m, 0.0F, 360.0F, false, n);
  }
  
  private void e()
  {
    L = false;
    n = new Paint(1);
    n.setStyle(Paint.Style.STROKE);
    n.setColor(q);
    n.setStrokeWidth(r);
    o = new Paint(1);
    o.setStyle(Paint.Style.STROKE);
    o.setTextAlign(Paint.Align.CENTER);
    o.setColor(t);
    o.setTextSize(g.a(getResources(), u));
    p = new Paint(1);
    p.setStyle(Paint.Style.STROKE);
    p.setTextAlign(Paint.Align.LEFT);
    p.setColor(t);
    p.setTextSize(g.a(getResources(), u * v));
  }
  
  private void e(Canvas paramCanvas)
  {
    n.setAlpha(255);
    float f1 = e;
    float f2 = f;
    paramCanvas.drawArc(m, c, f1 * f2, false, n);
  }
  
  private void f()
  {
    int i1 = getWidth();
    int i2 = getHeight();
    float f1 = getDiameter();
    m = new RectF((i1 - f1) / 2.0F + s, (i2 - f1) / 2.0F + s, (i1 + f1) / 2.0F - s, (i2 + f1) / 2.0F - s);
  }
  
  private void g()
  {
    f = 0.0F;
    if (M != null) {
      M.cancel();
    }
    for (;;)
    {
      startAnimation(M);
      removeCallbacks(P);
      postDelayed(P, w);
      return;
      M = new e(this, w, f, 1.0F);
    }
  }
  
  private float getDiameter()
  {
    return Math.min(getRamViewWidth(), getRamViewHeight());
  }
  
  private int getDimensionSize()
  {
    int i1;
    try
    {
      switch (O)
      {
      case 1: 
        return getResources().getDimensionPixelSize(2131165474);
        i1 = getResources().getDimensionPixelSize(2131165473);
        return i1;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        i1 = (int)(super.getDrawable().getMinimumWidth() * 2 - g.a(getResources(), 3.0F));
        if (i1 <= getWidth()) {
          break;
        }
        return getWidth();
      }
    }
    return i1;
  }
  
  private int getIconHeight()
  {
    if (I == 0) {
      I = ((int)(getRamViewHeight() - s - r - s));
    }
    return I;
  }
  
  private int getIconWidth()
  {
    if (H == 0) {
      H = ((int)(getRamViewWidth() - s - r - s));
    }
    return H;
  }
  
  private void h()
  {
    if (a) {
      if ((C) || (A == -1)) {
        break label94;
      }
    }
    for (;;)
    {
      if (E == null)
      {
        E = new f(this, 0.0F, 360.0F, getWidth() / 2.0F, getHeight() / 2.0F);
        E.setDuration(F);
      }
      removeCallbacks(Q);
      postDelayed(Q, N);
      label94:
      do
      {
        return;
      } while ((!C) || (A == -1) || (!D));
    }
  }
  
  public void a(float paramFloat)
  {
    a(paramFloat, true);
  }
  
  public void a(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (!a)
    {
      if (E != null) {
        E.cancel();
      }
      if (M != null) {
        M.cancel();
      }
      clearAnimation();
    }
    boolean bool;
    if (paramFloat1 / paramFloat2 >= z)
    {
      bool = true;
      C = bool;
      if (!C) {
        break label153;
      }
      setBackgroundTintList(y);
      label74:
      e = b(paramFloat1 / paramFloat2 * 100.0F);
      g = paramFloat1;
      h = paramFloat2;
      if (!paramBoolean) {
        break label164;
      }
      g();
    }
    for (;;)
    {
      if ((!D) && (A != -1) && (!C))
      {
        if (E != null) {
          E.cancel();
        }
        clearAnimation();
      }
      return;
      bool = false;
      break;
      label153:
      setBackgroundTintList(x);
      break label74;
      label164:
      f = 1.0F;
      invalidate();
    }
  }
  
  public void a(float paramFloat, boolean paramBoolean)
  {
    a(paramFloat, 100.0F, paramBoolean);
  }
  
  public void a(int paramInt, float paramFloat)
  {
    setNullTextImageResId(paramInt);
    a(paramFloat);
  }
  
  public void c()
  {
    if (a) {
      new c(this).start();
    }
  }
  
  public void d()
  {
    if (a)
    {
      if (!C) {
        break label46;
      }
      setBackgroundTintList(y);
    }
    for (;;)
    {
      G = true;
      if (f != 1.0F) {
        f = 1.0F;
      }
      invalidate();
      return;
      label46:
      setBackgroundTintList(x);
    }
  }
  
  public PointF getCenter()
  {
    return new PointF(getWidth() / 2, getHeight() / 2);
  }
  
  public float getPhase()
  {
    return f;
  }
  
  public int getRamViewHeight()
  {
    if (K == 0) {
      K = getDimensionSize();
    }
    return K;
  }
  
  public int getRamViewWidth()
  {
    if (J == 0) {
      J = getDimensionSize();
    }
    return J;
  }
  
  public int getRingColor()
  {
    return q;
  }
  
  public float getRingStrokeWidth()
  {
    return r;
  }
  
  public float getStepSize()
  {
    return d;
  }
  
  public int getTextColor()
  {
    return t;
  }
  
  public float getValue()
  {
    return g;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (B != null)
    {
      B.recycle();
      B = null;
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (a)
    {
      if (!L)
      {
        L = true;
        f();
      }
      d(paramCanvas);
      e(paramCanvas);
      if (G) {
        if (i)
        {
          if (l == null) {
            break label60;
          }
          c(paramCanvas);
        }
      }
      label60:
      while (A == -1)
      {
        return;
        b(paramCanvas);
        return;
      }
      a(paramCanvas);
      return;
    }
    super.onDraw(paramCanvas);
  }
  
  public void setAnimDuration(int paramInt)
  {
    w = paramInt;
  }
  
  public void setCustomText(String[] paramArrayOfString)
  {
    l = paramArrayOfString;
  }
  
  public void setDimAlpha(int paramInt)
  {
    j = paramInt;
  }
  
  public void setDrawText(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void setFormatDigits(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i1 = 0;
    while (i1 < paramInt)
    {
      if (i1 == 0) {
        localStringBuffer.append(".");
      }
      localStringBuffer.append("0");
      i1 += 1;
    }
    k = new DecimalFormat("###,###,###,##0" + localStringBuffer.toString());
  }
  
  public void setIsRamAnimView(boolean paramBoolean)
  {
    a = paramBoolean;
    if (!a)
    {
      if (E != null) {
        E.cancel();
      }
      if (M != null) {
        M.cancel();
      }
      if (f != 1.0F) {
        setPhase(1.0F);
      }
      clearAnimation();
      removeCallbacks(P);
      removeCallbacks(Q);
    }
  }
  
  public void setNeedRotateWhenWarn(boolean paramBoolean)
  {
    D = paramBoolean;
  }
  
  public void setNormalColor(ColorStateList paramColorStateList)
  {
    x = paramColorStateList;
  }
  
  public void setNullTextImageResId(int paramInt)
  {
    A = paramInt;
  }
  
  public void setPhase(float paramFloat)
  {
    f = paramFloat;
    invalidate();
  }
  
  public void setRingColor(int paramInt)
  {
    q = paramInt;
    n.setColor(q);
  }
  
  public void setRingMargin(float paramFloat)
  {
    s = paramFloat;
  }
  
  public void setRingStrokeWidth(int paramInt)
  {
    r = g.a(getResources(), paramInt);
    n.setStrokeWidth(r);
  }
  
  public void setStartAngle(float paramFloat)
  {
    c = paramFloat;
  }
  
  public void setStepSize(float paramFloat)
  {
    d = paramFloat;
  }
  
  public void setTextColor(int paramInt)
  {
    t = paramInt;
    o.setColor(t);
  }
  
  public void setTextSize(float paramFloat)
  {
    u = paramFloat;
    o.setTextSize(g.a(getResources(), u));
    p.setTextSize(g.a(getResources(), u * v));
  }
  
  public void setUnit(String paramString)
  {
    b = paramString;
  }
  
  public void setUnitTextSizePercent(float paramFloat)
  {
    v = paramFloat;
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if (!a)
    {
      if (E != null) {
        E.cancel();
      }
      if (M != null) {
        M.cancel();
      }
      if (f != 1.0F) {
        setPhase(1.0F);
      }
      clearAnimation();
      removeCallbacks(P);
      removeCallbacks(Q);
    }
  }
  
  public void setWarnColor(ColorStateList paramColorStateList)
  {
    y = paramColorStateList;
  }
  
  public void setWarnPercent(float paramFloat)
  {
    float f1 = paramFloat;
    if (paramFloat > 100.0F) {
      f1 = paramFloat / 100.0F;
    }
    z = f1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.widget.ESFloatingActionButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */