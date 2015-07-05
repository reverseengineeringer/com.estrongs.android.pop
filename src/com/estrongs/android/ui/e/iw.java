package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class iw
{
  private Context a;
  protected WindowManager.LayoutParams b;
  View c;
  Animation d;
  private LinearLayout e;
  private WindowManager f;
  private boolean g;
  private boolean h;
  private ja i;
  private boolean j;
  private ic k;
  
  public iw(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramContext;
    g = paramBoolean1;
    j = paramBoolean2;
    h = false;
    f = ((WindowManager)a.getSystemService("window"));
    a();
  }
  
  protected void a()
  {
    e = new ix(this, a);
    b = new WindowManager.LayoutParams();
    b.width = -1;
    b.height = -1;
    b.format = -2;
    e.setVisibility(8);
    e.setBackgroundDrawable(null);
    e.setOnClickListener(new iy(this));
  }
  
  public void a(View paramView)
  {
    c = paramView;
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    if (g)
    {
      e.setGravity(53);
      if ((a instanceof jb))
      {
        Rect localRect1 = ((jb)a).t();
        if (localRect1 != null)
        {
          Rect localRect2 = new Rect();
          ((Activity)a).getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect2);
          int m = top;
          if (!j) {
            height = localRect1.height();
          }
          topMargin = (top - m);
        }
      }
    }
    for (;;)
    {
      e.removeAllViews();
      e.addView(paramView, localLayoutParams);
      return;
      e.setGravity(17);
    }
  }
  
  public void a(ic paramic)
  {
    k = paramic;
  }
  
  public void a(ja paramja)
  {
    i = paramja;
  }
  
  public boolean b()
  {
    return h;
  }
  
  public void c()
  {
    try
    {
      if (k != null) {
        k.a();
      }
      f.addView(e, b);
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    if (d == null)
    {
      d = new AlphaAnimation(0.1F, 1.0F);
      d.setDuration(250L);
      d.setInterpolator(new DecelerateInterpolator());
      d.setAnimationListener(new iz(this));
    }
    d.start();
    c.setAnimation(d);
    e.setVisibility(0);
  }
  
  public void d()
  {
    if (e != null) {
      e.setVisibility(8);
    }
    try
    {
      f.removeView(e);
      h = false;
      if (i != null) {
        i.a();
      }
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.iw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */