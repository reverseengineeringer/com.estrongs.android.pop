package com.baidu.mobstat;

import android.content.Context;
import android.os.Process;
import com.baidu.mobstat.util.e;

class af
  extends Thread
{
  private static final af a = new af();
  private Context b;
  private volatile boolean c = false;
  private volatile boolean d = false;
  
  public static af a()
  {
    return a;
  }
  
  private void e()
  {
    c = true;
  }
  
  private void f()
  {
    d = true;
  }
  
  /* Error */
  public void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +12 -> 15
    //   6: aload_0
    //   7: invokevirtual 31	com/baidu/mobstat/af:b	()Z
    //   10: istore_2
    //   11: iload_2
    //   12: ifeq +6 -> 18
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 37	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   23: putfield 39	com/baidu/mobstat/af:b	Landroid/content/Context;
    //   26: aload_0
    //   27: invokespecial 41	com/baidu/mobstat/af:e	()V
    //   30: aload_0
    //   31: invokevirtual 44	com/baidu/mobstat/af:start	()V
    //   34: ldc 46
    //   36: invokestatic 51	com/baidu/mobstat/util/e:a	(Ljava/lang/String;)I
    //   39: pop
    //   40: goto -25 -> 15
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	af
    //   0	48	1	paramContext	Context
    //   10	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   6	11	43	finally
    //   18	40	43	finally
  }
  
  public boolean b()
  {
    return c;
  }
  
  public boolean c()
  {
    return d;
  }
  
  public void d()
  {
    if (!c()) {
      try
      {
        boolean bool = c();
        if (!bool) {}
        try
        {
          wait();
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            e.b(new Object[] { "sdkstat", localInterruptedException.getMessage() });
          }
        }
        return;
      }
      finally {}
    }
  }
  
  public void run()
  {
    Process.setThreadPriority(19);
    while (!d)
    {
      ag.a().a(b);
      DataCore.getInstance().loadWifiData(b);
      DataCore.getInstance().loadStatData(b);
      DataCore.getInstance().loadLastSession(b);
      f();
      try
      {
        notifyAll();
        DataCore.getInstance().installHeader(b);
        ag.a().a(b, "loadcache");
        e.a("**************load caceh**end********");
      }
      catch (IllegalMonitorStateException localIllegalMonitorStateException)
      {
        for (;;)
        {
          e.b("sdkstat", localIllegalMonitorStateException);
        }
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */