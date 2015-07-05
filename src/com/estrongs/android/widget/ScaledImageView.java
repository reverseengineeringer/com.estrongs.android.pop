package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import com.estrongs.android.pop.esclasses.ESImageView;

public class ScaledImageView
  extends RelativeLayout
{
  private Drawable a;
  private Handler b;
  private Handler c;
  private bf d;
  private ImageView e;
  private LinearLayout f;
  private int g = -1;
  private boolean h;
  private int i;
  private int j;
  private int k;
  private int l;
  private int m;
  private int n;
  private ViewGroup.LayoutParams o;
  private int p = 300;
  private long q;
  
  public ScaledImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  public ScaledImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d();
  }
  
  private void a(int paramInt)
  {
    e.setAlpha(paramInt);
  }
  
  private void d()
  {
    a = getBackground();
    e = new ESImageView(getContext());
    e.setScaleType(ImageView.ScaleType.FIT_XY);
    e.setBackgroundDrawable(a);
    setBackgroundResource(2130837568);
    setDrawingCacheEnabled(false);
    addView(e, new LinearLayout.LayoutParams(-1, -1));
    e();
  }
  
  private void e()
  {
    b = new bd(this);
    c = new be(this);
  }
  
  private void f()
  {
    if (o == null)
    {
      o = getLayoutParams();
      if (o == null)
      {
        g = -1;
        return;
      }
    }
    o.height = n;
    o.width = m;
    e.getLayoutParams().height = n;
    e.getLayoutParams().width = m;
    c();
    a(a);
    invalidate();
    g();
  }
  
  private void g()
  {
    Message localMessage = new Message();
    if (g == 0) {
      if (h)
      {
        h = false;
        a();
      }
    }
    while (g != 1)
    {
      return;
      b.sendMessageDelayed(localMessage, 20L);
      return;
    }
    if (h)
    {
      h = false;
      b();
      return;
    }
    c.sendMessageDelayed(localMessage, 20L);
  }
  
  public void a()
  {
    g = -1;
    m = i;
    n = k;
    if (o == null) {
      o = getLayoutParams();
    }
    if (o != null)
    {
      o.width = i;
      o.height = k;
    }
    a(255);
    f();
    if (d != null) {
      d.a();
    }
    d = null;
  }
  
  public void a(Drawable paramDrawable)
  {
    e.setImageDrawable(paramDrawable);
    a = paramDrawable;
  }
  
  public void b()
  {
    g = -1;
    m = j;
    n = l;
    if (o == null) {
      o = getLayoutParams();
    }
    if (o != null)
    {
      o.width = j;
      o.height = l;
    }
    a(255);
    f();
    if (d != null) {
      d.a();
    }
    d = null;
  }
  
  public void c()
  {
    if (f != null)
    {
      int i3 = f.getChildCount();
      int i2 = 0;
      int i1 = 0;
      ScaledImageView localScaledImageView;
      if (i2 < i3)
      {
        localScaledImageView = (ScaledImageView)f.getChildAt(i2);
        if (localScaledImageView == null) {}
        for (;;)
        {
          i2 += 1;
          break;
          i1 = m + i1;
        }
      }
      i2 = (f.getMeasuredWidth() - i1) / 2;
      i1 = 0;
      while (i1 < i3)
      {
        localScaledImageView = (ScaledImageView)f.getChildAt(i1);
        int i4 = m;
        int i5 = n;
        localScaledImageView.measure(i4, i5);
        localScaledImageView.layout(i2, localScaledImageView.getTop(), i2 + i4, i5 + localScaledImageView.getTop());
        i2 += i4;
        i1 += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ScaledImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */