package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;

@me
public final class nz
{
  private static final ExecutorService a = Executors.newFixedThreadPool(10, a("Default"));
  private static final ExecutorService b = Executors.newFixedThreadPool(5, a("Loader"));
  
  public static po<Void> a(int paramInt, Runnable paramRunnable)
  {
    if (paramInt == 1) {
      return a(b, new oa(paramRunnable));
    }
    return a(a, new ob(paramRunnable));
  }
  
  public static po<Void> a(Runnable paramRunnable)
  {
    return a(0, paramRunnable);
  }
  
  public static <T> po<T> a(Callable<T> paramCallable)
  {
    return a(a, paramCallable);
  }
  
  public static <T> po<T> a(ExecutorService paramExecutorService, Callable<T> paramCallable)
  {
    pj localpj = new pj();
    try
    {
      paramExecutorService.submit(new oc(localpj, paramCallable));
      return localpj;
    }
    catch (RejectedExecutionException paramExecutorService)
    {
      b.d("Thread execution is rejected.", paramExecutorService);
      localpj.cancel(true);
    }
    return localpj;
  }
  
  private static ThreadFactory a(String paramString)
  {
    return new od(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */