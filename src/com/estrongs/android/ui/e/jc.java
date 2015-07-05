package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.view.a.a;
import java.util.List;

public abstract class jc
{
  private Context a;
  protected WindowManager.LayoutParams b;
  private LinearLayout c;
  private WindowManager d;
  private boolean e;
  private boolean f;
  private jj g;
  private int h = 5;
  private Handler i;
  private Runnable j = new jd(this);
  
  public jc(Context paramContext, boolean paramBoolean)
  {
    a = paramContext;
    e = paramBoolean;
    f = false;
    d = ((WindowManager)a.getSystemService("window"));
    i = new Handler();
    b();
  }
  
  private void e()
  {
    try
    {
      d.addView(c, b);
      c.setVisibility(0);
      if ((g instanceof jp)) {
        ((jp)g).c();
      }
      i.post(new ji(this));
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
  
  public abstract void a();
  
  public void a(List<a> paramList)
  {
    g.a(paramList);
    e();
  }
  
  protected void b()
  {
    c = new je(this, a);
    b = new WindowManager.LayoutParams();
    b.width = -1;
    b.height = -1;
    b.format = -2;
    c.setVisibility(8);
    c.setBackgroundDrawable(null);
    c.setOnClickListener(new jf(this));
    if (e)
    {
      g = new jg(this, a, h);
      c.setGravity(53);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      if ((a instanceof jb))
      {
        Rect localRect1 = ((jb)a).t();
        if (localRect1 != null)
        {
          Rect localRect2 = new Rect();
          ((Activity)a).getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect2);
          int k = top;
          height = localRect1.height();
          topMargin = (top - k);
        }
      }
      c.addView(g.a(), localLayoutParams);
      return;
    }
    g = new jh(this, a, h);
    c.setGravity(17);
    c.addView(g.a());
  }
  
  public boolean c()
  {
    return f;
  }
  
  public void d()
  {
    if (c != null) {
      c.setVisibility(8);
    }
    try
    {
      d.removeView(c);
      f = false;
      a();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */