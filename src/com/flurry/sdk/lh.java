package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public class lh
  implements ll.a
{
  private static lh a;
  private static final String b = lh.class.getSimpleName();
  private final Map<Context, lf> c = new WeakHashMap();
  private final li d = new li();
  private final Object e = new Object();
  private long f;
  private long g;
  private lf h;
  private kb<lj> i = new lh.1(this);
  private kb<jv> j = new lh.2(this);
  
  private lh()
  {
    lk locallk = lk.a();
    f = 0L;
    g = ((Long)locallk.a("ContinueSessionMillis")).longValue();
    locallk.a("ContinueSessionMillis", this);
    kg.a(4, b, "initSettings, ContinueSessionMillis = " + g);
    kc.a().a("com.flurry.android.sdk.ActivityLifecycleEvent", j);
    kc.a().a("com.flurry.android.sdk.FlurrySessionTimerEvent", i);
  }
  
  public static lh a()
  {
    try
    {
      if (a == null) {
        a = new lh();
      }
      lh locallh = a;
      return locallh;
    }
    finally {}
  }
  
  private void a(lf paramlf)
  {
    synchronized (e)
    {
      h = paramlf;
      return;
    }
  }
  
  public static void b()
  {
    try
    {
      if (a != null)
      {
        kc.a().a(ai);
        kc.a().a(aj);
        lk.a().b("ContinueSessionMillis", a);
      }
      a = null;
      return;
    }
    finally {}
  }
  
  private void b(lf paramlf)
  {
    synchronized (e)
    {
      if (h == paramlf) {
        h = null;
      }
      return;
    }
  }
  
  private void e(Context paramContext)
  {
    for (;;)
    {
      try
      {
        if ((lf)c.get(paramContext) != null)
        {
          if (jw.a().c())
          {
            kg.a(3, b, "Session already started with context:" + paramContext);
            return;
          }
          kg.e(b, "Session already started with context:" + paramContext);
          continue;
        }
        d.a();
      }
      finally {}
      Object localObject2 = e();
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new lf();
        kg.e(b, "Flurry session started for context:" + paramContext);
        localObject2 = new lg();
        a = new WeakReference(paramContext);
        b = ((lf)localObject1);
        c = lg.a.a;
        ((lg)localObject2).b();
      }
      c.put(paramContext, localObject1);
      a((lf)localObject1);
      kg.e(b, "Flurry session resumed for context:" + paramContext);
      localObject2 = new lg();
      a = new WeakReference(paramContext);
      b = ((lf)localObject1);
      c = lg.a.c;
      ((lg)localObject2).b();
      f = 0L;
    }
  }
  
  private void i()
  {
    for (;;)
    {
      try
      {
        int k = d();
        if (k > 0)
        {
          kg.a(5, b, "Session cannot be finalized, sessionContextCount:" + k);
          return;
        }
        lf locallf1 = e();
        if (locallf1 == null)
        {
          kg.a(5, b, "Session cannot be finalized, current session not found");
          continue;
        }
        kg.e(b, "Flurry session ended");
      }
      finally {}
      lg locallg = new lg();
      b = locallf2;
      c = lg.a.e;
      d = je.a().d();
      locallg.b();
      js.a().b(new lh.4(this, locallf2));
    }
  }
  
  /* Error */
  public void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: instanceof 244
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 157	com/flurry/sdk/jw:a	()Lcom/flurry/sdk/jw;
    //   17: invokevirtual 160	com/flurry/sdk/jw:c	()Z
    //   20: ifeq -9 -> 11
    //   23: iconst_3
    //   24: getstatic 37	com/flurry/sdk/lh:b	Ljava/lang/String;
    //   27: new 92	java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial 93	java/lang/StringBuilder:<init>	()V
    //   34: ldc -10
    //   36: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: aload_1
    //   40: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokestatic 110	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   49: aload_0
    //   50: aload_1
    //   51: invokespecial 135	com/flurry/sdk/lh:e	(Landroid/content/Context;)V
    //   54: goto -43 -> 11
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	lh
    //   0	62	1	paramContext	Context
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	57	finally
    //   14	54	57	finally
  }
  
  public void a(String paramString, Object paramObject)
  {
    if (paramString.equals("ContinueSessionMillis"))
    {
      g = ((Long)paramObject).longValue();
      kg.a(4, b, "onSettingUpdate, ContinueSessionMillis = " + g);
      return;
    }
    kg.a(6, b, "onSettingUpdate internal error!");
  }
  
  /* Error */
  public void b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 157	com/flurry/sdk/jw:a	()Lcom/flurry/sdk/jw;
    //   5: invokevirtual 160	com/flurry/sdk/jw:c	()Z
    //   8: ifeq +15 -> 23
    //   11: aload_1
    //   12: instanceof 244
    //   15: istore_2
    //   16: iload_2
    //   17: ifeq +6 -> 23
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: iconst_3
    //   24: getstatic 37	com/flurry/sdk/lh:b	Ljava/lang/String;
    //   27: new 92	java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial 93	java/lang/StringBuilder:<init>	()V
    //   34: ldc_w 259
    //   37: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_1
    //   41: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 110	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   50: aload_0
    //   51: aload_1
    //   52: invokespecial 135	com/flurry/sdk/lh:e	(Landroid/content/Context;)V
    //   55: goto -35 -> 20
    //   58: astore_1
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	lh
    //   0	63	1	paramContext	Context
    //   15	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	16	58	finally
    //   23	55	58	finally
  }
  
  public long c()
  {
    return f;
  }
  
  /* Error */
  public void c(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 157	com/flurry/sdk/jw:a	()Lcom/flurry/sdk/jw;
    //   5: invokevirtual 160	com/flurry/sdk/jw:c	()Z
    //   8: ifeq +15 -> 23
    //   11: aload_1
    //   12: instanceof 244
    //   15: istore_2
    //   16: iload_2
    //   17: ifeq +6 -> 23
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: iconst_3
    //   24: getstatic 37	com/flurry/sdk/lh:b	Ljava/lang/String;
    //   27: new 92	java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial 93	java/lang/StringBuilder:<init>	()V
    //   34: ldc_w 261
    //   37: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_1
    //   41: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 110	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   50: aload_0
    //   51: aload_1
    //   52: invokevirtual 263	com/flurry/sdk/lh:d	(Landroid/content/Context;)V
    //   55: goto -35 -> 20
    //   58: astore_1
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	lh
    //   0	63	1	paramContext	Context
    //   15	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	16	58	finally
    //   23	55	58	finally
  }
  
  public int d()
  {
    try
    {
      int k = c.size();
      return k;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void d(Context paramContext)
  {
    for (;;)
    {
      lf locallf;
      try
      {
        locallf = (lf)c.remove(paramContext);
        if (locallf == null)
        {
          if (jw.a().c())
          {
            kg.a(3, b, "Session cannot be ended, session not found for context:" + paramContext);
            return;
          }
          kg.e(b, "Session cannot be ended, session not found for context:" + paramContext);
          continue;
        }
        kg.e(b, "Flurry session paused for context:" + paramContext);
      }
      finally {}
      lg locallg = new lg();
      a = new WeakReference(paramContext);
      b = locallf;
      d = je.a().d();
      c = lg.a.d;
      locallg.b();
      if (d() == 0)
      {
        d.a(g);
        f = System.currentTimeMillis();
      }
      else
      {
        f = 0L;
      }
    }
  }
  
  public lf e()
  {
    synchronized (e)
    {
      lf locallf = h;
      return locallf;
    }
  }
  
  /* Error */
  public boolean f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 173	com/flurry/sdk/lh:e	()Lcom/flurry/sdk/lf;
    //   6: ifnonnull +19 -> 25
    //   9: iconst_2
    //   10: getstatic 37	com/flurry/sdk/lh:b	Ljava/lang/String;
    //   13: ldc_w 285
    //   16: invokestatic 110	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   19: iconst_0
    //   20: istore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: iload_1
    //   24: ireturn
    //   25: iconst_1
    //   26: istore_1
    //   27: goto -6 -> 21
    //   30: astore_2
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_2
    //   34: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	this	lh
    //   20	7	1	bool	boolean
    //   30	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	30	finally
  }
  
  public void g()
  {
    try
    {
      Iterator localIterator = c.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        lg locallg = new lg();
        a = new WeakReference(localEntry.getKey());
        b = ((lf)localEntry.getValue());
        c = lg.a.d;
        d = je.a().d();
        locallg.b();
      }
      c.clear();
    }
    finally {}
    js.a().b(new lh.3(this));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */