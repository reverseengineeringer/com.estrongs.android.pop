package com.facebook.ads.internal.adapters;

import android.util.Log;
import com.facebook.ads.internal.view.e;

class m$1
  implements Runnable
{
  m$1(m paramm) {}
  
  public void run()
  {
    if (m.a(a).b())
    {
      Log.w(m.e(), "Webview already destroyed, cannot activate");
      return;
    }
    m.a(a).loadUrl("javascript:" + m.b(a).e());
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.m.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */