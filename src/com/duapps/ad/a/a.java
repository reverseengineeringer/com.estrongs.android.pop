package com.duapps.ad.a;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.duapps.ad.base.ag;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;
import com.duapps.ad.base.r;
import com.google.android.gms.ads.formats.e;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class a
  extends com.duapps.ad.entity.a.a<com.duapps.ad.entity.a.c>
  implements Handler.Callback
{
  private final List<f> a = Collections.synchronizedList(new LinkedList());
  private String i;
  private com.google.android.gms.ads.c j;
  private e k;
  private int l;
  private Handler m;
  private long n;
  
  public a(Context paramContext, int paramInt, long paramLong)
  {
    super(paramContext, paramInt, paramLong);
    i = ag.a(paramContext).c(paramInt);
    e();
    l = 1;
    paramContext = new HandlerThread("adnative", 10);
    paramContext.start();
    m = new Handler(paramContext.getLooper(), this);
  }
  
  public a(Context paramContext, int paramInt1, long paramLong, int paramInt2)
  {
    this(paramContext, paramInt1, paramLong);
    l = paramInt2;
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    com.duapps.ad.stats.b.d(f, g, paramInt2, SystemClock.elapsedRealtime() - n);
    if (paramInt1 > 1) {
      m.obtainMessage(2, paramInt1 - 1, 0).sendToTarget();
    }
    do
    {
      return;
      c = false;
      l.c("AdmobCacheManager", "Refresh result: DONE for geeen count");
    } while (paramInt2 == 200);
    b = true;
  }
  
  private void a(Message paramMessage, int paramInt)
  {
    paramMessage = new f(f, g);
    paramMessage.a(new d(this, paramInt));
    c(paramMessage);
    paramMessage = j.a(paramMessage).a(k.a()).a();
    if (paramMessage != null)
    {
      c = true;
      l.c("AdmobCacheManager", "AdmobCacheManager start refresh ad!");
      paramMessage.a(new com.google.android.gms.ads.f().a());
      n = SystemClock.elapsedRealtime();
    }
  }
  
  private void a(f paramf)
  {
    if ((j == null) || (paramf == null)) {
      return;
    }
    j.a(new b(this, paramf));
  }
  
  private void b(f paramf)
  {
    if ((j == null) || (paramf == null)) {
      return;
    }
    j.a(new c(this, paramf));
  }
  
  private void c(f paramf)
  {
    j = new com.google.android.gms.ads.c(f, i);
    a(paramf);
    b(paramf);
  }
  
  private void e()
  {
    k = new e();
    k.a(true);
    k.a(2);
  }
  
  public void a()
  {
    l.c("AdmobCacheManager", "refresh request....!");
    if (!ap.a(f))
    {
      l.c("AdmobCacheManager", "No Network!");
      return;
    }
    if (TextUtils.isEmpty(i))
    {
      l.c("AdmobCacheManager", "amid is not legal!");
      return;
    }
    m.obtainMessage(0).sendToTarget();
  }
  
  public void a(int paramInt)
  {
    if (paramInt < 0) {
      return;
    }
    l = paramInt;
    d = r.d(f, g);
  }
  
  public com.duapps.ad.entity.a.c b()
  {
    Object localObject1 = null;
    for (;;)
    {
      synchronized (a)
      {
        if (a.size() > 0)
        {
          localObject3 = (f)a.remove(0);
          localObject1 = localObject3;
          if (localObject3 == null) {
            continue;
          }
          localObject1 = localObject3;
          if (!((f)localObject3).b()) {
            continue;
          }
          localObject1 = localObject3;
        }
        if (r.n(f)) {
          a();
        }
        ??? = f;
        if (localObject1 == null)
        {
          localObject3 = "FAIL";
          com.duapps.ad.stats.b.e((Context)???, (String)localObject3, g);
          return (com.duapps.ad.entity.a.c)localObject1;
        }
      }
      Object localObject3 = "OK";
    }
  }
  
  public int c()
  {
    int i1;
    for (;;)
    {
      synchronized (a)
      {
        Iterator localIterator = a.iterator();
        i1 = 0;
        if (!localIterator.hasNext()) {
          break;
        }
        f localf = (f)localIterator.next();
        if ((localf == null) || (!localf.b())) {
          localIterator.remove();
        }
      }
      i1 += 1;
    }
    l.c("AdmobCacheManager", i1 + "");
    return i1;
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    int i1 = what;
    if (i1 == 0)
    {
      m.removeMessages(0);
      if (c)
      {
        l.c("AdmobCacheManager", "Refresh request failed: already refreshing");
        return true;
      }
      c = true;
      e = true;
      i1 = l - c();
      if (i1 > 0)
      {
        m.obtainMessage(2, i1, 0).sendToTarget();
        return true;
      }
      l.c("AdmobCacheManager", "Refresh request OK: green is full");
      c = false;
      return true;
    }
    if (i1 == 2)
    {
      i1 = arg1;
      if (i1 > 0)
      {
        a(paramMessage, i1);
        return true;
      }
      c = false;
      l.c("AdmobCacheManager", "Refresh result: DONE for geeen count");
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */