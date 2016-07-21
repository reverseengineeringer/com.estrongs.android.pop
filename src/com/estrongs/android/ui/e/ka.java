package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.view.a.a;
import java.util.List;

public abstract class ka
{
  private WindowManager a;
  protected Context b;
  protected LinearLayout c;
  protected WindowManager.LayoutParams d;
  protected kh e;
  protected int f = 5;
  private boolean g;
  private boolean h;
  private Handler i;
  private Runnable j = new kb(this);
  
  public ka(Context paramContext, boolean paramBoolean)
  {
    b = paramContext;
    g = paramBoolean;
    h = false;
    a = ((WindowManager)b.getSystemService("window"));
    i = new Handler();
    b();
  }
  
  private void e()
  {
    try
    {
      a.addView(c, d);
      c.setVisibility(0);
      if ((e instanceof kr)) {
        ((kr)e).c();
      }
      i.post(new kg(this));
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
    e.a(paramList);
    e();
  }
  
  protected boolean a(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getKeyCode() == 4)
    {
      if (paramKeyEvent.getAction() == 1) {
        i.post(j);
      }
      return true;
    }
    if ((paramKeyEvent.getKeyCode() == 82) && (paramKeyEvent.getAction() == 0) && (h))
    {
      i.post(j);
      return true;
    }
    return false;
  }
  
  protected void b()
  {
    c = new kc(this, b);
    Object localObject = new Rect();
    ((Activity)b).getWindow().getDecorView().getWindowVisibleDisplayFrame((Rect)localObject);
    int k = top;
    d = new WindowManager.LayoutParams();
    d.width = -1;
    d.height = (cu.f(b) - k);
    d.format = -2;
    d.y = k;
    c.setVisibility(8);
    c.setBackgroundDrawable(null);
    c.setOnClickListener(new kd(this));
    localObject = new LinearLayout.LayoutParams(-2, -2);
    if (g)
    {
      e = new ke(this, b, f);
      c.setGravity(85);
      if ((b instanceof jz))
      {
        Rect localRect = ((jz)b).y();
        if (localRect != null)
        {
          height = (localRect.height() - b.getResources().getDimensionPixelSize(2131165305));
          topMargin = (top - k);
          bottomMargin = b.getResources().getDimensionPixelSize(2131165305);
          rightMargin = b.getResources().getDimensionPixelSize(2131165262);
        }
      }
      c.addView(e.a(), (ViewGroup.LayoutParams)localObject);
      return;
    }
    height = d.height;
    e = new kf(this, b, f);
    c.setGravity(17);
    c.addView(e.a(), (ViewGroup.LayoutParams)localObject);
  }
  
  public boolean c()
  {
    return h;
  }
  
  public void d()
  {
    if (c != null) {
      c.setVisibility(8);
    }
    try
    {
      a.removeView(c);
      h = false;
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
 * Qualified Name:     com.estrongs.android.ui.e.ka
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */