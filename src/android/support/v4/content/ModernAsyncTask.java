package android.support.v4.content;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

abstract class ModernAsyncTask<Params, Progress, Result>
{
  public static final Executor a = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, c, b);
  private static final ThreadFactory b = new e();
  private static final BlockingQueue<Runnable> c = new LinkedBlockingQueue(10);
  private static final g d = new g(null);
  private static volatile Executor e = a;
  private final FutureTask<Result> f;
  private volatile ModernAsyncTask.Status g;
  
  private void c(Result paramResult)
  {
    if (b()) {
      b(paramResult);
    }
    for (;;)
    {
      g = ModernAsyncTask.Status.FINISHED;
      return;
      a(paramResult);
    }
  }
  
  protected void a() {}
  
  protected void a(Result paramResult) {}
  
  protected void a(Progress... paramVarArgs) {}
  
  protected void b(Result paramResult)
  {
    a();
  }
  
  public final boolean b()
  {
    return f.isCancelled();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.ModernAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */