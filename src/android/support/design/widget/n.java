package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.design.j;
import android.support.v4.d.h;
import android.support.v4.d.i;
import android.support.v4.view.cn;
import android.support.v4.view.v;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.animation.Interpolator;

final class n
{
  private static final boolean a;
  private static final Paint b;
  private boolean A;
  private Bitmap B;
  private Paint C;
  private float D;
  private float E;
  private float F;
  private float G;
  private boolean H;
  private final TextPaint I;
  private Interpolator J;
  private Interpolator K;
  private float L;
  private float M;
  private float N;
  private int O;
  private float P;
  private float Q;
  private float R;
  private int S;
  private final View c;
  private boolean d;
  private float e;
  private final Rect f;
  private final Rect g;
  private final RectF h;
  private int i = 16;
  private int j = 16;
  private float k = 15.0F;
  private float l = 15.0F;
  private int m;
  private int n;
  private float o;
  private float p;
  private float q;
  private float r;
  private float s;
  private float t;
  private Typeface u;
  private Typeface v;
  private Typeface w;
  private CharSequence x;
  private CharSequence y;
  private boolean z;
  
  static
  {
    if (Build.VERSION.SDK_INT < 18) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = null;
      if (b != null)
      {
        b.setAntiAlias(true);
        b.setColor(-65281);
      }
      return;
    }
  }
  
  public n(View paramView)
  {
    c = paramView;
    I = new TextPaint(129);
    g = new Rect();
    f = new Rect();
    h = new RectF();
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3, Interpolator paramInterpolator)
  {
    float f1 = paramFloat3;
    if (paramInterpolator != null) {
      f1 = paramInterpolator.getInterpolation(paramFloat3);
    }
    return a.a(paramFloat1, paramFloat2, f1);
  }
  
  private static int a(int paramInt1, int paramInt2, float paramFloat)
  {
    float f1 = 1.0F - paramFloat;
    float f2 = Color.alpha(paramInt1);
    float f3 = Color.alpha(paramInt2);
    float f4 = Color.red(paramInt1);
    float f5 = Color.red(paramInt2);
    float f6 = Color.green(paramInt1);
    float f7 = Color.green(paramInt2);
    float f8 = Color.blue(paramInt1);
    float f9 = Color.blue(paramInt2);
    return Color.argb((int)(f2 * f1 + f3 * paramFloat), (int)(f4 * f1 + f5 * paramFloat), (int)(f6 * f1 + f7 * paramFloat), (int)(f1 * f8 + f9 * paramFloat));
  }
  
  private static boolean a(float paramFloat1, float paramFloat2)
  {
    return Math.abs(paramFloat1 - paramFloat2) < 0.001F;
  }
  
  private static boolean a(Rect paramRect, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return (left == paramInt1) && (top == paramInt2) && (right == paramInt3) && (bottom == paramInt4);
  }
  
  private boolean b(CharSequence paramCharSequence)
  {
    int i1 = 1;
    if (cn.h(c) == 1) {
      if (i1 == 0) {
        break label41;
      }
    }
    label41:
    for (h localh = i.d;; localh = i.c)
    {
      return localh.a(paramCharSequence, 0, paramCharSequence.length());
      i1 = 0;
      break;
    }
  }
  
  private void c(float paramFloat)
  {
    d(paramFloat);
    s = a(q, r, paramFloat, J);
    t = a(o, p, paramFloat, J);
    e(a(k, l, paramFloat, K));
    if (n != m) {
      I.setColor(a(m, n, paramFloat));
    }
    for (;;)
    {
      I.setShadowLayer(a(P, L, paramFloat, null), a(Q, M, paramFloat, null), a(R, N, paramFloat, null), a(S, O, paramFloat));
      cn.d(c);
      return;
      I.setColor(n);
    }
  }
  
  private void d(float paramFloat)
  {
    h.left = a(f.left, g.left, paramFloat, J);
    h.top = a(o, p, paramFloat, J);
    h.right = a(f.right, g.right, paramFloat, J);
    h.bottom = a(f.bottom, g.bottom, paramFloat, J);
  }
  
  private void e(float paramFloat)
  {
    f(paramFloat);
    if ((a) && (F != 1.0F)) {}
    for (boolean bool = true;; bool = false)
    {
      A = bool;
      if (A) {
        m();
      }
      cn.d(c);
      return;
    }
  }
  
  private void f(float paramFloat)
  {
    boolean bool = true;
    if (x == null) {
      return;
    }
    float f1;
    int i1;
    if (a(paramFloat, l))
    {
      f1 = g.width();
      paramFloat = l;
      F = 1.0F;
      if (w == u) {
        break label306;
      }
      w = u;
      i1 = 1;
    }
    for (;;)
    {
      int i2 = i1;
      label97:
      label161:
      float f2;
      if (f1 > 0.0F)
      {
        if ((G != paramFloat) || (H) || (i1 != 0))
        {
          i1 = 1;
          G = paramFloat;
          H = false;
          i2 = i1;
        }
      }
      else
      {
        if ((y != null) && (i2 == 0)) {
          break;
        }
        I.setTextSize(G);
        I.setTypeface(w);
        Object localObject = I;
        if (F == 1.0F) {
          break label294;
        }
        ((TextPaint)localObject).setLinearText(bool);
        localObject = TextUtils.ellipsize(x, I, f1, TextUtils.TruncateAt.END);
        if (TextUtils.equals((CharSequence)localObject, y)) {
          break;
        }
        y = ((CharSequence)localObject);
        z = b(y);
        return;
        f1 = f.width();
        f2 = k;
        if (w == v) {
          break label300;
        }
        w = v;
      }
      label294:
      label300:
      for (i1 = 1;; i1 = 0)
      {
        if (a(paramFloat, k))
        {
          F = 1.0F;
          paramFloat = f2;
          break;
        }
        F = (paramFloat / k);
        paramFloat = f2;
        break;
        i1 = 0;
        break label97;
        bool = false;
        break label161;
      }
      label306:
      i1 = 0;
    }
  }
  
  private Typeface g(int paramInt)
  {
    TypedArray localTypedArray = c.getContext().obtainStyledAttributes(paramInt, new int[] { 16843692 });
    try
    {
      Object localObject1 = localTypedArray.getString(0);
      if (localObject1 != null)
      {
        localObject1 = Typeface.create((String)localObject1, 0);
        return (Typeface)localObject1;
      }
      return null;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  private void k()
  {
    c(e);
  }
  
  private void l()
  {
    int i2 = 1;
    float f2 = 0.0F;
    float f3 = G;
    f(l);
    float f1;
    int i1;
    if (y != null)
    {
      f1 = I.measureText(y, 0, y.length());
      int i3 = j;
      if (!z) {
        break label375;
      }
      i1 = 1;
      label63:
      i1 = v.a(i3, i1);
      switch (i1 & 0x70)
      {
      default: 
        p = ((I.descent() - I.ascent()) / 2.0F - I.descent() + g.centerY());
        label142:
        switch (i1 & 0x7)
        {
        default: 
          r = g.left;
          label184:
          f(k);
          f1 = f2;
          if (y != null) {
            f1 = I.measureText(y, 0, y.length());
          }
          i3 = i;
          if (z)
          {
            i1 = i2;
            label240:
            i1 = v.a(i3, i1);
            switch (i1 & 0x70)
            {
            default: 
              o = ((I.descent() - I.ascent()) / 2.0F - I.descent() + f.centerY());
              label318:
              switch (i1 & 0x7)
              {
              default: 
                q = f.left;
              }
              break;
            }
          }
          break;
        }
        break;
      }
    }
    for (;;)
    {
      n();
      e(f3);
      return;
      f1 = 0.0F;
      break;
      label375:
      i1 = 0;
      break label63;
      p = g.bottom;
      break label142;
      p = (g.top - I.ascent());
      break label142;
      r = (g.centerX() - f1 / 2.0F);
      break label184;
      r = (g.right - f1);
      break label184;
      i1 = 0;
      break label240;
      o = f.bottom;
      break label318;
      o = (f.top - I.ascent());
      break label318;
      q = (f.centerX() - f1 / 2.0F);
      continue;
      q = (f.right - f1);
    }
  }
  
  private void m()
  {
    if ((B != null) || (f.isEmpty()) || (TextUtils.isEmpty(y))) {}
    do
    {
      int i1;
      int i2;
      do
      {
        return;
        c(0.0F);
        D = I.ascent();
        E = I.descent();
        i1 = Math.round(I.measureText(y, 0, y.length()));
        i2 = Math.round(E - D);
      } while ((i1 <= 0) || (i2 <= 0));
      B = Bitmap.createBitmap(i1, i2, Bitmap.Config.ARGB_8888);
      new Canvas(B).drawText(y, 0, y.length(), 0.0F, i2 - I.descent(), I);
    } while (C != null);
    C = new Paint(3);
  }
  
  private void n()
  {
    if (B != null)
    {
      B.recycle();
      B = null;
    }
  }
  
  void a()
  {
    if ((g.width() > 0) && (g.height() > 0) && (f.width() > 0) && (f.height() > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  void a(float paramFloat)
  {
    if (k != paramFloat)
    {
      k = paramFloat;
      h();
    }
  }
  
  void a(int paramInt)
  {
    if (n != paramInt)
    {
      n = paramInt;
      h();
    }
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!a(f, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      f.set(paramInt1, paramInt2, paramInt3, paramInt4);
      H = true;
      a();
    }
  }
  
  public void a(Canvas paramCanvas)
  {
    int i2 = paramCanvas.save();
    float f4;
    int i1;
    float f1;
    float f2;
    if ((y != null) && (d))
    {
      f4 = s;
      float f3 = t;
      if ((!A) || (B == null)) {
        break label138;
      }
      i1 = 1;
      if (i1 == 0) {
        break label144;
      }
      f1 = D * F;
      f2 = E;
      f2 = F;
      label74:
      f2 = f3;
      if (i1 != 0) {
        f2 = f3 + f1;
      }
      if (F != 1.0F) {
        paramCanvas.scale(F, F, f4, f2);
      }
      if (i1 == 0) {
        break label173;
      }
      paramCanvas.drawBitmap(B, f4, f2, C);
    }
    for (;;)
    {
      paramCanvas.restoreToCount(i2);
      return;
      label138:
      i1 = 0;
      break;
      label144:
      f1 = I.ascent() * F;
      I.descent();
      f2 = F;
      break label74;
      label173:
      paramCanvas.drawText(y, 0, y.length(), f4, f2, I);
    }
  }
  
  void a(Typeface paramTypeface)
  {
    if (u != paramTypeface)
    {
      u = paramTypeface;
      h();
    }
  }
  
  void a(Interpolator paramInterpolator)
  {
    K = paramInterpolator;
    h();
  }
  
  void a(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (!paramCharSequence.equals(x)))
    {
      x = paramCharSequence;
      y = null;
      n();
      h();
    }
  }
  
  int b()
  {
    return i;
  }
  
  void b(float paramFloat)
  {
    paramFloat = av.a(paramFloat, 0.0F, 1.0F);
    if (paramFloat != e)
    {
      e = paramFloat;
      k();
    }
  }
  
  void b(int paramInt)
  {
    if (m != paramInt)
    {
      m = paramInt;
      h();
    }
  }
  
  void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!a(g, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      g.set(paramInt1, paramInt2, paramInt3, paramInt4);
      H = true;
      a();
    }
  }
  
  void b(Typeface paramTypeface)
  {
    if (v != paramTypeface)
    {
      v = paramTypeface;
      h();
    }
  }
  
  void b(Interpolator paramInterpolator)
  {
    J = paramInterpolator;
    h();
  }
  
  int c()
  {
    return j;
  }
  
  void c(int paramInt)
  {
    if (i != paramInt)
    {
      i = paramInt;
      h();
    }
  }
  
  void c(Typeface paramTypeface)
  {
    v = paramTypeface;
    u = paramTypeface;
    h();
  }
  
  Typeface d()
  {
    if (u != null) {
      return u;
    }
    return Typeface.DEFAULT;
  }
  
  void d(int paramInt)
  {
    if (j != paramInt)
    {
      j = paramInt;
      h();
    }
  }
  
  Typeface e()
  {
    if (v != null) {
      return v;
    }
    return Typeface.DEFAULT;
  }
  
  void e(int paramInt)
  {
    TypedArray localTypedArray = c.getContext().obtainStyledAttributes(paramInt, j.TextAppearance);
    if (localTypedArray.hasValue(j.TextAppearance_android_textColor)) {
      n = localTypedArray.getColor(j.TextAppearance_android_textColor, n);
    }
    if (localTypedArray.hasValue(j.TextAppearance_android_textSize)) {
      l = localTypedArray.getDimensionPixelSize(j.TextAppearance_android_textSize, (int)l);
    }
    O = localTypedArray.getInt(j.TextAppearance_android_shadowColor, 0);
    M = localTypedArray.getFloat(j.TextAppearance_android_shadowDx, 0.0F);
    N = localTypedArray.getFloat(j.TextAppearance_android_shadowDy, 0.0F);
    L = localTypedArray.getFloat(j.TextAppearance_android_shadowRadius, 0.0F);
    localTypedArray.recycle();
    if (Build.VERSION.SDK_INT >= 16) {
      u = g(paramInt);
    }
    h();
  }
  
  float f()
  {
    return e;
  }
  
  void f(int paramInt)
  {
    TypedArray localTypedArray = c.getContext().obtainStyledAttributes(paramInt, j.TextAppearance);
    if (localTypedArray.hasValue(j.TextAppearance_android_textColor)) {
      m = localTypedArray.getColor(j.TextAppearance_android_textColor, m);
    }
    if (localTypedArray.hasValue(j.TextAppearance_android_textSize)) {
      k = localTypedArray.getDimensionPixelSize(j.TextAppearance_android_textSize, (int)k);
    }
    S = localTypedArray.getInt(j.TextAppearance_android_shadowColor, 0);
    Q = localTypedArray.getFloat(j.TextAppearance_android_shadowDx, 0.0F);
    R = localTypedArray.getFloat(j.TextAppearance_android_shadowDy, 0.0F);
    P = localTypedArray.getFloat(j.TextAppearance_android_shadowRadius, 0.0F);
    localTypedArray.recycle();
    if (Build.VERSION.SDK_INT >= 16) {
      v = g(paramInt);
    }
    h();
  }
  
  float g()
  {
    return l;
  }
  
  public void h()
  {
    if ((c.getHeight() > 0) && (c.getWidth() > 0))
    {
      l();
      k();
    }
  }
  
  CharSequence i()
  {
    return x;
  }
  
  int j()
  {
    return n;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */