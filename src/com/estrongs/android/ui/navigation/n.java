package com.estrongs.android.ui.navigation;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.LayoutParams;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.lang.reflect.Field;

public class n
{
  s a;
  boolean b;
  boolean c = false;
  boolean d = true;
  boolean e;
  a f;
  private Context g;
  private FrameLayout h;
  private FrameLayout i;
  private DrawerLayout j;
  private View k;
  private int l;
  private boolean m;
  private com.estrongs.android.ui.a.aa n;
  private r o;
  private r p;
  private Handler q = null;
  private int r = -1;
  private int s = -1;
  
  public n(Context paramContext, View paramView, Handler paramHandler)
  {
    g = paramContext;
    q = paramHandler;
    b = cl.a(g);
    c = cl.c(g);
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
      j = ((DrawerLayout)paramView.findViewById(2131361998));
      if (e)
      {
        j.a(2130837808, 8388611);
        h = ((FrameLayout)j.findViewById(2131361999));
        k = g.a(g).inflate(2130903196, null);
        h.addView(k);
        l();
      }
      j.a(2130837809, 8388613);
      i = ((FrameLayout)j.findViewById(2131362000));
      m();
      a();
      j.a(new o(this));
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
      paramDrawerLayout = (android.support.v4.widget.aa)localField.get(paramDrawerLayout);
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
      paramDrawerLayout = (android.support.v4.widget.aa)localField.get(paramDrawerLayout);
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
    a = new p(this, g, k);
    n = a.b();
  }
  
  private void m()
  {
    if (f == null)
    {
      f = new q(this, (FileExplorerActivity)g, q);
      i.addView(f.a());
    }
  }
  
  private void n()
  {
    float f1 = g.getResources().getDisplayMetrics().density;
    int i1 = com.estrongs.android.ui.d.a.a(g, 12.0F);
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
    f.a(paramInt);
    c();
  }
  
  public void a(com.estrongs.android.ui.a.aa paramaa)
  {
    n = paramaa;
  }
  
  public void a(r paramr)
  {
    if (e)
    {
      j.i(h);
      o = paramr;
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
    j.h(h);
  }
  
  public void b(r paramr)
  {
    j.i(i);
    p = paramr;
  }
  
  public void b(String paramString)
  {
    if (n != null) {
      n.a(paramString);
    }
  }
  
  public void c()
  {
    j.h(i);
  }
  
  public void d()
  {
    a(null);
    b(null);
  }
  
  public boolean e()
  {
    if (e) {
      return j.j(h);
    }
    return false;
  }
  
  public boolean f()
  {
    return j.j(i);
  }
  
  public void g()
  {
    d();
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
  
  public void h()
  {
    if ((f != null) && (j.j(i))) {
      f.b();
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
 * Qualified Name:     com.estrongs.android.ui.navigation.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */