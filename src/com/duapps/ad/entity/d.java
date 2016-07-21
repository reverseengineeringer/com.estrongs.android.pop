package com.duapps.ad.entity;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import com.duapps.ad.base.ag;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;
import com.duapps.ad.base.r;
import com.duapps.ad.entity.a.a;
import com.duapps.ad.entity.a.c;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class d
  extends a
  implements Handler.Callback
{
  private final List<String> a;
  private int i;
  private int j = 0;
  private final List<h> k = Collections.synchronizedList(new LinkedList());
  private Handler l;
  private Context m = null;
  
  public d(Context paramContext, int paramInt1, long paramLong, int paramInt2)
  {
    super(paramContext, paramInt1, paramLong);
    m = paramContext;
    ap.a(paramInt1);
    paramContext = new HandlerThread("fbnative", 10);
    paramContext.start();
    l = new Handler(paramContext.getLooper(), this);
    a = ag.a(m).a(paramInt1);
    if ((a == null) || (a.size() <= 0))
    {
      l.d("FbCache", "Refresh request failed: no available Placement Id");
      b = true;
      i = 0;
      return;
    }
    int n;
    if (paramInt2 > 0)
    {
      n = paramInt2;
      if (paramInt2 <= 5) {}
    }
    else
    {
      n = 1;
    }
    i = n;
    if ((com.duapps.ad.entity.a.b.a == paramInt1) || (com.duapps.ad.entity.a.b.b == paramInt1)) {
      a(2);
    }
    l.sendEmptyMessageDelayed(1, 3300000L);
  }
  
  private void a(Message paramMessage, int paramInt)
  {
    paramMessage = e();
    if (paramMessage == null)
    {
      l.c("FbCache", "placementId is null");
      return;
    }
    h localh = new h(m, paramMessage, g);
    localh.a(new e(this, paramMessage, localh, SystemClock.elapsedRealtime(), paramInt));
    localh.b();
  }
  
  private String e()
  {
    if ((a == null) || (a.size() == 0)) {
      return null;
    }
    if (j > a.size() - 1) {
      j %= a.size();
    }
    synchronized (a)
    {
      String str = (String)a.get(j);
      j = ((j + 1) % a.size());
      return str;
    }
  }
  
  public void a()
  {
    if (!ap.a(m))
    {
      l.c("FbCache", "no net");
      return;
    }
    if (!ap.a(m, "com.facebook.katana"))
    {
      l.c("FbCache", "facebook not installed");
      return;
    }
    l.c("FbCache", "Refresh request...");
    if (i <= 0)
    {
      l.c("FbCache", "Refresh request failed: no available Placement Id");
      return;
    }
    l.obtainMessage(0).sendToTarget();
  }
  
  public void a(int paramInt)
  {
    int n;
    if (paramInt > 0)
    {
      n = paramInt;
      if (paramInt <= 5) {}
    }
    else
    {
      n = 1;
    }
    i = n;
    d = r.b(m, g);
    if ((com.duapps.ad.entity.a.b.a == g) || (com.duapps.ad.entity.a.b.b == g)) {
      i = 2;
    }
  }
  
  public c b()
  {
    Object localObject1 = null;
    label109:
    for (;;)
    {
      synchronized (k)
      {
        if (k.size() <= 0) {
          break label109;
        }
        localObject3 = (h)k.remove(0);
        localObject1 = localObject3;
        if (localObject3 == null) {
          continue;
        }
        if (((h)localObject3).a())
        {
          localObject1 = localObject3;
          ??? = m;
          if (localObject1 == null)
          {
            localObject3 = "FAIL";
            com.duapps.ad.stats.b.a((Context)???, (String)localObject3, g);
            if (r.n(m)) {
              a();
            }
            return (c)localObject1;
          }
        }
        else
        {
          ((h)localObject3).d();
          localObject1 = localObject3;
        }
      }
      Object localObject3 = "OK";
    }
  }
  
  public int c()
  {
    int n = 0;
    label87:
    label91:
    for (;;)
    {
      h localh;
      synchronized (k)
      {
        Iterator localIterator = k.iterator();
        if (!localIterator.hasNext()) {
          break label87;
        }
        localh = (h)localIterator.next();
        if (localh == null) {
          localIterator.remove();
        }
      }
      if (localh.a())
      {
        n += 1;
      }
      else
      {
        ((Iterator)localObject).remove();
        localh.d();
        break label91;
        return n;
      }
    }
  }
  
  public boolean handleMessage(Message arg1)
  {
    int n = what;
    if (n == 0)
    {
      l.removeMessages(0);
      if (c)
      {
        l.c("FbCache", "Refresh request failed: already refreshing");
        return true;
      }
      c = true;
      e = true;
    }
    label137:
    label265:
    for (;;)
    {
      h localh;
      synchronized (k)
      {
        Iterator localIterator = k.iterator();
        n = 0;
        if (!localIterator.hasNext()) {
          break label137;
        }
        localh = (h)localIterator.next();
        if (localh == null) {
          localIterator.remove();
        }
      }
      if (localh.a())
      {
        n += 1;
      }
      else
      {
        ((Iterator)localObject).remove();
        localh.d();
        break label265;
        if (n < i)
        {
          int i1 = i - n;
          if (l.a()) {
            l.c("FbCache", "Refresh request send: green = " + n + " ,need = " + i1);
          }
          l.obtainMessage(2, i1, 0).sendToTarget();
        }
        for (;;)
        {
          return true;
          l.c("FbCache", "Refresh request OK: green is full");
          c = false;
        }
        if (n == 2)
        {
          n = arg1;
          if (n > 0) {
            a(???, n);
          }
          for (;;)
          {
            return true;
            c = false;
            l.c("FbCache", "Refresh result: DONE for geeen count");
          }
        }
        return false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.entity.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */