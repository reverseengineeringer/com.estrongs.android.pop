package com.estrongs.android.pop.app;

import com.estrongs.android.util.ak;
import java.net.Inet4Address;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

public class bc
  implements bj
{
  private static final String a = bc.class.getSimpleName();
  private static bc b = null;
  private ArrayList<bi> c = new ArrayList();
  private boolean d = false;
  private ExecutorService e;
  
  public static bc a()
  {
    if (b == null) {
      b = new bc();
    }
    return b;
  }
  
  public void a(bi parambi)
  {
    if ((!d) || (c.contains(parambi)) || ((ak.a() != null) && (ak.a().equals(a.getHostAddress())))) {
      return;
    }
    c.add(parambi);
    e.execute(new bd(this, parambi));
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 40	com/estrongs/android/pop/app/bc:d	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_3
    //   16: invokestatic 88	java/util/concurrent/Executors:newFixedThreadPool	(I)Ljava/util/concurrent/ExecutorService;
    //   19: putfield 71	com/estrongs/android/pop/app/bc:e	Ljava/util/concurrent/ExecutorService;
    //   22: aload_0
    //   23: getfield 38	com/estrongs/android/pop/app/bc:c	Ljava/util/ArrayList;
    //   26: invokevirtual 91	java/util/ArrayList:clear	()V
    //   29: aload_0
    //   30: iconst_1
    //   31: putfield 40	com/estrongs/android/pop/app/bc:d	Z
    //   34: invokestatic 96	com/estrongs/android/pop/app/be:a	()Lcom/estrongs/android/pop/app/be;
    //   37: aload_0
    //   38: invokevirtual 99	com/estrongs/android/pop/app/be:a	(Lcom/estrongs/android/pop/app/bj;)V
    //   41: invokestatic 96	com/estrongs/android/pop/app/be:a	()Lcom/estrongs/android/pop/app/be;
    //   44: invokevirtual 101	com/estrongs/android/pop/app/be:c	()V
    //   47: goto -36 -> 11
    //   50: astore_2
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_2
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	bc
    //   6	2	1	bool	boolean
    //   50	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	50	finally
    //   14	47	50	finally
  }
  
  public void b(bi parambi)
  {
    if (d) {
      c.remove(parambi);
    }
  }
  
  public void c()
  {
    try
    {
      if (d)
      {
        be.a().b(this);
        c.clear();
        if (e != null) {
          e.shutdownNow();
        }
        d = false;
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */