package com.duapps.ad.base;

import android.content.Context;
import android.os.SystemClock;
import com.duapps.ad.coin.CoinManager;
import com.duapps.ad.coin.CoinManager.RequestResult;
import com.duapps.ad.coin.d;
import com.duapps.ad.stats.p;
import com.duapps.ad.stats.x;
import java.util.Iterator;
import java.util.List;

final class f
  implements Runnable
{
  f(Context paramContext, p paramp) {}
  
  public void a(Context paramContext, p paramp, boolean paramBoolean)
  {
    if ((paramContext == null) || (paramp == null))
    {
      l.c("DuAdNetwork", "context or record is null");
      return;
    }
    String str = Long.toString(paramp.c());
    d locald = d.a(paramContext);
    t localt = t.a(paramContext);
    boolean bool = locald.a(str, "22v2");
    if (l.a()) {
      l.c("DuAdNetwork", "Try Gain coin pkg=" + paramp.a() + ";id=" + str + ";points=" + paramp.b() + ";isGained=" + bool);
    }
    if (!bool)
    {
      x.a(paramContext, str);
      CoinManager localCoinManager = CoinManager.a(paramContext);
      CoinManager.RequestResult localRequestResult = localCoinManager.b(str, "22");
      h = paramp.a();
      i = paramBoolean;
      if (localRequestResult.a()) {
        localCoinManager.a(a);
      }
      int i = 0;
      if ((c == 412) || (c == 200) || (c == 404))
      {
        locald.b(str, "22v2");
        localt.d(paramp.a());
        i = b - paramp.b();
      }
      CoinManager.a(paramContext, localRequestResult);
      x.a(paramContext, str, c, i);
      return;
    }
    localt.d(paramp.a());
  }
  
  public void run()
  {
    for (;;)
    {
      synchronized ()
      {
        Object localObject2 = t.a(a).a();
        if (b == null)
        {
          l = -1L;
          localObject2 = ((List)localObject2).iterator();
          if (!((Iterator)localObject2).hasNext()) {
            break label123;
          }
          p localp = (p)((Iterator)localObject2).next();
          SystemClock.sleep(DuAdNetwork.g());
          if (l == -1L) {
            break label127;
          }
          if (l == localp.c()) {
            break label132;
          }
          break label127;
          a(a, localp, bool);
        }
      }
      long l = b.c();
      continue;
      label123:
      return;
      label127:
      boolean bool = true;
      continue;
      label132:
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */