package android.support.v4.content;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

abstract class ModernAsyncTask<Params, Progress, Result>
{
  public static final Executor a = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, c, b);
  private static final ThreadFactory b = new v();
  private static final BlockingQueue<Runnable> c = new LinkedBlockingQueue(10);
  private static volatile Executor d = a;
}

/* Location:
 * Qualified Name:     android.support.v4.content.ModernAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */