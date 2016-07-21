package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class kc
{
  private static kc a = null;
  private final jx<String, kq<kb<?>>> b = new jx();
  private final jx<kq<kb<?>>, String> c = new jx();
  
  public static kc a()
  {
    try
    {
      if (a == null) {
        a = new kc();
      }
      kc localkc = a;
      return localkc;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (a != null)
      {
        a.c();
        a = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(ka paramka)
  {
    if (paramka == null) {}
    for (;;)
    {
      return;
      Iterator localIterator = c(paramka.a()).iterator();
      while (localIterator.hasNext())
      {
        kb localkb = (kb)localIterator.next();
        js.a().b(new kc.1(this, localkb, paramka));
      }
    }
  }
  
  public void a(kb<?> paramkb)
  {
    if (paramkb == null) {}
    for (;;)
    {
      return;
      try
      {
        paramkb = new kq(paramkb);
        Iterator localIterator = c.a(paramkb).iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          b.b(str, paramkb);
        }
        c.b(paramkb);
      }
      finally {}
    }
  }
  
  public void a(String paramString)
  {
    for (;;)
    {
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        if (bool) {
          return;
        }
        Iterator localIterator = b.a(paramString).iterator();
        if (localIterator.hasNext())
        {
          kq localkq = (kq)localIterator.next();
          c.b(localkq, paramString);
        }
        else
        {
          b.b(paramString);
        }
      }
      finally {}
    }
  }
  
  /* Error */
  public void a(String paramString, kb<?> paramkb)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +7 -> 15
    //   11: aload_2
    //   12: ifnonnull +6 -> 18
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: new 73	com/flurry/sdk/kq
    //   21: dup
    //   22: aload_2
    //   23: invokespecial 76	com/flurry/sdk/kq:<init>	(Ljava/lang/Object;)V
    //   26: astore_2
    //   27: aload_0
    //   28: getfield 24	com/flurry/sdk/kc:b	Lcom/flurry/sdk/jx;
    //   31: aload_1
    //   32: aload_2
    //   33: invokevirtual 99	com/flurry/sdk/jx:c	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   36: ifne -21 -> 15
    //   39: aload_0
    //   40: getfield 24	com/flurry/sdk/kc:b	Lcom/flurry/sdk/jx;
    //   43: aload_1
    //   44: aload_2
    //   45: invokevirtual 102	com/flurry/sdk/jx:a	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   48: aload_0
    //   49: getfield 26	com/flurry/sdk/kc:c	Lcom/flurry/sdk/jx;
    //   52: aload_2
    //   53: aload_1
    //   54: invokevirtual 102	com/flurry/sdk/jx:a	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   57: goto -42 -> 15
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	kc
    //   0	65	1	paramString	String
    //   0	65	2	paramkb	kb<?>
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	60	finally
    //   18	57	60	finally
  }
  
  /* Error */
  public int b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +9 -> 17
    //   11: iconst_0
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 24	com/flurry/sdk/kc:b	Lcom/flurry/sdk/jx;
    //   21: aload_1
    //   22: invokevirtual 79	com/flurry/sdk/jx:a	(Ljava/lang/Object;)Ljava/util/List;
    //   25: invokeinterface 108 1 0
    //   30: istore_2
    //   31: goto -18 -> 13
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	kc
    //   0	39	1	paramString	String
    //   12	19	2	i	int
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	34	finally
    //   17	31	34	finally
  }
  
  /* Error */
  public void b(String paramString, kb<?> paramkb)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: new 73	com/flurry/sdk/kq
    //   17: dup
    //   18: aload_2
    //   19: invokespecial 76	com/flurry/sdk/kq:<init>	(Ljava/lang/Object;)V
    //   22: astore_2
    //   23: aload_0
    //   24: getfield 24	com/flurry/sdk/kc:b	Lcom/flurry/sdk/jx;
    //   27: aload_1
    //   28: aload_2
    //   29: invokevirtual 84	com/flurry/sdk/jx:b	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   32: pop
    //   33: aload_0
    //   34: getfield 26	com/flurry/sdk/kc:c	Lcom/flurry/sdk/jx;
    //   37: aload_2
    //   38: aload_1
    //   39: invokevirtual 84	com/flurry/sdk/jx:b	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   42: pop
    //   43: goto -32 -> 11
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	kc
    //   0	51	1	paramString	String
    //   0	51	2	paramkb	kb<?>
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	46	finally
    //   14	43	46	finally
  }
  
  public List<kb<?>> c(String paramString)
  {
    for (;;)
    {
      ArrayList localArrayList;
      try
      {
        if (TextUtils.isEmpty(paramString))
        {
          paramString = Collections.emptyList();
          return paramString;
        }
        localArrayList = new ArrayList();
        paramString = b.a(paramString).iterator();
        if (!paramString.hasNext()) {
          break label93;
        }
        kb localkb = (kb)((kq)paramString.next()).get();
        if (localkb == null)
        {
          paramString.remove();
          continue;
        }
        localArrayList.add(localkb);
      }
      finally {}
      continue;
      label93:
      paramString = localArrayList;
    }
  }
  
  public void c()
  {
    try
    {
      b.a();
      c.a();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */