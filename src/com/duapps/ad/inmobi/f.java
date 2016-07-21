package com.duapps.ad.inmobi;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.webkit.WebView;
import com.duapps.ad.base.l;

class f
  extends Handler
{
  f(e parame, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 100)
    {
      e.a(a);
      l.c("InMobiDataExecutor", "loading js:" + e.b(a));
      if (a.c != null) {
        a.c.a.loadData(e.b(a), "text/html", "UTF-8");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */