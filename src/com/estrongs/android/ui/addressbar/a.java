package com.estrongs.android.ui.addressbar;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.estrongs.android.pop.ac;
import com.estrongs.android.ui.theme.al;
import java.util.HashMap;
import java.util.List;

public class a
{
  private List<String> A;
  private float B;
  private int a = 1;
  private String[] b;
  private int c;
  private int d;
  private NinePatchDrawable e;
  private NinePatchDrawable f;
  private NinePatchDrawable g;
  private Drawable h;
  private Drawable i;
  private TextPaint j;
  private int k;
  private int l;
  private int m;
  private boolean n;
  private boolean o = false;
  private boolean p = false;
  private int q = 0;
  private long r;
  private int s = 500;
  private boolean t = false;
  private AccelerateDecelerateInterpolator u;
  private String[] v;
  private View w;
  private int x;
  private HashMap<String, Layout> y;
  private List<String> z;
  
  public a(Context paramContext, View paramView)
  {
    w = paramView;
    e = ((NinePatchDrawable)paramContext.getResources().getDrawable(2130837788));
    f = ((NinePatchDrawable)paramContext.getResources().getDrawable(2130837790));
    g = ((NinePatchDrawable)paramContext.getResources().getDrawable(2130837799));
    i = paramContext.getResources().getDrawable(2130837791);
    if (ac.a() < 14) {}
    for (h = new g(paramContext.getResources().getDrawable(2130837771), 0.5F, 0.5F);; h = paramContext.getResources().getDrawable(2130837984))
    {
      h.setCallback(w);
      c = com.estrongs.android.ui.d.a.a(paramContext, 8.0F);
      d = com.estrongs.android.ui.d.a.a(paramContext, 0.0F);
      k = com.estrongs.android.ui.d.a.a(paramContext, 4.0F);
      l = com.estrongs.android.ui.d.a.a(paramContext, 6.0F);
      m = com.estrongs.android.ui.d.a.a(paramContext, 18.0F);
      u = new AccelerateDecelerateInterpolator();
      y = new HashMap();
      a(paramContext);
      return;
    }
  }
  
  private String a(String paramString, int paramInt)
  {
    float f1 = StaticLayout.getDesiredWidth(paramString, j);
    int i1 = (int)(paramString.length() * paramInt / f1);
    for (;;)
    {
      String str = paramString;
      if (i1 > 0)
      {
        str = paramString.substring(0, i1) + "…";
        if (StaticLayout.getDesiredWidth(str, j) >= paramInt) {}
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
    j = new TextPaint();
    j.setColor(al.a(paramContext).d(2131230735));
    j.setTextSize(paramContext.getResources().getDimensionPixelSize(2131296266));
    j.setAntiAlias(true);
    j.setDither(true);
  }
  
  private void a(Canvas paramCanvas, Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramDrawable.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    paramDrawable.draw(paramCanvas);
  }
  
  private void a(Canvas paramCanvas, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramInt3 -= paramInt1;
    Layout localLayout = (Layout)y.get(paramString);
    Object localObject = localLayout;
    if (localLayout == null) {
      if (StaticLayout.getDesiredWidth(paramString, j) <= paramInt3) {
        break label111;
      }
    }
    label111:
    for (localObject = a(paramString, paramInt3);; localObject = paramString)
    {
      localObject = new StaticLayout((CharSequence)localObject, j, paramInt3, Layout.Alignment.ALIGN_CENTER, 1.0F, 0.0F, false);
      y.put(paramString, localObject);
      paramCanvas.save();
      paramCanvas.translate(paramInt1, paramInt2);
      ((Layout)localObject).draw(paramCanvas);
      paramCanvas.restore();
      return;
    }
  }
  
  private void a(Canvas paramCanvas, List<String> paramList1, List<String> paramList2, float paramFloat)
  {
    int i6 = paramList1.size();
    int i3 = paramList2.size();
    int i1 = w.getWidth();
    int i7 = (i1 - (i6 - 1) * (d - c) + c * 2) / i6;
    int i4 = (w.getWidth() - (i3 - 1) * (d - c) + c * 2) / i3;
    int i2 = Math.round(j.getFontMetricsInt(null));
    int i5 = (w.getHeight() - i2) / 2;
    i1 = (int)((i1 + d + c) * paramFloat);
    i1 = 0 - c + i1;
    i2 = 0;
    if (i2 < i6)
    {
      int i8 = i1 + i7;
      if ((x == i2) && (!t)) {}
      for (NinePatchDrawable localNinePatchDrawable = f;; localNinePatchDrawable = e)
      {
        a(paramCanvas, localNinePatchDrawable, i1, 0, i8, w.getHeight());
        a(paramCanvas, (String)paramList1.get(i2), i1 + c, i5, i8 - c, w.getHeight(), i2);
        i1 = d + i8 - c;
        i2 += 1;
        break;
      }
    }
    i2 = 0;
    if (i2 < i3)
    {
      i6 = i1 + i4;
      if ((x == i2) && (!t)) {}
      for (paramList1 = f;; paramList1 = e)
      {
        a(paramCanvas, paramList1, i1, 0, i6, w.getHeight());
        a(paramCanvas, (String)paramList2.get(i2), i1 + c, i5, i6 - c, w.getHeight(), i2);
        i1 = d + i6 - c;
        i2 += 1;
        break;
      }
    }
  }
  
  private void a(Canvas paramCanvas, String[] paramArrayOfString, float paramFloat)
  {
    int i1 = Math.round(j.getFontMetricsInt(null));
    int i3 = (w.getHeight() - i1) / 2;
    int i4 = (w.getWidth() - (a - 1) * (d - c) + c * 2) / a;
    i1 = (int)((i4 - d - c) * paramFloat);
    int i2 = 0 - c + i1;
    int i5 = paramArrayOfString.length;
    i1 = 0;
    if (i1 < i5)
    {
      int i6 = i2 + i4;
      if ((x == i1) && (!t)) {}
      for (NinePatchDrawable localNinePatchDrawable = f;; localNinePatchDrawable = e)
      {
        a(paramCanvas, localNinePatchDrawable, i2, 0, i6, w.getHeight());
        a(paramCanvas, paramArrayOfString[i1], i2 + c, i3, i6 - c, w.getHeight(), i1);
        i2 = d + i6 - c;
        i1 += 1;
        break;
      }
    }
  }
  
  private void a(Canvas paramCanvas, String[] paramArrayOfString, int paramInt1, int paramInt2, float paramFloat)
  {
    int i2 = (w.getWidth() - (paramInt1 - 1) * (d - c) + c * 2) / paramInt1;
    int i3 = (w.getWidth() - (paramInt2 - 1) * (d - c) + c * 2) / paramInt2;
    int i1 = Math.max(paramInt1, paramInt2);
    i2 = (int)(i2 - (i2 - i3) * paramFloat);
    paramInt1 = Math.round(j.getFontMetricsInt(null));
    i3 = (w.getHeight() - paramInt1) / 2;
    paramInt2 = 0 - c;
    paramInt1 = 0;
    while (paramInt1 < i1)
    {
      int i4 = paramInt2 + i2;
      a(paramCanvas, e, paramInt2, 0, i4, w.getHeight());
      a(paramCanvas, paramArrayOfString[paramInt1], paramInt2, i3, i4, w.getHeight(), paramInt1);
      paramInt2 = d + i4 - c;
      paramInt1 += 1;
    }
  }
  
  private void c(Canvas paramCanvas)
  {
    int i1 = w.getWidth() - k;
    int i2 = i.getIntrinsicWidth();
    int i3 = w.getHeight() - k;
    int i4 = i.getIntrinsicHeight();
    a(paramCanvas, i, i1 - i2, i3 - i4, i1, i3);
  }
  
  private void d(Canvas paramCanvas)
  {
    int i1 = w.getWidth() - l;
    int i2 = m;
    int i3 = (w.getHeight() + m) / 2;
    int i4 = (w.getHeight() - m) / 2;
    a(paramCanvas, h, i1 - i2, i4, i1, i3);
  }
  
  private void e(Canvas paramCanvas)
  {
    a(paramCanvas, g, 0, 0, w.getWidth(), w.getHeight());
  }
  
  private void f()
  {
    t = false;
    r = -1L;
  }
  
  public int a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    x = paramInt;
  }
  
  public void a(Canvas paramCanvas)
  {
    t = false;
    String[] arrayOfString = b;
    Object localObject1 = arrayOfString;
    if (arrayOfString == null)
    {
      localObject1 = new String[1];
      localObject1[0] = "";
    }
    long l1;
    float f1;
    int i1;
    if (t)
    {
      if (r == -1L) {
        r = System.currentTimeMillis();
      }
      l1 = System.currentTimeMillis() - r;
      if (l1 > s)
      {
        f();
        f1 = 0.0F;
        i1 = 0;
      }
    }
    for (;;)
    {
      if (i1 != 0) {
        if (v.length > b.length)
        {
          localObject1 = v;
          v[0] = b[0];
          label122:
          a(paramCanvas, (String[])localObject1, v.length, b.length, f1);
        }
      }
      for (;;)
      {
        e(paramCanvas);
        if (!t) {
          c(paramCanvas);
        }
        Object localObject2 = null;
        localObject1 = null;
        arrayOfString = null;
        if (n)
        {
          localObject1 = localObject2;
          if (o)
          {
            localObject1 = arrayOfString;
            if ((h instanceof Animatable)) {
              localObject1 = (Animatable)h;
            }
            if (localObject1 != null) {
              ((Animatable)localObject1).start();
            }
            o = false;
          }
          d(paramCanvas);
        }
        if (p)
        {
          if ((h instanceof Animatable)) {
            localObject1 = (Animatable)h;
          }
          if (localObject1 != null) {
            ((Animatable)localObject1).stop();
          }
          p = false;
        }
        if (t) {
          w.postInvalidate();
        }
        return;
        localObject1 = v;
        f1 = (float)l1 * 1.0F / s;
        f1 = u.getInterpolation(f1);
        if (q == -1)
        {
          f1 = (1.0F - f1) * -1.0F;
          i1 = 0;
          break;
        }
        if (q == 1)
        {
          f1 = 0.0F - f1;
          i1 = 0;
          break;
        }
        if (b.length == v.length) {
          break label399;
        }
        i1 = 1;
        break;
        localObject1 = b;
        break label122;
        if (q == 0) {
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
  
  public void a(List<String> paramList1, List<String> paramList2, float paramFloat)
  {
    z = paramList1;
    A = paramList2;
    B = paramFloat;
  }
  
  public void a(boolean paramBoolean)
  {
    n = paramBoolean;
    if (n)
    {
      o = true;
      p = false;
      return;
    }
    p = true;
    o = false;
  }
  
  public void a(String[] paramArrayOfString, int paramInt)
  {
    q = paramInt;
    if (q == 1)
    {
      v = new String[a + 1];
      paramInt = 0;
      while (paramInt < b.length)
      {
        v[paramInt] = b[paramInt];
        paramInt += 1;
      }
      v[paramInt] = paramArrayOfString[(paramArrayOfString.length - 1)];
      t = true;
      if (b.length != paramArrayOfString.length) {
        q = 0;
      }
    }
    for (;;)
    {
      if (q == 0)
      {
        if ((b != null) && (b.length != paramArrayOfString.length)) {
          t = true;
        }
        v = b;
      }
      b = paramArrayOfString;
      a = paramArrayOfString.length;
      if (a > 2) {
        a = 2;
      }
      r = -1L;
      return;
      if (q == -1)
      {
        v = new String[a + 1];
        v[0] = paramArrayOfString[0];
        paramInt = 0;
        while (paramInt < b.length)
        {
          v[(paramInt + 1)] = b[paramInt];
          paramInt += 1;
        }
        t = true;
        if (b.length != paramArrayOfString.length) {
          q = 0;
        }
      }
    }
  }
  
  public void b(Canvas paramCanvas)
  {
    float f1 = B;
    if (f1 > 0.0F) {}
    for (f1 = 0.0F - f1;; f1 = -1.0F - f1)
    {
      a(paramCanvas, z, A, f1);
      e(paramCanvas);
      Object localObject3 = null;
      Object localObject1 = null;
      Object localObject2 = null;
      if (n)
      {
        localObject1 = localObject3;
        if (o)
        {
          localObject1 = localObject2;
          if ((h instanceof Animatable)) {
            localObject1 = (Animatable)h;
          }
          if (localObject1 != null) {
            ((Animatable)localObject1).start();
          }
          o = false;
        }
        d(paramCanvas);
      }
      if (p)
      {
        if ((h instanceof Animatable)) {
          localObject1 = (Animatable)h;
        }
        if (localObject1 != null) {
          ((Animatable)localObject1).stop();
        }
        p = false;
      }
      return;
    }
  }
  
  public boolean b()
  {
    return t;
  }
  
  public boolean c()
  {
    return n;
  }
  
  public Drawable d()
  {
    return h;
  }
  
  public void e()
  {
    y.clear();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.addressbar.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */