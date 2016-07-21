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
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;

public class bw
{
  private WindowManager a;
  private WindowManager.LayoutParams b;
  private View c;
  private LinearLayout d;
  private TextView e;
  private View f;
  private View g;
  private Context h;
  private int i = 0;
  private PopupWindow.OnDismissListener j;
  private boolean k;
  
  public bw(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    h = paramContext;
    a = ((Activity)paramContext).getWindowManager();
    d = new bx(this, paramContext);
    d.setOnClickListener(new by(this));
    paramContext = k.a(paramContext);
    if ((paramBoolean1) || (paramBoolean2)) {}
    for (int m = 2130903259;; m = 2130903260)
    {
      c = paramContext.inflate(m, null);
      if (paramBoolean2)
      {
        paramContext = c.findViewById(2131624964);
        if (paramContext != null) {
          paramContext.setVisibility(0);
        }
        paramContext = c.findViewById(2131624966);
        if (paramContext != null) {
          paramContext.setVisibility(0);
        }
      }
      d.setBackgroundColor(Color.argb(128, 0, 0, 0));
      b = new WindowManager.LayoutParams();
      b.width = -1;
      b.height = -1;
      b.format = -2;
      f = c.findViewById(2131624969);
      if (f != null) {
        f.setVisibility(4);
      }
      g = c.findViewById(2131624971);
      if (g != null) {
        g.setVisibility(4);
      }
      if (!paramBoolean3) {
        c.findViewById(2131624965).setVisibility(4);
      }
      return;
    }
  }
  
  private void e()
  {
    e = new TextView(h);
    e.setTextColor(-1);
    e.setText(2131231553);
    e.setGravity(17);
    e.setTextSize(1, 16.0F);
    int m = g.a(h, 30.0F);
    e.setPadding(m, m, m, m);
    d.addView(e, new LinearLayout.LayoutParams(-1, -1));
  }
  
  public boolean a()
  {
    return k;
  }
  
  public void b()
  {
    switch (i)
    {
    default: 
      i += 1;
    }
    for (;;)
    {
      i += 1;
      return;
      d.removeAllViews();
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
      d.addView(c, localLayoutParams);
      if (f != null) {
        f.setVisibility(0);
      }
      if (at.a(h).o())
      {
        i += 1;
        continue;
        if (g != null)
        {
          g.setVisibility(0);
          continue;
          d();
        }
      }
    }
  }
  
  public void c()
  {
    try
    {
      e();
      a.addView(d, b);
      k = true;
      return;
    }
    catch (Exception localException) {}
  }
  
  public void d()
  {
    try
    {
      a.removeView(d);
      k = false;
      if (j != null) {}
      try
      {
        j.onDismiss();
        return;
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        return;
      }
    }
    catch (Exception localException2)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */