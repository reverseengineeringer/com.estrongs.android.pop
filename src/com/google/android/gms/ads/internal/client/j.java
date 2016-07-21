package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.oe;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

@me
public class j
{
  public static final j a = new j();
  
  public static j a()
  {
    return a;
  }
  
  public AdRequestParcel a(Context paramContext, au paramau)
  {
    Object localObject1 = paramau.a();
    long l;
    String str1;
    int i;
    label59:
    boolean bool1;
    int j;
    Location localLocation;
    Bundle localBundle;
    boolean bool2;
    String str2;
    if (localObject1 != null)
    {
      l = ((Date)localObject1).getTime();
      str1 = paramau.b();
      i = paramau.c();
      localObject1 = paramau.d();
      if (((Set)localObject1).isEmpty()) {
        break label223;
      }
      localObject1 = Collections.unmodifiableList(new ArrayList((Collection)localObject1));
      bool1 = paramau.a(paramContext);
      j = paramau.l();
      localLocation = paramau.e();
      localBundle = paramau.a(com.google.ads.mediation.a.a.class);
      bool2 = paramau.f();
      str2 = paramau.g();
      localObject2 = paramau.i();
      if (localObject2 == null) {
        break label229;
      }
    }
    label223:
    label229:
    for (Object localObject2 = new SearchAdRequestParcel((com.google.android.gms.ads.search.a)localObject2);; localObject2 = null)
    {
      Object localObject3 = null;
      Context localContext = paramContext.getApplicationContext();
      paramContext = (Context)localObject3;
      if (localContext != null)
      {
        paramContext = localContext.getPackageName();
        paramContext = ae.e().a(Thread.currentThread().getStackTrace(), paramContext);
      }
      return new AdRequestParcel(6, l, localBundle, i, (List)localObject1, bool1, j, bool2, str2, (SearchAdRequestParcel)localObject2, localLocation, str1, paramau.k(), paramau.m(), Collections.unmodifiableList(new ArrayList(paramau.n())), paramau.h(), paramContext);
      l = -1L;
      break;
      localObject1 = null;
      break label59;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */