package com.estrongs.android.pop.app.cleaner;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.os.Build.VERSION;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.CoordinatorLayout.Behavior;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import com.estrongs.android.pop.ah;
import java.util.List;

public class SimpleViewBehavior<V extends View>
  extends CoordinatorLayout.Behavior<V>
{
  private int A;
  private Animation B;
  private boolean C;
  private int a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private int l;
  private int m;
  private int n;
  private int o;
  private float p;
  private float q;
  private float r;
  private int s;
  private int t;
  private int u;
  private int v;
  private int w;
  private float x;
  private float y;
  private float z;
  
  public SimpleViewBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ah.EasyCoordinatorView);
    b = paramContext.getResourceId(0, 0);
    a = paramContext.getInt(1, 1);
    c = paramContext.getDimensionPixelOffset(2, Integer.MAX_VALUE);
    d = paramContext.getDimensionPixelOffset(3, Integer.MAX_VALUE);
    e = paramContext.getDimensionPixelOffset(4, Integer.MAX_VALUE);
    f = paramContext.getDimensionPixelOffset(5, Integer.MAX_VALUE);
    s = paramContext.getDimensionPixelOffset(6, Integer.MAX_VALUE);
    t = paramContext.getDimensionPixelOffset(7, Integer.MAX_VALUE);
    u = paramContext.getDimensionPixelOffset(8, Integer.MAX_VALUE);
    v = paramContext.getDimensionPixelOffset(9, Integer.MAX_VALUE);
    w = paramContext.getColor(10, Integer.MAX_VALUE);
    x = paramContext.getFloat(11, Float.MAX_VALUE);
    y = paramContext.getFloat(12, Float.MAX_VALUE);
    z = paramContext.getFloat(13, Float.MAX_VALUE);
    A = paramContext.getResourceId(16, 0);
    paramContext.recycle();
  }
  
  public void a(V paramV, float paramFloat)
  {
    float f2 = 0.0F;
    float f1;
    if (B == null) {
      if (s == Integer.MAX_VALUE)
      {
        f1 = 0.0F;
        if (t != Integer.MAX_VALUE) {
          break label322;
        }
        label30:
        float f4;
        float f3;
        if (u == Integer.MAX_VALUE)
        {
          f4 = f1;
          f3 = f2;
          if (v == Integer.MAX_VALUE) {}
        }
        else
        {
          f4 = m + (u - m) * paramFloat;
          f3 = n + (v - n) * paramFloat;
          paramV.setScaleX(f4 / m);
          paramV.setScaleY(f3 / n);
          f4 = f1 - (m - f4) / 2.0F;
          f3 = f2 - (n - f3) / 2.0F;
        }
        paramV.setTranslationX(f4);
        paramV.setTranslationY(f3);
        if (x != Float.MAX_VALUE) {
          paramV.setAlpha(p + (x - p) * paramFloat);
        }
        if ((w != Integer.MAX_VALUE) && (o != 0)) {
          paramV.setBackgroundColor(((Integer)new ArgbEvaluator().evaluate(paramFloat, Integer.valueOf(o), Integer.valueOf(w))).intValue());
        }
        if (y != Float.MAX_VALUE) {
          paramV.setRotationX(q + (y - q) * paramFloat);
        }
        if (z != Float.MAX_VALUE) {
          paramV.setRotationX(r + (z - r) * paramFloat);
        }
      }
    }
    for (;;)
    {
      paramV.requestLayout();
      return;
      f1 = (s - k) * paramFloat;
      break;
      label322:
      f2 = (t - l) * paramFloat;
      break label30;
      B.setStartTime(0L);
      B.restrictDuration(100L);
      Transformation localTransformation = new Transformation();
      B.getTransformation((100.0F * paramFloat), localTransformation);
      paramV.startAnimation(new al(localTransformation));
    }
  }
  
  public void a(V paramV, View paramView)
  {
    float f5 = 1.0F;
    float f4 = 0.0F;
    float f2;
    float f3;
    switch (a)
    {
    default: 
      f1 = 2.14748365E9F;
      f2 = 0.0F;
      f3 = 0.0F;
      if (f1 != 2.14748365E9F) {
        f4 = Math.abs(f2 - f3) / Math.abs(f1 - f3);
      }
      if (f4 <= 1.0F) {
        break;
      }
    }
    for (float f1 = f5;; f1 = f4)
    {
      a(paramV, f1);
      return;
      f3 = i;
      f2 = paramView.getWidth();
      f1 = e;
      break;
      f3 = j;
      f2 = paramView.getHeight();
      f1 = f;
      break;
      f3 = g;
      f2 = paramView.getX();
      f1 = c;
      break;
      f3 = h;
      f2 = paramView.getY();
      f1 = d;
      break;
    }
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    boolean bool = super.a(paramCoordinatorLayout, paramV, paramInt);
    if (C) {
      a(paramV, (View)paramCoordinatorLayout.d(paramV).get(0));
    }
    return bool;
  }
  
  public boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
  {
    return paramView.getId() == b;
  }
  
  public boolean c(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
  {
    if (!C) {
      e(paramCoordinatorLayout, paramV, paramView);
    }
    k = paramV.getLeft();
    l = paramV.getTop();
    a(paramV, paramView);
    return false;
  }
  
  protected void e(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
  {
    g = ((int)paramView.getX());
    h = ((int)paramView.getY());
    i = paramView.getWidth();
    j = paramView.getHeight();
    k = ((int)paramV.getX());
    l = ((int)paramV.getY());
    m = paramV.getWidth();
    n = paramV.getHeight();
    p = paramV.getAlpha();
    q = paramV.getRotationX();
    r = paramV.getRotationY();
    if ((paramV.getBackground() instanceof ColorDrawable)) {
      o = ((ColorDrawable)paramV.getBackground()).getColor();
    }
    if (A != 0)
    {
      B = AnimationUtils.loadAnimation(paramV.getContext(), A);
      B.initialize(paramV.getWidth(), paramV.getHeight(), paramCoordinatorLayout.getWidth(), paramCoordinatorLayout.getHeight());
    }
    if ((Build.VERSION.SDK_INT > 16) && (paramCoordinatorLayout.getFitsSystemWindows()) && (t != Integer.MAX_VALUE))
    {
      int i1 = 0;
      int i2 = paramCoordinatorLayout.getContext().getResources().getIdentifier("status_bar_height", "dimen", "android");
      if (i2 > 0) {
        i1 = paramCoordinatorLayout.getContext().getResources().getDimensionPixelSize(i2);
      }
      t = (i1 + t);
    }
    C = true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.SimpleViewBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */