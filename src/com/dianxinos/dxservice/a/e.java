package com.dianxinos.dxservice.a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public class e
{
  private static final e c = new e();
  private HandlerThread a = new HandlerThread("Handler01", 10);
  private Handler b;
  
  private e()
  {
    a.start();
    b = new Handler(a.getLooper());
  }
  
  public static Looper a()
  {
    return cb.getLooper();
  }
  
  public static boolean a(Runnable paramRunnable)
  {
    try
    {
      boolean bool = cb.post(paramRunnable);
      return bool;
    }
    finally
    {
      paramRunnable = finally;
      throw paramRunnable;
    }
  }
  
  public static boolean a(Runnable paramRunnable, long paramLong)
  {
    try
    {
      boolean bool = cb.postDelayed(paramRunnable, paramLong);
      return bool;
    }
    finally
    {
      paramRunnable = finally;
      throw paramRunnable;
    }
  }
  
  public static void b(Runnable paramRunnable)
  {
    if (paramRunnable != null) {}
    try
    {
      cb.removeCallbacks(paramRunnable);
      return;
    }
    finally
    {
      paramRunnable = finally;
      throw paramRunnable;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */