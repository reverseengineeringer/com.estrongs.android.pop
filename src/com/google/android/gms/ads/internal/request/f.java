package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.np;

@me
public final class f
{
  public static np a(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, h paramh)
  {
    return a(paramContext, paramAdRequestInfoParcel, paramh, new g(paramContext));
  }
  
  static np a(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, h paramh, i parami)
  {
    if (parami.a(paramAdRequestInfoParcel)) {
      return b(paramContext, paramAdRequestInfoParcel, paramh);
    }
    return c(paramContext, paramAdRequestInfoParcel, paramh);
  }
  
  private static np b(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, h paramh)
  {
    b.a("Fetching ad response from local ad request service.");
    paramContext = new k(paramContext, paramAdRequestInfoParcel, paramh);
    paramContext.g();
    return paramContext;
  }
  
  private static np c(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, h paramh)
  {
    b.a("Fetching ad response from remote ad request service.");
    if (!m.a().b(paramContext))
    {
      b.e("Failed to connect to remote ad request service.");
      return null;
    }
    return new l(paramContext, paramAdRequestInfoParcel, paramh);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */