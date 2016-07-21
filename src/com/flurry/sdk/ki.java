package com.flurry.sdk;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ki
{
  private static final String a = ki.class.getSimpleName();
  private static final Map<Class<? extends kj>, kh> b = new LinkedHashMap();
  private final Map<Class<? extends kj>, kj> c = new LinkedHashMap();
  
  public static void a(Class<? extends kj> paramClass, int paramInt)
  {
    if (paramClass == null) {
      return;
    }
    synchronized (b)
    {
      b.put(paramClass, new kh(paramClass, paramInt));
      return;
    }
  }
  
  private List<kj> b()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (c)
    {
      localArrayList.addAll(c.values());
      return localArrayList;
    }
  }
  
  public kj a(Class<? extends kj> paramClass)
  {
    if (paramClass == null) {
      ??? = null;
    }
    for (;;)
    {
      return (kj)???;
      synchronized (c)
      {
        kj localkj = (kj)c.get(paramClass);
        ??? = localkj;
        if (localkj != null) {
          continue;
        }
        throw new IllegalStateException("Module was not registered/initialized. " + paramClass);
      }
    }
  }
  
  public void a()
  {
    try
    {
      jw.b();
      lh.b();
      List localList = b();
      int i = localList.size();
      i -= 1;
      for (;;)
      {
        if (i >= 0) {
          try
          {
            ((kj)c.remove(((kj)localList.get(i)).getClass())).b();
            i -= 1;
          }
          catch (Exception localException)
          {
            for (;;)
            {
              kg.a(5, a, "Error destroying module:", localException);
            }
          }
        }
      }
    }
    finally {}
  }
  
  /* Error */
  public void a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +15 -> 18
    //   6: iconst_5
    //   7: getstatic 21	com/flurry/sdk/ki:a	Ljava/lang/String;
    //   10: ldc 124
    //   12: invokestatic 127	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: getstatic 28	com/flurry/sdk/ki:b	Ljava/util/Map;
    //   21: astore_2
    //   22: aload_2
    //   23: monitorenter
    //   24: new 48	java/util/ArrayList
    //   27: dup
    //   28: getstatic 28	com/flurry/sdk/ki:b	Ljava/util/Map;
    //   31: invokeinterface 53 1 0
    //   36: invokespecial 130	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   39: astore_3
    //   40: aload_2
    //   41: monitorexit
    //   42: aload_3
    //   43: invokeinterface 134 1 0
    //   48: astore_2
    //   49: aload_2
    //   50: invokeinterface 140 1 0
    //   55: ifeq +110 -> 165
    //   58: aload_2
    //   59: invokeinterface 144 1 0
    //   64: checkcast 35	com/flurry/sdk/kh
    //   67: astore_3
    //   68: aload_3
    //   69: invokevirtual 146	com/flurry/sdk/kh:b	()Z
    //   72: ifeq -23 -> 49
    //   75: aload_3
    //   76: invokevirtual 148	com/flurry/sdk/kh:a	()Ljava/lang/Class;
    //   79: invokevirtual 151	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   82: checkcast 67	com/flurry/sdk/kj
    //   85: astore 4
    //   87: aload 4
    //   89: aload_1
    //   90: invokeinterface 153 2 0
    //   95: aload_0
    //   96: getfield 32	com/flurry/sdk/ki:c	Ljava/util/Map;
    //   99: aload_3
    //   100: invokevirtual 148	com/flurry/sdk/kh:a	()Ljava/lang/Class;
    //   103: aload 4
    //   105: invokeinterface 43 3 0
    //   110: pop
    //   111: goto -62 -> 49
    //   114: astore 4
    //   116: iconst_5
    //   117: getstatic 21	com/flurry/sdk/ki:a	Ljava/lang/String;
    //   120: new 71	java/lang/StringBuilder
    //   123: dup
    //   124: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   127: ldc -101
    //   129: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: aload_3
    //   133: invokevirtual 148	com/flurry/sdk/kh:a	()Ljava/lang/Class;
    //   136: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   139: ldc -99
    //   141: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: aload 4
    //   149: invokestatic 121	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   152: goto -103 -> 49
    //   155: astore_1
    //   156: aload_0
    //   157: monitorexit
    //   158: aload_1
    //   159: athrow
    //   160: astore_1
    //   161: aload_2
    //   162: monitorexit
    //   163: aload_1
    //   164: athrow
    //   165: invokestatic 160	com/flurry/sdk/lh:a	()Lcom/flurry/sdk/lh;
    //   168: aload_1
    //   169: invokevirtual 161	com/flurry/sdk/lh:a	(Landroid/content/Context;)V
    //   172: invokestatic 164	com/flurry/sdk/jw:a	()Lcom/flurry/sdk/jw;
    //   175: pop
    //   176: goto -161 -> 15
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	179	0	this	ki
    //   0	179	1	paramContext	android.content.Context
    //   39	94	3	localObject2	Object
    //   85	19	4	localkj	kj
    //   114	34	4	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   68	111	114	java/lang/Exception
    //   6	15	155	finally
    //   18	24	155	finally
    //   42	49	155	finally
    //   49	68	155	finally
    //   68	111	155	finally
    //   116	152	155	finally
    //   163	165	155	finally
    //   165	176	155	finally
    //   24	42	160	finally
    //   161	163	160	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */