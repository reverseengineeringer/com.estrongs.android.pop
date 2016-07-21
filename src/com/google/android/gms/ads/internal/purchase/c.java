package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.internal.kv;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.np;
import com.google.android.gms.internal.oe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@me
public class c
  extends np
  implements ServiceConnection
{
  private final Object a = new Object();
  private boolean b = false;
  private Context c;
  private kv d;
  private b e;
  private i f;
  private List<g> g = null;
  private n h;
  
  public c(Context paramContext, kv paramkv, n paramn)
  {
    this(paramContext, paramkv, paramn, new b(paramContext), i.a(paramContext.getApplicationContext()));
  }
  
  c(Context paramContext, kv paramkv, n paramn, b paramb, i parami)
  {
    c = paramContext;
    d = paramkv;
    h = paramn;
    e = paramb;
    f = parami;
    g = f.a(10L);
  }
  
  private void a(long paramLong)
  {
    do
    {
      if (!b(paramLong)) {
        com.google.android.gms.ads.internal.util.client.b.d("Timeout waiting for pending transaction to be processed.");
      }
    } while (!b);
  }
  
  private boolean b(long paramLong)
  {
    paramLong = 60000L - (SystemClock.elapsedRealtime() - paramLong);
    if (paramLong <= 0L) {
      return false;
    }
    try
    {
      a.wait(paramLong);
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        com.google.android.gms.ads.internal.util.client.b.e("waitWithTimeout_lock interrupted");
      }
    }
  }
  
  public void a()
  {
    synchronized (a)
    {
      Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
      localIntent.setPackage("com.android.vending");
      com.google.android.gms.common.stats.b.a().a(c, localIntent, this, 1);
      a(SystemClock.elapsedRealtime());
      com.google.android.gms.common.stats.b.a().a(c, this);
      e.a();
      return;
    }
  }
  
  protected void a(g paramg, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    ae.o();
    localIntent.putExtra("RESPONSE_CODE", 0);
    ae.o();
    localIntent.putExtra("INAPP_PURCHASE_DATA", paramString1);
    ae.o();
    localIntent.putExtra("INAPP_DATA_SIGNATURE", paramString2);
    oe.a.post(new d(this, paramg, localIntent));
  }
  
  public void b()
  {
    synchronized (a)
    {
      com.google.android.gms.common.stats.b.a().a(c, this);
      e.a();
      return;
    }
  }
  
  protected void c()
  {
    if (g.isEmpty()) {
      return;
    }
    HashMap localHashMap = new HashMap();
    Object localObject1 = g.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (g)((Iterator)localObject1).next();
      localHashMap.put(c, localObject2);
    }
    localObject1 = null;
    for (;;)
    {
      localObject1 = e.b(c.getPackageName(), (String)localObject1);
      if (localObject1 == null) {}
      do
      {
        do
        {
          localObject1 = localHashMap.keySet().iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (String)((Iterator)localObject1).next();
            f.a((g)localHashMap.get(localObject2));
          }
          break;
        } while (ae.o().a((Bundle)localObject1) != 0);
        localObject2 = ((Bundle)localObject1).getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        ArrayList localArrayList1 = ((Bundle)localObject1).getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList localArrayList2 = ((Bundle)localObject1).getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        localObject1 = ((Bundle)localObject1).getString("INAPP_CONTINUATION_TOKEN");
        int i = 0;
        while (i < ((ArrayList)localObject2).size())
        {
          if (localHashMap.containsKey(((ArrayList)localObject2).get(i)))
          {
            String str1 = (String)((ArrayList)localObject2).get(i);
            String str2 = (String)localArrayList1.get(i);
            String str3 = (String)localArrayList2.get(i);
            g localg = (g)localHashMap.get(str1);
            String str4 = ae.o().a(str2);
            if (b.equals(str4))
            {
              a(localg, str2, str3);
              localHashMap.remove(str1);
            }
          }
          i += 1;
        }
      } while ((localObject1 == null) || (localHashMap.isEmpty()));
    }
  }
  
  public void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
  {
    synchronized (a)
    {
      e.a(paramIBinder);
      c();
      b = true;
      a.notify();
      return;
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    com.google.android.gms.ads.internal.util.client.b.c("In-app billing service disconnected.");
    e.a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */