package com.estrongs.android.ui.addressbar;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.estrongs.android.pop.ac;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import java.util.HashMap;
import java.util.List;

public class a
{
  private AdvancedAddressBar A;
  private int B;
  private HashMap<String, Layout> C;
  private List<String> D;
  private List<String> E;
  private float F;
  private boolean G = false;
  private boolean H = false;
  private final int I = 100;
  private Context J;
  private Drawable K;
  private int L = 0;
  int a = 0;
  b b = null;
  boolean c = true;
  private int d = 1;
  private String[] e;
  private int f;
  private int g;
  private Drawable h;
  private Drawable i;
  private Drawable j;
  private Drawable k;
  private Drawable l;
  private Drawable m;
  private TextPaint n;
  private int o;
  private int p;
  private int q;
  private boolean r;
  private boolean s = false;
  private boolean t = false;
  private int u = 0;
  private long v;
  private int w = 500;
  private boolean x = false;
  private AccelerateDecelerateInterpolator y;
  private String[] z;
  
  public a(Context paramContext, AdvancedAddressBar paramAdvancedAddressBar)
  {
    this(paramContext, paramAdvancedAddressBar, null);
  }
  
  public a(Context paramContext, AdvancedAddressBar paramAdvancedAddressBar, b paramb)
  {
    J = paramContext;
    A = paramAdvancedAddressBar;
    b = paramb;
    if (paramb != null)
    {
      h = a;
      i = b;
      c = d;
      f = e;
      j = paramContext.getResources().getDrawable(2130838137);
      m = paramContext.getResources().getDrawable(2130838129);
      if (ac.a() >= 14) {
        break label321;
      }
    }
    label321:
    for (l = new h(paramContext.getResources().getDrawable(2130838090), 0.5F, 0.5F);; l = paramContext.getResources().getDrawable(2130838317))
    {
      k = paramContext.getResources().getDrawable(2130838133);
      l.setCallback(A);
      g = g.a(paramContext, 1.0F);
      o = g.a(paramContext, 4.0F);
      p = g.a(paramContext, 6.0F);
      q = g.a(paramContext, 18.0F);
      y = new AccelerateDecelerateInterpolator();
      C = new HashMap();
      a(paramContext);
      a = g.a(paramContext, 100.0F);
      return;
      h = paramContext.getResources().getDrawable(2130837665);
      i = paramContext.getResources().getDrawable(2130837666);
      f = g.a(paramContext, 8.0F);
      break;
    }
  }
  
  private String a(String paramString, int paramInt)
  {
    float f1 = StaticLayout.getDesiredWidth(paramString, n);
    int i1 = (int)(paramString.length() * paramInt / f1);
    for (;;)
    {
      String str = paramString;
      if (i1 > 0)
      {
        str = paramString.substring(0, i1) + "…";
        if (StaticLayout.getDesiredWidth(str, n) >= paramInt) {}
      }
      else
      {
        return str;
      }
      i1 -= 1;
    }
  }
  
  private void a(Context paramContext)
  {
    n = new TextPaint();
    if (b != null) {
      n.setColor(at.a(paramContext).c(b.c));
    }
    for (;;)
    {
      n.setTextSize(paramContext.getResources().getDimensionPixelSize(2131165465));
      n.setAntiAlias(true);
      n.setDither(true);
      return;
      n.setColor(at.a(paramContext).c(2131558620));
    }
  }
  
  private void a(Canvas paramCanvas, Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramDrawable.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    paramDrawable.draw(paramCanvas);
  }
  
  private void a(Canvas paramCanvas, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramInt3 -= paramInt1;
    Object localObject2 = (Layout)C.get(paramString);
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      if (StaticLayout.getDesiredWidth(paramString, n) <= paramInt3) {
        break label148;
      }
    }
    label148:
    for (localObject2 = a(paramString, paramInt3);; localObject2 = paramString)
    {
      if (G) {}
      for (;;)
      {
        try
        {
          localObject1 = Layout.Alignment.valueOf("ALIGN_LEFT");
          localObject1 = new StaticLayout((CharSequence)localObject2, n, paramInt3, (Layout.Alignment)localObject1, 1.0F, 0.0F, false);
          C.put(paramString, localObject1);
          paramCanvas.save();
          paramCanvas.translate(paramInt1, paramInt2);
          ((Layout)localObject1).draw(paramCanvas);
          paramCanvas.restore();
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          localAlignment = Layout.Alignment.ALIGN_NORMAL;
          continue;
        }
        Layout.Alignment localAlignment = Layout.Alignment.ALIGN_CENTER;
      }
    }
  }
  
  private void a(Canvas paramCanvas, List<String> paramList1, List<String> paramList2, float paramFloat)
  {
    int i6 = paramList1.size();
    int i3 = paramList2.size();
    int i1 = A.getWidth();
    int i7 = (i1 - (i6 - 1) * (g - f) + f * 2) / i6;
    int i4 = (A.getWidth() - (i3 - 1) * (g - f) + f * 2) / i3;
    int i2 = Math.round(n.getFontMetricsInt(null));
    int i5 = (A.getMeasureHeight() - i2) / 2;
    i1 = (int)((i1 + g + f) * paramFloat);
    i1 = 0 - f + i1;
    i2 = 0;
    if (i2 < i6)
    {
      int i8 = i1 + i7;
      if ((B == i2) && (!x)) {}
      for (Drawable localDrawable = i;; localDrawable = h)
      {
        a(paramCanvas, localDrawable, i1, 0, i8, A.getMeasureHeight());
        a(paramCanvas, (String)paramList1.get(i2), i1 + f, i5, i8 - f, A.getMeasureHeight(), i2);
        i1 = g;
        int i9 = f;
        if ((!G) && (c)) {
          a(paramCanvas, k, i8 - k.getIntrinsicWidth(), (A.getMeasureHeight() - k.getIntrinsicHeight()) / 2, i8, (A.getMeasureHeight() + k.getIntrinsicHeight()) / 2);
        }
        i2 += 1;
        i1 = i1 + i8 - i9;
        break;
      }
    }
    i2 = 0;
    if (i2 < i3)
    {
      i6 = i1 + i4;
      if ((B == i2) && (!x)) {}
      for (paramList1 = i;; paramList1 = h)
      {
        a(paramCanvas, paramList1, i1, 0, i6, A.getMeasureHeight());
        a(paramCanvas, (String)paramList2.get(i2), i1 + f, i5, i6 - f, A.getMeasureHeight(), i2);
        i1 = g;
        i7 = f;
        if ((i2 != i3 - 1) && (!G) && (c)) {
          a(paramCanvas, k, i6 - k.getIntrinsicWidth(), (A.getMeasureHeight() - k.getIntrinsicHeight()) / 2, i6, (A.getMeasureHeight() + k.getIntrinsicHeight()) / 2);
        }
        i2 += 1;
        i1 = i1 + i6 - i7;
        break;
      }
    }
  }
  
  private void a(Canvas paramCanvas, String[] paramArrayOfString, float paramFloat)
  {
    int i1 = Math.round(n.getFontMetricsInt(null));
    if (A.getMeasureHeight() > 1000) {
      return;
    }
    int i4 = (A.getMeasureHeight() - i1) / 2;
    int i2;
    label92:
    int i5;
    int i3;
    label128:
    int i6;
    Drawable localDrawable;
    if (H)
    {
      i2 = (a * a() - (d - 1) * (g - f) + f) / d - L;
      i1 = (int)((i2 - g - f) * paramFloat);
      i1 = 0 - f + i1;
      i5 = paramArrayOfString.length;
      i3 = 0;
      if (i3 < i5)
      {
        i6 = i1 + i2;
        if ((B != i3) || (x)) {
          break label430;
        }
        localDrawable = i;
        label164:
        a(paramCanvas, localDrawable, i1, 0, i6, A.getMeasureHeight());
        a(paramCanvas, paramArrayOfString[i3], i1 + f, i4, i6 - f, A.getMeasureHeight(), i3);
        if ((i3 != i5 - 1) && (!c))
        {
          localDrawable = K;
          i1 = (A.getMeasureHeight() - localDrawable.getIntrinsicHeight()) / 2;
          a(paramCanvas, localDrawable, i6, i1, i6 + localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight() + i1);
        }
        if (!c) {
          break label439;
        }
      }
    }
    label430:
    label439:
    for (i1 = g + i6 - f;; i1 = g + i6 - f + K.getIntrinsicWidth())
    {
      if ((i3 != i5 - 1) && (c)) {
        a(paramCanvas, k, i6 - k.getIntrinsicWidth(), (A.getMeasureHeight() - k.getIntrinsicHeight()) / 2, i6, (A.getMeasureHeight() + k.getIntrinsicHeight()) / 2);
      }
      i3 += 1;
      break label128;
      break;
      i2 = (A.getWidth() - (d - 1) * (g - f) + f * 2) / d - L;
      break label92;
      localDrawable = h;
      break label164;
    }
  }
  
  private void a(Canvas paramCanvas, String[] paramArrayOfString, int paramInt1, int paramInt2, float paramFloat)
  {
    int i2 = (A.getWidth() - (paramInt1 - 1) * (g - f) + f * 2) / paramInt1;
    int i3 = (A.getWidth() - (paramInt2 - 1) * (g - f) + f * 2) / paramInt2;
    int i1 = Math.max(paramInt1, paramInt2);
    i2 = (int)(i2 - (i2 - i3) * paramFloat);
    paramInt1 = Math.round(n.getFontMetricsInt(null));
    i3 = (A.getMeasureHeight() - paramInt1) / 2;
    paramInt2 = 0 - f;
    paramInt1 = 0;
    while (paramInt1 < i1)
    {
      int i4 = paramInt2 + i2;
      a(paramCanvas, h, paramInt2, 0, i4, A.getMeasureHeight());
      a(paramCanvas, paramArrayOfString[paramInt1], paramInt2, i3, i4, A.getMeasureHeight(), paramInt1);
      paramInt2 = g + i4 - f;
      paramInt1 += 1;
    }
  }
  
  private void c(Canvas paramCanvas)
  {
    if (H) {
      return;
    }
    int i1 = A.getWidth() - o;
    int i2 = m.getIntrinsicWidth();
    int i3 = A.getMeasureHeight() - o;
    int i4 = m.getIntrinsicHeight();
    a(paramCanvas, m, i1 - i2, i3 - i4, i1, i3);
  }
  
  private void d(Canvas paramCanvas)
  {
    int i1 = A.getWidth() - p;
    int i2 = q;
    int i3 = (A.getMeasureHeight() + q) / 2;
    int i4 = (A.getMeasureHeight() - q) / 2;
    a(paramCanvas, l, i1 - i2, i4, i1, i3);
  }
  
  private void e(Canvas paramCanvas)
  {
    a(paramCanvas, j, 0, 0, A.getWidth(), A.getMeasureHeight());
  }
  
  private void g()
  {
    x = false;
    v = -1L;
  }
  
  public int a()
  {
    return d;
  }
  
  public void a(int paramInt)
  {
    B = paramInt;
  }
  
  public void a(Canvas paramCanvas)
  {
    x = false;
    String[] arrayOfString = e;
    Object localObject1 = arrayOfString;
    if (arrayOfString == null)
    {
      localObject1 = new String[1];
      localObject1[0] = "";
    }
    long l1;
    float f1;
    int i1;
    if (x)
    {
      if (v == -1L) {
        v = System.currentTimeMillis();
      }
      l1 = System.currentTimeMillis() - v;
      if (l1 > w)
      {
        g();
        f1 = 0.0F;
        i1 = 0;
      }
    }
    for (;;)
    {
      if (i1 != 0) {
        if (z.length > e.length)
        {
          localObject1 = z;
          z[0] = e[0];
          label122:
          a(paramCanvas, (String[])localObject1, z.length, e.length, f1);
        }
      }
      for (;;)
      {
        if (!H) {
          e(paramCanvas);
        }
        c(paramCanvas);
        Object localObject2 = null;
        localObject1 = null;
        arrayOfString = null;
        if (r)
        {
          localObject1 = localObject2;
          if (s)
          {
            localObject1 = arrayOfString;
            if ((l instanceof Animatable)) {
              localObject1 = (Animatable)l;
            }
            if (localObject1 != null) {
              ((Animatable)localObject1).start();
            }
            s = false;
          }
          d(paramCanvas);
        }
        if (t)
        {
          if ((l instanceof Animatable)) {
            localObject1 = (Animatable)l;
          }
          if (localObject1 != null) {
            ((Animatable)localObject1).stop();
          }
          t = false;
        }
        if (x) {
          A.postInvalidate();
        }
        return;
        localObject1 = z;
        f1 = (float)l1 * 1.0F / w;
        f1 = y.getInterpolation(f1);
        if (u == -1)
        {
          f1 = (1.0F - f1) * -1.0F;
          i1 = 0;
          break;
        }
        if (u == 1)
        {
          f1 = 0.0F - f1;
          i1 = 0;
          break;
        }
        if (e.length == z.length) {
          break label399;
        }
        i1 = 1;
        break;
        localObject1 = e;
        break label122;
        if (u == 0) {
          f1 = 0.0F;
        }
        a(paramCanvas, (String[])localObject1, f1);
      }
      label399:
      i1 = 0;
      continue;
      f1 = 0.0F;
      i1 = 0;
    }
  }
  
  public void a(b paramb)
  {
    b = paramb;
    h = a;
    i = b;
    c = d;
    f = e;
    K = f;
    L = g.a(J, 14.0F);
    a(J);
  }
  
  public void a(List<String> paramList1, List<String> paramList2, float paramFloat)
  {
    D = paramList1;
    E = paramList2;
    F = paramFloat;
  }
  
  public void a(boolean paramBoolean)
  {
    r = paramBoolean;
    if (r)
    {
      s = true;
      t = false;
      return;
    }
    t = true;
    s = false;
  }
  
  public void a(String[] paramArrayOfString, int paramInt)
  {
    u = paramInt;
    if (u == 1)
    {
      z = new String[d + 1];
      paramInt = 0;
      while (paramInt < e.length)
      {
        z[paramInt] = e[paramInt];
        paramInt += 1;
      }
      z[paramInt] = paramArrayOfString[(paramArrayOfString.length - 1)];
      x = true;
      if (e.length != paramArrayOfString.length) {
        u = 0;
      }
    }
    for (;;)
    {
      if (u == 0)
      {
        if ((e != null) && (e.length != paramArrayOfString.length)) {
          x = true;
        }
        z = e;
      }
      e = paramArrayOfString;
      d = paramArrayOfString.length;
      if ((!H) && (d > 2)) {
        d = 2;
      }
      v = -1L;
      return;
      if (u == -1)
      {
        z = new String[d + 1];
        z[0] = paramArrayOfString[0];
        paramInt = 0;
        while (paramInt < e.length)
        {
          z[(paramInt + 1)] = e[paramInt];
          paramInt += 1;
        }
        x = true;
        if (e.length != paramArrayOfString.length) {
          u = 0;
        }
      }
    }
  }
  
  public int b()
  {
    return a * a() + g.a(J, 10.0F);
  }
  
  public void b(Canvas paramCanvas)
  {
    float f1 = F;
    if (f1 > 0.0F) {}
    for (f1 = 0.0F - f1;; f1 = -1.0F - f1)
    {
      a(paramCanvas, D, E, f1);
      if (!H) {
        e(paramCanvas);
      }
      c(paramCanvas);
      Object localObject3 = null;
      Object localObject1 = null;
      Object localObject2 = null;
      if (r)
      {
        localObject1 = localObject3;
        if (s)
        {
          localObject1 = localObject2;
          if ((l instanceof Animatable)) {
            localObject1 = (Animatable)l;
          }
          if (localObject1 != null) {
            ((Animatable)localObject1).start();
          }
          s = false;
        }
        d(paramCanvas);
      }
      if (t)
      {
        if ((l instanceof Animatable)) {
          localObject1 = (Animatable)l;
        }
        if (localObject1 != null) {
          ((Animatable)localObject1).stop();
        }
        t = false;
      }
      return;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    G = paramBoolean;
    f();
  }
  
  public void c(boolean paramBoolean)
  {
    H = paramBoolean;
  }
  
  public boolean c()
  {
    return x;
  }
  
  public boolean d()
  {
    return r;
  }
  
  public Drawable e()
  {
    return l;
  }
  
  public void f()
  {
    C.clear();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.addressbar.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */