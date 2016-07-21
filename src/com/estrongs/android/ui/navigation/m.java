package com.estrongs.android.ui.navigation;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.LayoutParams;
import android.support.v4.widget.cz;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.FrameLayout;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.adapter.ListAdapter_NewNavi;
import com.estrongs.android.ui.d.g;
import java.lang.reflect.Field;

public class m
{
  r a;
  boolean b;
  boolean c = false;
  boolean d = true;
  boolean e;
  h f;
  private Context g;
  private FrameLayout h;
  private FrameLayout i;
  private DrawerLayout j;
  private View k;
  private int l;
  private boolean m;
  private ListAdapter_NewNavi n;
  private q o;
  private q p;
  private Handler q = null;
  private int r = -1;
  private int s = -1;
  
  public m(Context paramContext, View paramView1, Handler paramHandler, View paramView2)
  {
    g = paramContext;
    q = paramHandler;
    b = cu.a(g);
    c = cu.c(g);
    if (g.getResources().getConfiguration().orientation == 1) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      m = bool1;
      if (b)
      {
        bool1 = bool2;
        if (!m) {}
      }
      else
      {
        bool1 = true;
      }
      e = bool1;
      j = ((DrawerLayout)paramView1.findViewById(2131624510));
      k = paramView2;
      if (e)
      {
        j.a(2130838144, 8388611);
        h = ((FrameLayout)j.findViewById(2131624511));
        h.addView(k);
      }
      j.a(2130838145, 8388613);
      i = ((FrameLayout)j.findViewById(2131624512));
      a();
      j.setDrawerListener(new n(this));
      n();
      return;
    }
  }
  
  private boolean a(DrawerLayout paramDrawerLayout, int paramInt)
  {
    try
    {
      Field localField = paramDrawerLayout.getClass().getDeclaredField("mLeftDragger");
      localField.setAccessible(true);
      paramDrawerLayout = (cz)localField.get(paramDrawerLayout);
      localField = paramDrawerLayout.getClass().getDeclaredField("mEdgeSize");
      localField.setAccessible(true);
      localField.setInt(paramDrawerLayout, paramInt);
      return true;
    }
    catch (Throwable paramDrawerLayout) {}
    return false;
  }
  
  private boolean b(DrawerLayout paramDrawerLayout, int paramInt)
  {
    try
    {
      Field localField = paramDrawerLayout.getClass().getDeclaredField("mRightDragger");
      localField.setAccessible(true);
      paramDrawerLayout = (cz)localField.get(paramDrawerLayout);
      localField = paramDrawerLayout.getClass().getDeclaredField("mEdgeSize");
      localField.setAccessible(true);
      localField.setInt(paramDrawerLayout, paramInt);
      return true;
    }
    catch (Throwable paramDrawerLayout) {}
    return false;
  }
  
  private void l()
  {
    if (a == null)
    {
      a = new o(this, g, k);
      n = a.b();
    }
  }
  
  private void m()
  {
    if (f == null)
    {
      f = new p(this, (FileExplorerActivity)g, q);
      i.addView(f.a());
    }
  }
  
  private void n()
  {
    float f1 = g.getResources().getDisplayMetrics().density;
    int i1 = g.a(g, 12.0F);
    if (e) {
      if (!a(j, i1)) {
        break label66;
      }
    }
    label66:
    for (r = i1; b(j, i1); r = ((int)(20.0F * f1 + 0.5F)))
    {
      s = i1;
      return;
    }
    s = ((int)(f1 * 20.0F + 0.5F));
  }
  
  public void a()
  {
    l = g.getResources().getDisplayMetrics().widthPixels;
    int i1;
    int i3;
    int i2;
    if ((b) || (!m)) {
      if (c)
      {
        i1 = l * 5 / 9;
        if (!b) {
          break label119;
        }
        i3 = l * 6 / 9;
        i2 = i1;
        i1 = i3;
      }
    }
    for (;;)
    {
      if (e) {
        h.getLayoutParams()).width = i2;
      }
      i.getLayoutParams()).width = i1;
      return;
      i1 = l * 4 / 9;
      break;
      label119:
      i3 = l * 7 / 9;
      i2 = i1;
      i1 = i3;
      continue;
      i2 = l * 4 / 5;
      i1 = i2;
    }
  }
  
  public void a(int paramInt)
  {
    j.b(paramInt, 8388613);
    if (e) {
      j.b(paramInt, 8388611);
    }
  }
  
  public void a(ListAdapter_NewNavi paramListAdapter_NewNavi)
  {
    n = paramListAdapter_NewNavi;
  }
  
  public void a(q paramq)
  {
    if (e)
    {
      o = paramq;
      j.i(h);
    }
  }
  
  public void a(String paramString)
  {
    a(paramString, null);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (n != null) {
      n.a(paramString1, paramString2);
    }
  }
  
  public void b()
  {
    l();
    j.h(h);
  }
  
  public void b(int paramInt)
  {
    c();
  }
  
  public void b(q paramq)
  {
    j.i(i);
    p = paramq;
  }
  
  public void b(String paramString)
  {
    if (n != null) {
      n.a(paramString);
    }
  }
  
  public void c()
  {
    m();
    j.h(i);
  }
  
  public void d()
  {
    if (n != null) {
      n.notifyDataSetChanged();
    }
  }
  
  public void e()
  {
    a(null);
    b(null);
  }
  
  public boolean f()
  {
    if (e) {
      return j.j(h);
    }
    return false;
  }
  
  public boolean g()
  {
    return j.j(i);
  }
  
  public void h()
  {
    e();
    if (e) {
      h.removeAllViews();
    }
    i.removeAllViews();
    if (f != null)
    {
      f.c();
      f = null;
    }
  }
  
  public boolean i()
  {
    return e;
  }
  
  public int j()
  {
    return r;
  }
  
  public int k()
  {
    return s;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */