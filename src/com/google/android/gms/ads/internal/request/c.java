package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.internal.aj;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.np;

@me
public class c
{
  public np a(Context paramContext, a parama, aj paramaj, d paramd)
  {
    if (b.d.getBundle("sdk_less_server_data") != null) {}
    for (paramContext = new y(paramContext, parama, paramd);; paramContext = new zzb(paramContext, parama, paramaj, paramd))
    {
      paramContext.h();
      return paramContext;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */