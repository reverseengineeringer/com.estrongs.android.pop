package com.estrongs.android.ui.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.g;

public class bn
{
  private WindowManager a;
  private WindowManager.LayoutParams b;
  private View c;
  private LinearLayout d;
  private View e;
  private View f;
  private boolean g;
  
  public bn(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    a = ((Activity)paramContext).getWindowManager();
    d = new bo(this, paramContext);
    paramContext = g.a(paramContext);
    if ((paramBoolean1) || (paramBoolean2)) {}
    for (int i = 2130903152;; i = 2130903153)
    {
      c = paramContext.inflate(i, null);
      if (paramBoolean2)
      {
        paramContext = c.findViewById(2131362356);
        if (paramContext != null) {
          paramContext.setVisibility(0);
        }
        paramContext = c.findViewById(2131362358);
        if (paramContext != null) {
          paramContext.setVisibility(0);
        }
      }
      c.setOnClickListener(new bp(this));
      c.setBackgroundColor(Color.argb(128, 0, 0, 0));
      paramContext = new LinearLayout.LayoutParams(-1, -1);
      d.addView(c, paramContext);
      b = new WindowManager.LayoutParams();
      b.width = -1;
      b.height = -1;
      b.format = -2;
      e = c.findViewById(2131362361);
      if (e != null) {
        e.setVisibility(4);
      }
      f = c.findViewById(2131362363);
      if (f != null) {
        f.setVisibility(4);
      }
      if (!paramBoolean3)
      {
        c.findViewById(2131362357).setVisibility(4);
        e.setVisibility(0);
      }
      return;
    }
  }
  
  public boolean a()
  {
    return g;
  }
  
  public void b()
  {
    if ((e != null) && (e.getVisibility() != 0))
    {
      e.setVisibility(0);
      return;
    }
    if ((f != null) && (f.getVisibility() != 0))
    {
      f.setVisibility(0);
      return;
    }
    d();
  }
  
  public void c()
  {
    try
    {
      a.addView(d, b);
      g = true;
      return;
    }
    catch (Exception localException) {}
  }
  
  public void d()
  {
    try
    {
      a.removeView(d);
      g = false;
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */