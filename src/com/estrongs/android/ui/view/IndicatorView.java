package com.estrongs.android.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Handler;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import java.util.LinkedList;
import java.util.List;

public abstract class IndicatorView
  extends View
{
  private static final int[] a = { -16842910 };
  private static final int[] b = { 16842910 };
  private TextPaint c;
  private List<bn> d = new LinkedList();
  private int e = -1;
  private int f = 0;
  private long g;
  private long h = 300L;
  private Handler i = new bj(this);
  private View.OnClickListener j = new bk(this);
  private int k = -1;
  private View.OnTouchListener l = new bl(this);
  private View.OnKeyListener m = new bm(this);
  private boolean n = false;
  
  public IndicatorView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c();
  }
  
  public IndicatorView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c();
  }
  
  private void a(Canvas paramCanvas, bn parambn, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((parambn.e()) || (paramBoolean))
    {
      localObject = bn.a(parambn);
      ((NinePatchDrawable)localObject).setBounds(paramInt1, bn.b(parambn), paramInt2, paramInt3 - bn.b(parambn));
      ((NinePatchDrawable)localObject).draw(paramCanvas);
    }
    Object localObject = parambn.d();
    int i1 = parambn.b() + paramInt1;
    paramInt1 = bn.c(parambn) + i1;
    int i2 = (paramInt3 - bn.c(parambn)) / 2;
    ((Drawable)localObject).setBounds(i1, i2, paramInt1, bn.c(parambn) + i2);
    ((Drawable)localObject).draw(paramCanvas);
    if (parambn.f())
    {
      i1 = Math.round(c.getFontMetricsInt(null));
      i2 = paramInt1 + parambn.c();
      int i3 = paramInt2 - parambn.b();
      paramInt2 = i3 - i2;
      paramInt1 = paramInt2;
      if (paramInt2 < 0) {
        paramInt1 = 0;
      }
      paramInt2 = (paramInt3 - i1) / 2;
      parambn = new StaticLayout(bn.d(parambn), getTextPaint(), paramInt1, Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
      paramCanvas.save();
      paramCanvas.clipRect(i2, paramInt2, i3, paramInt2 + i1);
      paramCanvas.translate(i2, paramInt2);
      parambn.draw(paramCanvas);
      paramCanvas.restore();
    }
  }
  
  private void c()
  {
    setFocusable(true);
    super.setOnKeyListener(m);
    super.setOnClickListener(j);
    super.setOnTouchListener(l);
  }
  
  private int d(int paramInt)
  {
    int i3 = d.size();
    if (i3 == 0) {
      return -1;
    }
    int i1 = getWidth();
    int i2 = getHeight();
    if ((i1 == 0) || (i2 == 0)) {
      return -1;
    }
    i2 = (i1 - getTotalWidth()) / 2;
    i1 = 0;
    while (i1 < i3)
    {
      int i4 = e + i2;
      i2 = ((bn)d.get(i1)).a() + i4;
      if (((!isFocused()) || (f != i1)) || ((paramInt >= i4) && (paramInt < i2))) {
        return i1;
      }
      i1 += 1;
    }
    return -1;
  }
  
  private int getIndicatorPadding()
  {
    if (e == -1) {
      e = g.a(getContext(), 2.0F);
    }
    return e;
  }
  
  private TextPaint getTextPaint()
  {
    if (c == null)
    {
      c = new TextPaint();
      c.setColor(at.a(getContext()).c(2131558624));
      c.setDither(true);
      c.setAntiAlias(true);
      c.setTextSize(getContext().getResources().getDimension(2131165347));
    }
    return c;
  }
  
  private int getTotalWidth()
  {
    int i1 = 0;
    int i2 = 0;
    while (i1 < d.size())
    {
      i2 += ((bn)d.get(i1)).a();
      i1 += 1;
    }
    return getIndicatorPadding() * (d.size() + 1) + i2;
  }
  
  public void a(int paramInt)
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        if (i1 < d.size()) {
          if (i1 == paramInt) {
            ((bn)d.get(i1)).a(1.0F);
          } else {
            ((bn)d.get(i1)).a(0.0F);
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
      i1 += 1;
    }
  }
  
  public void b(int paramInt)
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
  
  public abstract void c(int paramInt);
  
  public int getIndicatorCount()
  {
    if (d == null) {
      return 0;
    }
    return d.size();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    try
    {
      int i3 = d.size();
      if (i3 == 0) {
        return;
      }
      int i1 = getWidth();
      int i4 = getHeight();
      if ((i1 != 0) && (i4 != 0))
      {
        int i2 = (i1 - getTotalWidth()) / 2;
        i1 = 0;
        if (i1 < i3)
        {
          int i5 = i2 + e;
          bn localbn = (bn)d.get(i1);
          i2 = i5 + localbn.a();
          if ((isFocused()) && (f == i1)) {}
          for (boolean bool = true;; bool = false)
          {
            a(paramCanvas, localbn, i5, i2, i4, bool);
            i1 += 1;
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
  
  public void setIsSimpleMode(boolean paramBoolean)
  {
    n = paramBoolean;
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener) {}
  
  public void setOnKeyListener(View.OnKeyListener paramOnKeyListener) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.IndicatorView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */