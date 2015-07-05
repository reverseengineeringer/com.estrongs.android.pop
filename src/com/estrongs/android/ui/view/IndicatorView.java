package com.estrongs.android.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.d.d;
import com.estrongs.android.ui.theme.al;
import java.util.LinkedList;
import java.util.List;

public abstract class IndicatorView
  extends View
{
  private static final int[] a = { -16842910 };
  private static final int[] b = { 16842910 };
  private TextPaint c;
  private List<be> d = new LinkedList();
  private int e = -1;
  private int f = 0;
  private long g;
  private long h = 300L;
  private Handler i = new ba(this);
  private View.OnClickListener j = new bb(this);
  private int k = -1;
  private View.OnTouchListener l = new bc(this);
  private View.OnKeyListener m = new bd(this);
  
  public IndicatorView(Context paramContext)
  {
    super(paramContext);
    d();
  }
  
  public IndicatorView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  public IndicatorView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d();
  }
  
  private void a(Canvas paramCanvas, be parambe, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((parambe.e()) || (paramBoolean))
    {
      localObject = be.a(parambe);
      ((NinePatchDrawable)localObject).setBounds(paramInt1, be.b(parambe), paramInt2, paramInt3 - be.b(parambe));
      ((NinePatchDrawable)localObject).draw(paramCanvas);
    }
    Object localObject = parambe.d();
    int n = parambe.b() + paramInt1;
    paramInt1 = be.c(parambe) + n;
    int i1 = (paramInt3 - be.c(parambe)) / 2;
    ((Drawable)localObject).setBounds(n, i1, paramInt1, be.c(parambe) + i1);
    ((Drawable)localObject).draw(paramCanvas);
    if (parambe.f())
    {
      n = Math.round(c.getFontMetricsInt(null));
      i1 = paramInt1 + parambe.c();
      int i2 = paramInt2 - parambe.b();
      paramInt2 = i2 - i1;
      paramInt1 = paramInt2;
      if (paramInt2 < 0) {
        paramInt1 = 0;
      }
      paramInt2 = (paramInt3 - n) / 2;
      parambe = new StaticLayout(be.d(parambe), g(), paramInt1, Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
      paramCanvas.save();
      paramCanvas.clipRect(i1, paramInt2, i2, paramInt2 + n);
      paramCanvas.translate(i1, paramInt2);
      parambe.draw(paramCanvas);
      paramCanvas.restore();
    }
  }
  
  private int d(int paramInt)
  {
    int i2 = d.size();
    if (i2 == 0) {
      return -1;
    }
    int n = getWidth();
    int i1 = getHeight();
    if ((n == 0) || (i1 == 0)) {
      return -1;
    }
    i1 = (n - e()) / 2;
    n = 0;
    while (n < i2)
    {
      int i3 = e + i1;
      i1 = ((be)d.get(n)).a() + i3;
      if (((!isFocused()) || (f != n)) || ((paramInt >= i3) && (paramInt < i1))) {
        return n;
      }
      n += 1;
    }
    return -1;
  }
  
  private void d()
  {
    setFocusable(true);
    super.setOnKeyListener(m);
    super.setOnClickListener(j);
    super.setOnTouchListener(l);
  }
  
  private int e()
  {
    int n = 0;
    int i1 = 0;
    while (n < d.size())
    {
      i1 += ((be)d.get(n)).a();
      n += 1;
    }
    return f() * (d.size() + 1) + i1;
  }
  
  private int f()
  {
    if (e == -1) {
      e = a.a(getContext(), 2.0F);
    }
    return e;
  }
  
  private TextPaint g()
  {
    if (c == null)
    {
      c = new TextPaint();
      c.setColor(al.a(getContext()).d(2131230734));
      c.setDither(true);
      c.setAntiAlias(true);
      c.setTextSize(getContext().getResources().getDimension(2131296265));
    }
    return c;
  }
  
  public int a()
  {
    if (d == null) {
      return 0;
    }
    return d.size();
  }
  
  public abstract void a(int paramInt);
  
  public void a(int paramInt, float paramFloat)
  {
    if (paramInt >= 0) {}
    try
    {
      if (paramInt < d.size())
      {
        ((be)d.get(paramInt)).a(paramFloat);
        invalidate();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a(paramInt1, paramInt2, false);
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    g = System.currentTimeMillis();
    Message localMessage = new Message();
    what = 3;
    arg1 = paramInt1;
    arg2 = paramInt2;
    obj = Boolean.valueOf(paramBoolean);
    i.sendMessage(localMessage);
  }
  
  public void a(int paramInt, d paramd)
  {
    if (paramInt >= 0) {}
    try
    {
      if (paramInt < a())
      {
        be localbe = (be)d.get(paramInt);
        if (localbe != null)
        {
          localbe.a(paramd);
          invalidate();
        }
      }
      return;
    }
    catch (Exception paramd)
    {
      paramd.printStackTrace();
    }
  }
  
  public void a(d paramd)
  {
    try
    {
      paramd = new be(this, paramd);
      d.add(paramd);
      invalidate();
      return;
    }
    catch (Exception paramd)
    {
      paramd.printStackTrace();
    }
  }
  
  public void a(d paramd, int paramInt)
  {
    try
    {
      paramd = new be(this, paramd);
      d.add(paramInt, paramd);
      invalidate();
      return;
    }
    catch (Exception paramd)
    {
      paramd.printStackTrace();
    }
  }
  
  public void b(int paramInt)
  {
    int n = 0;
    for (;;)
    {
      try
      {
        if (n < d.size()) {
          if (n == paramInt) {
            ((be)d.get(n)).a(1.0F);
          } else {
            ((be)d.get(n)).a(0.0F);
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      invalidate();
      return;
      n += 1;
    }
  }
  
  public void c(int paramInt)
  {
    try
    {
      d.remove(paramInt);
      invalidate();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    try
    {
      int i2 = d.size();
      if (i2 == 0) {
        return;
      }
      int n = getWidth();
      int i3 = getHeight();
      if ((n != 0) && (i3 != 0))
      {
        int i1 = (n - e()) / 2;
        n = 0;
        if (n < i2)
        {
          int i4 = i1 + e;
          be localbe = (be)d.get(n);
          i1 = i4 + localbe.a();
          if ((isFocused()) && (f == n)) {}
          for (boolean bool = true;; bool = false)
          {
            a(paramCanvas, localbe, i4, i1, i3, bool);
            n += 1;
            break;
          }
        }
      }
      return;
    }
    catch (Exception paramCanvas)
    {
      paramCanvas.printStackTrace();
    }
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    if (paramBoolean) {
      f = 0;
    }
    invalidate();
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener) {}
  
  public void setOnKeyListener(View.OnKeyListener paramOnKeyListener) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.IndicatorView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */