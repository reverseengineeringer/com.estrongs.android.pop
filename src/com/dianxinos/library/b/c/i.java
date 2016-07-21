package com.dianxinos.library.b.c;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.dianxinos.library.b.a;

public class i
{
  private static Handler a = null;
  private static HandlerThread b = null;
  private static Handler c = new Handler(b.getLooper());
  
  static
  {
    a = new Handler(Looper.getMainLooper());
    b = new HandlerThread("secure");
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
    if (a.a)
    {
      c.postAtFrontOfQueue(new j(paramRunnable));
      return;
    }
    c.postAtFrontOfQueue(paramRunnable);
  }
  
  public static void a(Runnable paramRunnable, int paramInt)
  {
    if (a.a)
    {
      c.postDelayed(new j(paramRunnable), paramInt);
      return;
    }
    c.postDelayed(paramRunnable, paramInt);
  }
  
  public static void b(Runnable paramRunnable)
  {
    if (a.a)
    {
      c.post(new j(paramRunnable));
      return;
    }
    c.post(paramRunnable);
  }
  
  public static boolean b()
  {
    Looper localLooper = Looper.myLooper();
    return Looper.getMainLooper().equals(localLooper);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.c.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */