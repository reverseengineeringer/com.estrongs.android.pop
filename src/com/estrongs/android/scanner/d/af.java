package com.estrongs.android.scanner.d;

import com.estrongs.android.scanner.am;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class af
{
  private static af a = new af();
  private ThreadPoolExecutor b = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(5120), new am("FlusherThread"));
  
  private af()
  {
    b.setRejectedExecutionHandler(new ag(this));
  }
  
  public static af a()
  {
    return a;
  }
  
  public void a(Runnable paramRunnable)
  {
    b.execute(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */