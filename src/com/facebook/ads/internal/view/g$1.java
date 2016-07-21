package com.facebook.ads.internal.view;

import android.net.Uri;
import android.util.Log;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.internal.action.a;
import com.facebook.ads.internal.action.b;
import com.facebook.ads.internal.adapters.m;

class g$1
  implements a.a
{
  g$1(g paramg, InterstitialAdActivity paramInterstitialAdActivity) {}
  
  public void a()
  {
    g.b(b).c();
  }
  
  public void a(int paramInt) {}
  
  public void a(String paramString)
  {
    paramString = Uri.parse(paramString);
    if (("fbad".equals(paramString.getScheme())) && ("close".equals(paramString.getAuthority()))) {
      a.finish();
    }
    do
    {
      return;
      g.a(b).a("com.facebook.ads.interstitial.clicked");
      paramString = b.a(a, paramString);
    } while (paramString == null);
    try
    {
      g.a(b, paramString.a());
      g.a(b, System.currentTimeMillis());
      paramString.b();
      return;
    }
    catch (Exception paramString)
    {
      Log.e(g.d(), "Error executing action", paramString);
    }
  }
  
  public void b()
  {
    g.b(b).a();
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.g.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */