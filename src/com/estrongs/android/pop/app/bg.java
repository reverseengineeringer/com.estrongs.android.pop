package com.estrongs.android.pop.app;

import com.estrongs.android.util.an;
import java.net.Inet4Address;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

public class bg
  implements bn
{
  private static final String a = bg.class.getSimpleName();
  private static bg b = null;
  private ArrayList<bm> c = new ArrayList();
  private boolean d = false;
  private ExecutorService e;
  
  public static bg a()
  {
    if (b == null) {
      b = new bg();
    }
    return b;
  }
  
  public void a(bm parambm)
  {
    if ((!d) || (c.contains(parambm)) || ((an.a() != null) && (an.a().equals(a.getHostAddress())))) {
      return;
    }
    c.add(parambm);
    e.execute(new bh(this, parambm));
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 40	com/estrongs/android/pop/app/bg:d	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_3
    //   16: invokestatic 88	java/util/concurrent/Executors:newFixedThreadPool	(I)Ljava/util/concurrent/ExecutorService;
    //   19: putfield 71	com/estrongs/android/pop/app/bg:e	Ljava/util/concurrent/ExecutorService;
    //   22: aload_0
    //   23: getfield 38	com/estrongs/android/pop/app/bg:c	Ljava/util/ArrayList;
    //   26: invokevirtual 91	java/util/ArrayList:clear	()V
    //   29: aload_0
    //   30: iconst_1
    //   31: putfield 40	com/estrongs/android/pop/app/bg:d	Z
    //   34: invokestatic 96	com/estrongs/android/pop/app/bi:a	()Lcom/estrongs/android/pop/app/bi;
    //   37: aload_0
    //   38: invokevirtual 99	com/estrongs/android/pop/app/bi:a	(Lcom/estrongs/android/pop/app/bn;)V
    //   41: invokestatic 96	com/estrongs/android/pop/app/bi:a	()Lcom/estrongs/android/pop/app/bi;
    //   44: invokevirtual 101	com/estrongs/android/pop/app/bi:c	()V
    //   47: goto -36 -> 11
    //   50: astore_2
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_2
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	bg
    //   6	2	1	bool	boolean
    //   50	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	50	finally
    //   14	47	50	finally
  }
  
  public void b(bm parambm)
  {
    if (d) {
      c.remove(parambm);
    }
  }
  
  public void c()
  {
    try
    {
      if (d)
      {
        bi.a().b(this);
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
 * Qualified Name:     com.estrongs.android.pop.app.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */