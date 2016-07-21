package com.estrongs.android.ui.f;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v7.view.ViewPropertyAnimatorCompatSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.l;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class a
{
  private Activity a;
  private View b;
  private WindowManager c;
  private WindowManager.LayoutParams d;
  private FrameLayout e;
  private Rect f = new Rect();
  private float g;
  private ArrayList<View> h = new ArrayList();
  private List<com.estrongs.android.view.a.a> i;
  private View j;
  private boolean k = false;
  
  public a(Activity paramActivity, View paramView, List<com.estrongs.android.view.a.a> paramList)
  {
    b = paramView;
    a = paramActivity;
    i = paramList;
    c();
  }
  
  private ex a(View paramView, int paramInt1, int paramInt2)
  {
    cn.c(paramView, 0.3F);
    cn.h(paramView, 0.1F);
    cn.i(paramView, 0.3F);
    cn.j(paramView, paramView.getWidth() / 2);
    cn.k(paramView, paramView.getHeight() / 2);
    paramView = cn.s(paramView);
    paramView.a(1.0F).b(paramInt1 - f.centerX()).c(paramInt2 - f.centerY()).e(1.0F).f(1.0F);
    return paramView;
  }
  
  private void c()
  {
    c = a.getWindowManager();
    e = new b(this, a);
    e.setBackgroundColor(Color.argb(70, 0, 0, 0));
    d = new WindowManager.LayoutParams(-1, -1, 0, 0, 1000, 0, -3);
    Object localObject = d;
    flags |= 0x100;
    e.setOnClickListener(new c(this));
    localObject = new int[2];
    b.getLocationOnScreen((int[])localObject);
    f.set(localObject[0], localObject[1], localObject[0] + b.getWidth(), localObject[1] + b.getHeight());
    d();
  }
  
  private void d()
  {
    int m = 0;
    while (m < i.size() + 1)
    {
      View localView = LayoutInflater.from(a).inflate(2130903238, e, false);
      h.add(localView);
      if (m < i.size())
      {
        localObject = (com.estrongs.android.view.a.a)i.get(m);
        FloatingActionButton localFloatingActionButton = (FloatingActionButton)localView.findViewById(2131624938);
        Drawable localDrawable = a.getResources().getDrawable(((com.estrongs.android.view.a.a)localObject).b());
        localDrawable.mutate();
        localDrawable = android.support.v4.b.a.a.f(localDrawable);
        android.support.v4.b.a.a.a(localDrawable, at.a(a).c(2131558713));
        localFloatingActionButton.setImageDrawable(localDrawable);
        localFloatingActionButton.setOnClickListener(new d(this, (com.estrongs.android.view.a.a)localObject));
      }
      Object localObject = new FrameLayout.LayoutParams(-2, -2);
      gravity = 85;
      e.addView(localView, (ViewGroup.LayoutParams)localObject);
      m += 1;
    }
  }
  
  private void e()
  {
    int n = f.centerX();
    int m = f.centerY();
    int i1 = f.width() / 2;
    l.e("test", "anchorRangeRadius : " + i1);
    l.e("test", "anchorWidth : " + f.width());
    i1 *= 3;
    ViewPropertyAnimatorCompatSet localViewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet().play(a((View)h.get(0), (int)(n - Math.cos(0.2617993877991494D) * i1), (int)(m - Math.sin(0.2617993877991494D) * i1)));
    View localView = (View)h.get(1);
    n = (int)(n - Math.cos(1.3089969389957472D) * i1);
    double d1 = m;
    double d2 = Math.sin(1.3089969389957472D);
    localViewPropertyAnimatorCompatSet.play(a(localView, n, (int)(d1 - i1 * d2))).setDuration(300L).setInterpolator(new OvershootInterpolator()).setListener(new e(this)).start();
  }
  
  private void f()
  {
    Object localObject = (View)h.get(2);
    j = ((View)localObject);
    localObject = (FloatingActionButton)((View)localObject).findViewById(2131624938);
    ((FloatingActionButton)localObject).setBackgroundTintList(new ColorStateList((int[][])Array.newInstance(Integer.TYPE, new int[] { 1, 1 }), new int[] { at.a(a).c(2131558589) }));
    ((FloatingActionButton)localObject).setImageResource(2130837893);
    ((FloatingActionButton)localObject).setOnClickListener(new f(this));
  }
  
  private void g()
  {
    try
    {
      k = true;
      b.setVisibility(0);
      c.removeView(e);
      cn.l(b, g);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public void a()
  {
    try
    {
      c.addView(e, d);
      e();
      f();
      g = cn.w(b);
      cn.l(b, 0.0F);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void b()
  {
    g();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */