package com.dianxinos.library.notify.network;

import android.text.TextUtils;
import android.util.Pair;
import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.notify.f.a;
import java.io.File;
import java.io.IOException;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;

class o
  extends n
{
  private static final boolean a = false;
  private l b = null;
  private ExecutorService c = null;
  private ExecutorService d = null;
  private ExecutorService e = null;
  private d f = null;
  private File g = null;
  private WeakHashMap<String, Pair<RequestBase, Future<?>>> h = new WeakHashMap();
  private RejectedExecutionHandler i = new p(this);
  
  static
  {
    if (e.b) {}
  }
  
  protected o()
  {
    c();
  }
  
  private ThreadFactory a(String paramString, boolean paramBoolean)
  {
    return new r(this, paramString, paramBoolean);
  }
  
  public d a(String paramString)
  {
    int j = 0;
    for (;;)
    {
      if (j < 30) {
        for (;;)
        {
          try
          {
            if (f != null) {
              return f;
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            continue;
          }
          synchronized (g)
          {
            g.wait(500L);
            if (a) {
              j.a("wait for cache service: [" + j + "] " + paramString);
            }
            j += 1;
          }
        }
      }
    }
    return null;
  }
  
  void a(RequestBase paramRequestBase)
  {
    synchronized (h)
    {
      if (b.equals("GET")) {
        h.remove(a);
      }
      return;
    }
  }
  
  public void a(String paramString, k paramk, long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3)
  {
    for (;;)
    {
      int j;
      t localt;
      try
      {
        if ((TextUtils.isEmpty(paramString)) || (paramk == null) || (paramInt2 < 0) || (paramInt2 < 0))
        {
          j.c("bad parameters");
          return;
        }
        if ((paramInt1 & 0x40) == 64)
        {
          j = 1;
          localt = new t(this, paramString, paramk, paramLong1, paramLong2, paramInt1, paramInt2, paramInt3, b);
          if ((paramInt1 & 0x20) != 32) {
            break label108;
          }
          com.dianxinos.library.dxbase.o.a();
          paramk.a(null);
          localt.run();
          continue;
        }
        j = 0;
      }
      finally {}
      continue;
      label108:
      if (((paramInt1 == 0) || (paramInt1 == 64)) && (paramLong1 <= 0L) && (paramLong2 < 0L)) {
        synchronized (h)
        {
          ??? = (Pair)h.get(paramString);
          if (??? != null)
          {
            ((RequestBase)first).a(paramk);
            paramk.a((Future)second);
          }
        }
      }
      if ((j != 0) && (b.i()))
      {
        ??? = c.submit(new u(localt, false));
        j.a("submitting high priority GET task: " + paramString);
      }
      synchronized (h)
      {
        h.put(paramString, new Pair(localt, ???));
        paramk.a((Future)???);
        continue;
        ??? = e.submit(new u(localt, false));
      }
    }
  }
  
  void b()
  {
    if (f != null) {}
    try
    {
      f.close();
      f = null;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  void c()
  {
    if (g != null) {
      g.mkdirs();
    }
    for (;;)
    {
      if (f != null) {}
      try
      {
        f.close();
        f = null;
        v.a(new q(this));
        return;
        g = a.a("network");
      }
      catch (IOException localIOException)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */