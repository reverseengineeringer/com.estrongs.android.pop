package com.facebook.ads.internal.adapters;

import android.net.Uri;
import android.util.Log;
import com.facebook.ads.internal.action.a;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.view.a.a;

class i$1
  implements a.a
{
  i$1(i parami, l paraml) {}
  
  public void a()
  {
    i.c(b).c();
  }
  
  public void a(int paramInt)
  {
    if ((paramInt == 0) && (i.d(b) > 0L) && (i.e(b) != null))
    {
      c.a(com.facebook.ads.internal.util.b.a(i.d(b), i.e(b), a.i()));
      i.a(b, 0L);
      i.a(b, null);
    }
  }
  
  public void a(String paramString)
  {
    if (i.a(b) != null) {
      i.a(b).onBannerAdClicked(b);
    }
    paramString = Uri.parse(paramString);
    paramString = com.facebook.ads.internal.action.b.a(i.b(b), paramString);
    if (paramString != null) {}
    try
    {
      i.a(b, paramString.a());
      i.a(b, System.currentTimeMillis());
      paramString.b();
      return;
    }
    catch (Exception paramString)
    {
      Log.e(i.a(), "Error executing action", paramString);
    }
  }
  
  public void b()
  {
    b.onViewableImpression();
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.i.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */