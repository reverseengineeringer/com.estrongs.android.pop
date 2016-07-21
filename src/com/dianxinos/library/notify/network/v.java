package com.dianxinos.library.notify.network;

import android.os.Handler;
import android.os.HandlerThread;
import com.dianxinos.library.dxbase.e;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class v
{
  private static ExecutorService a = null;
  private static ScheduledThreadPoolExecutor b = new ScheduledThreadPoolExecutor(1);
  private static Handler c = null;
  private static HandlerThread d = null;
  private static Handler e = null;
  private static RejectedExecutionHandler f = new w();
  
  public static Future<?> a(Runnable paramRunnable)
  {
    if (e.b) {
      return a.submit(new u(paramRunnable));
    }
    return a.submit(paramRunnable);
  }
  
  public static void a()
  {
    x localx = new x();
    int i = a.a * 4;
    a = new ThreadPoolExecutor(0, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(i), localx, f);
    c = new Handler();
    d = new HandlerThread("internal");
    d.setPriority(4);
    d.start();
    e = new Handler(d.getLooper());
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */