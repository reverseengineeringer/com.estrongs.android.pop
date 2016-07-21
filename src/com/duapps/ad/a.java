package com.duapps.ad;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.e;
import com.duapps.ad.base.l;
import com.duapps.ad.base.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class a
  implements Handler.Callback, j
{
  private static final String a = a.class.getSimpleName();
  private Context b;
  private int c;
  private Handler d;
  private d e;
  private ConcurrentHashMap<String, com.duapps.ad.entity.a.a<com.duapps.ad.entity.a.c>> f = new ConcurrentHashMap();
  private String[] g;
  private List<String> h;
  private long i;
  private HandlerThread j;
  private volatile boolean k;
  private int l;
  private final Object m = new Object();
  
  public a(Context paramContext, int paramInt1, int paramInt2)
  {
    b = paramContext;
    c = paramInt1;
    l = paramInt2;
    a(paramInt2);
  }
  
  private void a(int paramInt)
  {
    synchronized (m)
    {
      g = r.b(b, c, com.duapps.ad.entity.a.b.a(c));
      e locale = com.duapps.ad.base.d.a(b, c, paramInt, g, f);
      if (locale != null)
      {
        g = locale.a();
        i = locale.b();
      }
      j = new HandlerThread("adRequest", 10);
      j.start();
      d = new Handler(j.getLooper(), this);
      return;
    }
  }
  
  private void a(String paramString)
  {
    for (;;)
    {
      int n;
      synchronized (m)
      {
        int i1 = h.indexOf(paramString);
        n = h.size();
        if (i1 == n - 1)
        {
          return;
          if (n > i1)
          {
            if (n - 1 < 0) {
              break label167;
            }
            paramString = (String)h.get(n);
            String str = (String)h.get(n - 1);
            f.get(paramString)).d = f.get(str)).d;
            l.c(a, "channel :" + paramString + ", used --> channel :" + str);
            break label167;
          }
          return;
        }
      }
      n -= 1;
      continue;
      label167:
      n -= 1;
    }
  }
  
  private boolean a(String paramString, long paramLong)
  {
    long l1 = b(paramString);
    l.c(a, "channel:" + paramString + "-->[" + l1 + "," + i + "]");
    return (paramLong > l1) && (paramLong < i);
  }
  
  private long b(String paramString)
  {
    long l1 = 0L;
    for (;;)
    {
      int n;
      synchronized (m)
      {
        int i1 = h.indexOf(paramString);
        n = 0;
        if (n < i1)
        {
          Object localObject2 = (String)h.get(n);
          localObject2 = (com.duapps.ad.entity.a.a)f.get(localObject2);
          if (localObject2 != null) {
            l1 = d + l1;
          } else {
            a(paramString);
          }
        }
        else
        {
          return l1;
        }
      }
      n += 1;
    }
  }
  
  private void d()
  {
    synchronized (m)
    {
      h = new ArrayList(g.length);
      int n = 0;
      while (n < g.length)
      {
        h.add(g[n]);
        n += 1;
      }
      return;
    }
  }
  
  private void e()
  {
    long l1 = SystemClock.elapsedRealtime();
    int n = 0;
    if ((n == 0) && (!k)) {}
    label475:
    label480:
    for (;;)
    {
      Object localObject3;
      synchronized (m)
      {
        Iterator localIterator = h.iterator();
        if (!localIterator.hasNext()) {
          break label480;
        }
        localObject3 = (String)localIterator.next();
        if (k)
        {
          l.c(a, "Current action has been canceled~");
          break;
        }
        SystemClock.sleep(10L);
        long l2 = SystemClock.elapsedRealtime() - l1;
        if (l2 > i)
        {
          if (e == null) {
            break label475;
          }
          e.a(b.f);
          n = 1;
          continue;
        }
        if ((!f.containsKey(localObject3)) && (f.get(localObject3) == null)) {
          continue;
        }
        com.duapps.ad.entity.a.a locala = (com.duapps.ad.entity.a.a)f.get(localObject3);
        l.c(a, "channel:" + (String)localObject3 + ",isError:" + b);
        if (!b)
        {
          l.c(a, "validCount:" + locala.c() + ",ttl-->" + l2);
          if (locala.c() > 0)
          {
            if (!a((String)localObject3, l2)) {
              continue;
            }
            localObject3 = (com.duapps.ad.entity.a.c)locala.d();
            if ((e == null) || (localObject3 == null)) {
              continue;
            }
            e.a(new c((com.duapps.ad.entity.a.c)localObject3));
            l.c(a, "onAdLoaded in load method");
            n = 1;
            continue;
          }
          if ((c) || (e) || (!ap.a(b))) {
            continue;
          }
          locala.a();
          l.c(a, (String)localObject3 + " is refreshing...");
        }
      }
      if (f.keySet().size() <= 1)
      {
        e.a(b.b);
        n = 1;
      }
      else
      {
        a((String)localObject3);
        ((Iterator)localObject2).remove();
        l.c(a, "channel:" + (String)localObject3 + " is error and removed");
        continue;
        return;
        n = 1;
      }
    }
  }
  
  private void f()
  {
    for (;;)
    {
      int n;
      synchronized (m)
      {
        String[] arrayOfString = g;
        int i1 = arrayOfString.length;
        n = 0;
        if (n < i1)
        {
          Object localObject3 = arrayOfString[n];
          localObject3 = (com.duapps.ad.entity.a.a)f.get(localObject3);
          if (localObject3 != null)
          {
            b = false;
            e = false;
          }
        }
        else
        {
          return;
        }
      }
      n += 1;
    }
  }
  
  public void a()
  {
    if (ap.a(b)) {
      synchronized (m)
      {
        Iterator localIterator = f.keySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject3 = (String)localIterator.next();
          localObject3 = (com.duapps.ad.entity.a.a)f.get(localObject3);
          if (localObject3 != null) {
            ((com.duapps.ad.entity.a.a)localObject3).a();
          }
        }
      }
    }
  }
  
  public void a(d arg1)
  {
    e = ???;
    for (;;)
    {
      int n;
      synchronized (m)
      {
        String[] arrayOfString = g;
        int i1 = arrayOfString.length;
        n = 0;
        if (n < i1)
        {
          Object localObject2 = arrayOfString[n];
          localObject2 = (com.duapps.ad.entity.a.a)f.get(localObject2);
          if (localObject2 != null) {
            ((com.duapps.ad.entity.a.a)localObject2).a(e);
          }
        }
        else
        {
          return;
        }
      }
      n += 1;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (!ap.a(b))
    {
      e.a(b.a);
      return;
    }
    k = false;
    d();
    for (;;)
    {
      int i1;
      Object localObject3;
      com.duapps.ad.entity.a.a locala;
      int i3;
      synchronized (m)
      {
        String[] arrayOfString = g;
        int i2 = arrayOfString.length;
        i1 = 0;
        n = 0;
        if (i1 >= i2) {
          break label242;
        }
        localObject3 = arrayOfString[i1];
        locala = (com.duapps.ad.entity.a.a)f.get(localObject3);
        if (locala == null) {
          break label247;
        }
        i3 = locala.c();
        if ((paramBoolean) && (n == 0) && ("facebook".equals(localObject3)) && (i3 == 0) && (!b))
        {
          e = false;
          d.sendEmptyMessage(100);
          return;
        }
      }
      if (i3 > 0)
      {
        localObject3 = (com.duapps.ad.entity.a.c)locala.d();
        if ((e != null) && (localObject3 != null))
        {
          e.a(new c((com.duapps.ad.entity.a.c)localObject3));
          l.c(a, "onAdLoaded in load method");
        }
      }
      label242:
      for (int n = 1;; n = 0)
      {
        if (n != 0) {
          break;
        }
        f();
        d.sendEmptyMessage(100);
        return;
        n += 1;
        break label247;
      }
      label247:
      i1 += 1;
    }
  }
  
  public void a(String[] paramArrayOfString)
  {
    synchronized (m)
    {
      paramArrayOfString = com.duapps.ad.base.b.a(b, c, l, paramArrayOfString, i, f);
      if (paramArrayOfString == null) {
        return;
      }
    }
    synchronized (m)
    {
      g = paramArrayOfString.a();
      i = paramArrayOfString.b();
      return;
    }
  }
  
  public void b()
  {
    a(true);
  }
  
  public void c()
  {
    k = true;
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    for (;;)
    {
      return false;
      d.removeMessages(100);
      e();
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */