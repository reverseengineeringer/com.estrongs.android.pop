package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.ads.internal.util.client.b;

@me
public class lo
  extends lm
{
  private Object i = new Object();
  private PopupWindow j;
  private boolean k = false;
  
  lo(Context paramContext, nh paramnh, qa paramqa, ll paramll)
  {
    super(paramContext, paramnh, paramqa, paramll);
  }
  
  private void d()
  {
    synchronized (i)
    {
      k = true;
      if (((c instanceof Activity)) && (((Activity)c).isDestroyed())) {
        j = null;
      }
      if (j != null)
      {
        if (j.isShowing()) {
          j.dismiss();
        }
        j = null;
      }
      return;
    }
  }
  
  protected void a(ng paramng)
  {
    d();
    super.a(paramng);
  }
  
  public void b()
  {
    d();
    super.b();
  }
  
  protected void c()
  {
    if ((c instanceof Activity)) {}
    Object localObject2;
    for (Window localWindow = ((Activity)c).getWindow();; localObject2 = null)
    {
      if ((localWindow == null) || (localWindow.getDecorView() == null)) {}
      while (((Activity)c).isDestroyed()) {
        return;
      }
      FrameLayout localFrameLayout = new FrameLayout(c);
      localFrameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
      localFrameLayout.addView(d.getWebView(), -1, -1);
      synchronized (i)
      {
        if (k) {
          return;
        }
      }
      j = new PopupWindow(localFrameLayout, 1, 1, false);
      j.setOutsideTouchable(true);
      j.setClippingEnabled(false);
      b.a("Displaying the 1x1 popup off the screen.");
      try
      {
        j.showAtLocation(((Window)localObject1).getDecorView(), 0, -1, -1);
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          j = null;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */