package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

class bp
{
  private static final bp a = new bp();
  private Context b;
  private volatile boolean c = false;
  private volatile boolean d = false;
  private volatile boolean e = false;
  private HandlerThread f;
  private Handler g;
  
  public static bp a()
  {
    return a;
  }
  
  private void d()
  {
    try
    {
      br localbr = new br(this, null);
      localbr.setPriority(10);
      localbr.start();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(Context paramContext)
  {
    if (e) {}
    do
    {
      do
      {
        return;
      } while (paramContext == null);
      if ((f == null) || (!f.isAlive()))
      {
        f = new HandlerThread("dataAnalyzeThread");
        f.start();
        Looper localLooper = f.getLooper();
        if (localLooper != null) {
          g = new Handler(localLooper);
        }
      }
    } while (g == null);
    g.post(new bq(this, paramContext));
    e = true;
  }
  
  public void b(Context paramContext)
  {
    if (paramContext == null) {}
    while (c) {
      return;
    }
    b = paramContext.getApplicationContext();
    d();
    c = true;
  }
  
  public boolean b()
  {
    try
    {
      boolean bool = c;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void c()
  {
    if (!d) {
      try
      {
        for (;;)
        {
          boolean bool = d;
          if (bool) {
            break;
          }
          try
          {
            wait(50L);
          }
          catch (InterruptedException localInterruptedException)
          {
            cr.b(localInterruptedException.getMessage());
          }
        }
      }
      finally {}
    }
  }
  
  public void c(Context paramContext)
  {
    if (d) {
      return;
    }
    bs.a().a(paramContext);
    DataCore.instance().loadStatData(paramContext);
    DataCore.instance().loadLastSession(paramContext);
    DataCore.instance().installHeader(paramContext);
    d = true;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */