package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.client.MobileAdsSettingsParcel;
import com.google.android.gms.ads.internal.client.aq;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.ads.purchase.InAppPurchaseActivity;
import com.google.android.gms.analytics.f;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.wq;
import com.google.android.gms.internal.wr;
import com.google.android.gms.internal.wy;
import com.google.android.gms.internal.xr;
import com.google.android.gms.internal.xt;
import com.google.android.gms.internal.xu;
import com.google.android.gms.internal.xw;
import java.util.regex.Pattern;

@me
public class v
  extends aq
  implements wr, xw
{
  private static final Object e = new Object();
  private static v f;
  xr a;
  String b;
  String c;
  private final Context d;
  private boolean g;
  private boolean h;
  
  v(Context paramContext)
  {
    d = paramContext;
    g = false;
  }
  
  public static v a(Context paramContext)
  {
    synchronized (e)
    {
      if (f == null) {
        f = new v(paramContext.getApplicationContext());
      }
      paramContext = f;
      return paramContext;
    }
  }
  
  public void a(wy paramwy) {}
  
  public void a(wy paramwy, Activity paramActivity)
  {
    if ((paramwy == null) || (paramActivity == null)) {}
    do
    {
      return;
      if ((paramActivity instanceof AdActivity))
      {
        int i = ae.e().e(paramActivity);
        if (i == 1)
        {
          paramwy.b(true);
          paramwy.a("Interstitial Ad");
          return;
        }
        if ((i == 2) || (i == 3))
        {
          paramwy.a("Expanded Ad");
          return;
        }
        paramwy.a(null);
        return;
      }
    } while (!(paramActivity instanceof InAppPurchaseActivity));
    paramwy.a(null);
  }
  
  public void a(String paramString, MobileAdsSettingsParcel paramMobileAdsSettingsParcel)
  {
    synchronized (e)
    {
      if (g)
      {
        b.e("Mobile ads is initialized already.");
        return;
      }
      if (d == null)
      {
        b.e("Fail to initialize mobile ads because context is null.");
        return;
      }
    }
    if (TextUtils.isEmpty(paramString))
    {
      b.e("Fail to initialize mobile ads because ApplicationCode is empty.");
      return;
    }
    g = true;
    b(paramString, paramMobileAdsSettingsParcel);
  }
  
  public boolean a()
  {
    synchronized (e)
    {
      boolean bool = h;
      return bool;
    }
  }
  
  public void b()
  {
    a = xu.a(d).a();
  }
  
  void b(String paramString, MobileAdsSettingsParcel paramMobileAdsSettingsParcel)
  {
    if ((paramMobileAdsSettingsParcel != null) && (c))
    {
      if (!ae.e().a(d.getPackageManager(), d.getPackageName(), "android.permission.INTERNET")) {
        b.b("Missing permission android.permission.INTERNET");
      }
    }
    else {
      return;
    }
    if (!ae.e().a(d.getPackageManager(), d.getPackageName(), "android.permission.ACCESS_NETWORK_STATE"))
    {
      b.b("Missing permission android.permission.ACCESS_NETWORK_STATE");
      return;
    }
    if (!Pattern.matches("ca-app-[a-z0-9_-]+~[a-z0-9_-]+", paramString)) {
      throw new IllegalArgumentException("Please provide a valid application code");
    }
    h = true;
    b = paramString;
    c = d;
    paramString = xu.a(d);
    paramMobileAdsSettingsParcel = new xt(b);
    if (!TextUtils.isEmpty(c)) {
      paramMobileAdsSettingsParcel.a(c);
    }
    paramString.a(paramMobileAdsSettingsParcel.a());
    paramString.a(this);
    wq.a(d).a(this);
    paramString.b();
  }
  
  public int c()
  {
    synchronized (e)
    {
      if (!h) {
        return -1;
      }
      wy localwy = wq.a(d).a();
      if (localwy != null)
      {
        int i = localwy.c();
        return i;
      }
    }
    return -1;
  }
  
  public String d()
  {
    synchronized (e)
    {
      if (!h) {
        return null;
      }
      String str = f.a(d).h();
      return str;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */