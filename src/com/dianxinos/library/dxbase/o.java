package com.dianxinos.library.dxbase;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public class o
{
  private static Handler a = null;
  private static HandlerThread b = null;
  private static Handler c = new Handler(b.getLooper());
  
  static
  {
    a = new Handler(Looper.getMainLooper());
    b = new HandlerThread("thread");
    b.setPriority(3);
    b.start();
  }
  
  public static void a()
  {
    if (b()) {
      throw new IllegalStateException("ensureNonUiThread: thread check failed");
    }
  }
  
  public static void a(Runnable paramRunnable)
  {
    if (e.b)
    {
      a.post(new p(paramRunnable));
      return;
    }
    a.post(paramRunnable);
  }
  
  public static void a(Runnable paramRunnable, int paramInt)
  {
    if (e.b)
    {
      c.postDelayed(new p(paramRunnable), paramInt);
      return;
    }
    c.postDelayed(paramRunnable, paramInt);
  }
  
  public static void b(Runnable paramRunnable)
  {
    if (e.b)
    {
      c.postAtFrontOfQueue(new p(paramRunnable));
      return;
    }
    c.postAtFrontOfQueue(paramRunnable);
  }
  
  public static boolean b()
  {
    Looper localLooper = Looper.myLooper();
    return Looper.getMainLooper().equals(localLooper);
  }
  
  public static Looper c()
  {
    return b.getLooper();
  }
  
  public static void c(Runnable paramRunnable)
  {
    if (e.b)
    {
      c.post(new p(paramRunnable));
      return;
    }
    c.post(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.dxbase.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */