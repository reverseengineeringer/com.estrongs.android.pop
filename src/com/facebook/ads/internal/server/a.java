package com.facebook.ads.internal.server;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.AdSettings;
import com.facebook.ads.internal.AdErrorType;
import com.facebook.ads.internal.util.AdInternalSettings;
import com.facebook.ads.internal.util.p;
import com.facebook.ads.internal.util.s;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;

public class a
{
  private static final p g = new p();
  private static final ThreadPoolExecutor h = (ThreadPoolExecutor)Executors.newCachedThreadPool(g);
  Map<String, String> a;
  private final b b = b.a();
  private a.a c;
  private com.facebook.ads.internal.dto.e d;
  private com.facebook.ads.internal.http.a e;
  private final String f;
  
  public a()
  {
    String str = AdSettings.getUrlPrefix();
    if (AdInternalSettings.shouldUseLiveRailEndpoint())
    {
      if (s.a(str)) {}
      for (str = "https://ad6.liverail.com/";; str = String.format("https://ad6.%s.liverail.com/", new Object[] { str }))
      {
        f = str;
        return;
      }
    }
    if (s.a(str)) {}
    for (str = "https://graph.facebook.com/network_ads_common/";; str = String.format("https://graph.%s.facebook.com/network_ads_common/", new Object[] { str }))
    {
      f = str;
      return;
    }
  }
  
  private void a(com.facebook.ads.internal.b paramb)
  {
    if (c != null) {
      new Handler(Looper.getMainLooper()).post(new a.4(this, paramb));
    }
    a();
  }
  
  private void a(d paramd)
  {
    if (c != null) {
      new Handler(Looper.getMainLooper()).post(new a.3(this, paramd));
    }
    a();
  }
  
  private void a(String paramString)
  {
    for (;;)
    {
      try
      {
        localObject1 = b.a(paramString);
        switch (a.5.a[localObject1.a().ordinal()])
        {
        case 1: 
          a(AdErrorType.UNKNOWN_RESPONSE.getAdErrorWrapper(paramString));
          return;
        }
      }
      catch (Exception paramString)
      {
        a(AdErrorType.PARSER_FAILURE.getAdErrorWrapper(paramString.getMessage()));
        return;
      }
      Object localObject1 = (d)localObject1;
      Object localObject2 = ((d)localObject1).b().a();
      com.facebook.ads.internal.util.d.a(((com.facebook.ads.internal.dto.d)localObject2).c(), d);
      if (((com.facebook.ads.internal.dto.d)localObject2).d()) {
        com.facebook.ads.internal.util.d.a(paramString, d);
      }
      a((d)localObject1);
      return;
      localObject1 = ((e)localObject1).b();
      localObject2 = AdErrorType.ERROR_MESSAGE;
      if (localObject1 != null) {
        paramString = (String)localObject1;
      }
      a(((AdErrorType)localObject2).getAdErrorWrapper(paramString));
      return;
    }
  }
  
  private boolean a(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
      return true;
    }
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((paramContext != null) && (paramContext.isConnected())) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  private com.facebook.ads.internal.http.c b()
  {
    return new a.2(this);
  }
  
  public void a()
  {
    if (e != null)
    {
      e.a(true);
      e = null;
    }
  }
  
  public void a(Context paramContext, com.facebook.ads.internal.dto.e parame)
  {
    a();
    if (!a(paramContext))
    {
      a(new com.facebook.ads.internal.b(AdErrorType.NETWORK_ERROR, "No network connection"));
      return;
    }
    d = parame;
    if (com.facebook.ads.internal.util.d.a(parame))
    {
      paramContext = com.facebook.ads.internal.util.d.c(parame);
      if (paramContext != null)
      {
        a(paramContext);
        return;
      }
      a(AdErrorType.LOAD_TOO_FREQUENTLY.getAdErrorWrapper(null));
      return;
    }
    h.submit(new a.1(this, paramContext, parame));
  }
  
  public void a(a.a parama)
  {
    c = parama;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.server.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */