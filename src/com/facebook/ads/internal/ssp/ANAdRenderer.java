package com.facebook.ads.internal.ssp;

import android.content.Context;
import android.view.View;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.adapters.l;
import com.facebook.ads.internal.d;
import com.facebook.ads.internal.e;
import com.facebook.ads.internal.view.c;
import org.json.JSONObject;

public class ANAdRenderer
{
  public static String getSupportedCapabilities()
  {
    return d.c();
  }
  
  public static int getTemplateID(int paramInt1, int paramInt2)
  {
    AdSize localAdSize = AdSize.fromWidthAndHeight(paramInt1, paramInt2);
    if (localAdSize == null) {
      return e.a.a();
    }
    switch (ANAdRenderer.1.a[localAdSize.ordinal()])
    {
    default: 
      return e.b.a();
    case 1: 
      return e.f.a();
    case 2: 
      return e.e.a();
    case 3: 
      return e.d.a();
    }
    return e.c.a();
  }
  
  public static View renderAd(Context paramContext, JSONObject paramJSONObject, int paramInt1, int paramInt2, int paramInt3, ANAdRenderer.Listener paramListener)
  {
    try
    {
      paramContext = new c(paramContext, l.a(paramJSONObject), paramInt3, paramListener);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramListener.onAdError(paramContext);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.ssp.ANAdRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */