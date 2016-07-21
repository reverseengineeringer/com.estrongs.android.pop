package com.dianxinos.lockscreen.b;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.dianxinos.lockscreen.a;
import com.dianxinos.lockscreen.c.g;

public class c
{
  private static c a;
  private final Context b;
  private b c;
  private Handler d;
  private volatile boolean e;
  
  private c(Context paramContext)
  {
    b = paramContext.getApplicationContext();
  }
  
  public static c a(Context paramContext)
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new c(paramContext);
      }
      return a;
    }
    finally {}
  }
  
  public void a()
  {
    if (e)
    {
      g.d("LockScreenPullScheduler", "already start");
      return;
    }
    e = true;
    g.a("LockScreenPullScheduler", "start");
    a locala = a.a(b);
    c = new b(b.getApplicationContext());
    HandlerThread localHandlerThread = new HandlerThread("LockScreenPullScheduler");
    localHandlerThread.start();
    d = new Handler(localHandlerThread.getLooper());
    long l = locala.e() + 21600000L - System.currentTimeMillis();
    if (l > 0L) {}
    for (;;)
    {
      d.postDelayed(new d(this, locala), l);
      return;
      l = 0L;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */