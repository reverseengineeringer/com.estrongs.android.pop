package com.flurry.sdk;

import android.content.Context;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

public class q
{
  private static final String a = q.class.getSimpleName();
  private final SparseArray<s> b = new SparseArray();
  private final jx<Context, s> c = new jx(new WeakHashMap());
  
  public s a(int paramInt)
  {
    try
    {
      s locals = (s)b.get(paramInt);
      return locals;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public List<s> a(Context paramContext)
  {
    if (paramContext == null) {}
    for (;;)
    {
      try
      {
        paramContext = Collections.emptyList();
        return paramContext;
      }
      finally {}
      paramContext = new ArrayList(c.a(paramContext));
    }
  }
  
  public void a()
  {
    try
    {
      Iterator localIterator = c.d().iterator();
      while (localIterator.hasNext()) {
        ((s)localIterator.next()).n();
      }
    }
    finally {}
  }
  
  public void a(Context paramContext, s params)
  {
    if ((paramContext == null) || (params == null)) {}
    for (;;)
    {
      return;
      try
      {
        b.put(params.e(), params);
        c.a(paramContext, params);
      }
      finally {}
    }
  }
  
  public void b()
  {
    int i = 0;
    for (;;)
    {
      try
      {
        Iterator localIterator = c.d().iterator();
        if (localIterator.hasNext())
        {
          s locals = (s)localIterator.next();
          if (((locals instanceof x)) && (locals.x())) {
            i += 1;
          }
        }
        else
        {
          kg.a(3, a, "Number of expired ads: " + i);
          return;
        }
      }
      finally {}
    }
  }
  
  /* Error */
  public void b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: aload_0
    //   10: getfield 41	com/flurry/sdk/q:c	Lcom/flurry/sdk/jx;
    //   13: aload_1
    //   14: invokevirtual 60	com/flurry/sdk/jx:a	(Ljava/lang/Object;)Ljava/util/List;
    //   17: invokeinterface 129 1 0
    //   22: astore_1
    //   23: aload_1
    //   24: invokeinterface 81 1 0
    //   29: ifeq -23 -> 6
    //   32: aload_1
    //   33: invokeinterface 85 1 0
    //   38: checkcast 48	com/flurry/sdk/s
    //   41: invokeinterface 131 1 0
    //   46: goto -23 -> 23
    //   49: astore_1
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_1
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	q
    //   0	54	1	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   9	23	49	finally
    //   23	46	49	finally
  }
  
  public boolean b(Context paramContext, s params)
  {
    boolean bool;
    if ((paramContext == null) || (params == null)) {
      bool = false;
    }
    for (;;)
    {
      return bool;
      try
      {
        b.remove(params.e());
        bool = c.b(paramContext, params);
      }
      finally {}
    }
  }
  
  /* Error */
  public void c(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: aload_0
    //   10: getfield 41	com/flurry/sdk/q:c	Lcom/flurry/sdk/jx;
    //   13: aload_1
    //   14: invokevirtual 60	com/flurry/sdk/jx:a	(Ljava/lang/Object;)Ljava/util/List;
    //   17: invokeinterface 129 1 0
    //   22: astore_1
    //   23: aload_1
    //   24: invokeinterface 81 1 0
    //   29: ifeq -23 -> 6
    //   32: aload_1
    //   33: invokeinterface 85 1 0
    //   38: checkcast 48	com/flurry/sdk/s
    //   41: invokeinterface 141 1 0
    //   46: goto -23 -> 23
    //   49: astore_1
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_1
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	q
    //   0	54	1	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   9	23	49	finally
    //   23	46	49	finally
  }
  
  /* Error */
  public void d(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: aload_0
    //   10: aload_1
    //   11: invokevirtual 143	com/flurry/sdk/q:a	(Landroid/content/Context;)Ljava/util/List;
    //   14: invokeinterface 129 1 0
    //   19: astore_1
    //   20: aload_1
    //   21: invokeinterface 81 1 0
    //   26: ifeq -20 -> 6
    //   29: aload_1
    //   30: invokeinterface 85 1 0
    //   35: checkcast 48	com/flurry/sdk/s
    //   38: invokeinterface 145 1 0
    //   43: goto -23 -> 20
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	q
    //   0	51	1	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   9	20	46	finally
    //   20	43	46	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */