package com.estrongs.android.pop.app.messagebox;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class e
{
  private static e a;
  private ThreadPoolExecutor b = new ThreadPoolExecutor(2, 10, 60L, TimeUnit.SECONDS, new ArrayBlockingQueue(50));
  private HandlerThread c = new HandlerThread("DXThreadPool");
  private Handler d;
  private Handler e;
  
  private e()
  {
    c.start();
    d = new Handler(c.getLooper());
    e = new Handler(Looper.getMainLooper());
  }
  
  public static e a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new e();
      }
      return a;
    }
    finally {}
  }
  
  /* Error */
  public void a(Runnable paramRunnable)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: aload_0
    //   10: getfield 37	com/estrongs/android/pop/app/messagebox/e:b	Ljava/util/concurrent/ThreadPoolExecutor;
    //   13: aload_1
    //   14: invokevirtual 78	java/util/concurrent/ThreadPoolExecutor:execute	(Ljava/lang/Runnable;)V
    //   17: goto -11 -> 6
    //   20: astore_1
    //   21: goto -15 -> 6
    //   24: astore_1
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_1
    //   28: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	29	0	this	e
    //   0	29	1	paramRunnable	Runnable
    // Exception table:
    //   from	to	target	type
    //   9	17	20	java/util/concurrent/RejectedExecutionException
    //   9	17	24	finally
  }
  
  public void b(Runnable paramRunnable)
  {
    d.post(paramRunnable);
  }
  
  public void c(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      return;
    }
    e.post(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */