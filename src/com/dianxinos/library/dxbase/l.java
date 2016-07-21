package com.dianxinos.library.dxbase;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

final class l
  implements h
{
  public void a(Intent arg1)
  {
    NetworkInfo localNetworkInfo = (NetworkInfo)???.getParcelableExtra("networkInfo");
    ??? = localNetworkInfo;
    if (localNetworkInfo == null) {
      ??? = k.a.getActiveNetworkInfo();
    }
    if (??? != null) {
      k.b = ???;
    }
    localNetworkInfo = k.b;
    synchronized (k.c)
    {
      Iterator localIterator = k.c.keySet().iterator();
      while (localIterator.hasNext())
      {
        n localn = (n)localIterator.next();
        if (localn != null) {
          o.b(new m(this, localn, localNetworkInfo));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.dxbase.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */