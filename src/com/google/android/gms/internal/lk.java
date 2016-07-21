package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.a;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.ads.internal.w;

@me
public class lk
{
  public np a(Context paramContext, a parama, nh paramnh, aj paramaj, qa paramqa, if paramif, ll paramll, dh paramdh)
  {
    AdResponseParcel localAdResponseParcel = b;
    if (i) {
      paramContext = new lp(paramContext, paramnh, paramqa, paramif, paramll, paramdh);
    }
    for (;;)
    {
      b.a("AdRenderer: " + paramContext.getClass().getName());
      paramContext.h();
      return paramContext;
      if (u)
      {
        if ((parama instanceof w))
        {
          paramContext = new lq(paramContext, (w)parama, new bj(), paramnh, paramaj, paramll);
        }
        else
        {
          paramnh = new StringBuilder().append("Invalid NativeAdManager type. Found: ");
          if (parama != null) {}
          for (paramContext = parama.getClass().getName();; paramContext = "null") {
            throw new IllegalArgumentException(paramContext + "; Required: NativeAdManager.");
          }
        }
      }
      else if (q) {
        paramContext = new lf(paramContext, paramnh, paramqa, paramll);
      } else if ((((Boolean)cz.R.c()).booleanValue()) && (tm.g()) && (!tm.i()) && (hf)) {
        paramContext = new lo(paramContext, paramnh, paramqa, paramll);
      } else {
        paramContext = new lm(paramContext, paramnh, paramqa, paramll);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */