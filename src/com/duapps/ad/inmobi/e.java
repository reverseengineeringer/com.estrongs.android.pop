package com.duapps.ad.inmobi;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;

public class e
  implements Runnable
{
  public IMData a;
  public IMData.AdOperationType b;
  public n c;
  private Context d;
  private h e;
  private volatile boolean f = false;
  private String g;
  private Handler h = new f(this, Looper.getMainLooper());
  
  public e(Context paramContext, n paramn, IMData paramIMData, IMData.AdOperationType paramAdOperationType, h paramh)
  {
    d = paramContext;
    c = paramn;
    a = paramIMData;
    b = paramAdOperationType;
    if (paramn != null) {
      c = false;
    }
    e = paramh;
  }
  
  private void a()
  {
    a(a.a(b));
  }
  
  private void a(String paramString)
  {
    if (!ap.a(d))
    {
      f = false;
      if (c != null) {
        c.c = false;
      }
      return;
    }
    f = true;
    g = paramString;
    h.sendEmptyMessage(100);
  }
  
  private void b()
  {
    a(a.b());
  }
  
  private void c()
  {
    if (c == null)
    {
      f = false;
      return;
    }
    c.a.setWebViewClient(new g(this));
  }
  
  private void d()
  {
    if (e != null) {
      e.a(this);
    }
  }
  
  public void run()
  {
    int i = 1;
    l.c("InMobiDataExecutor", " started");
    if (f) {}
    for (;;)
    {
      return;
      f = true;
      if ((b == IMData.AdOperationType.Impression) && (!a.K)) {}
      while (i != 0)
      {
        a();
        return;
        if ((b == IMData.AdOperationType.Click) && (!a.L))
        {
          if (!a.K) {
            b();
          }
        }
        else {
          i = 0;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */