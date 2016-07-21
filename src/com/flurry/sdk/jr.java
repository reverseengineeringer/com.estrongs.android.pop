package com.flurry.sdk;

import android.content.Context;
import android.os.SystemClock;
import java.lang.ref.WeakReference;
import java.util.Map;

public class jr
{
  private static final String a = jr.class.getSimpleName();
  private final kb<lg> b = new jr.1(this);
  private WeakReference<lf> c;
  private volatile long d = 0L;
  private volatile long e = 0L;
  private volatile long f = -1L;
  private volatile long g = 0L;
  private volatile long h = 0L;
  private String i;
  private String j;
  private Map<String, String> k;
  
  public jr()
  {
    kc.a().a("com.flurry.android.sdk.FlurrySessionEvent", b);
    k = new jr.2(this);
  }
  
  private void b(lf paramlf, Context paramContext)
  {
    if ((paramlf == null) || (paramContext == null))
    {
      kg.a(3, a, "Flurry session id cannot be created.");
      return;
    }
    kg.a(3, a, "Flurry session id started:" + d);
    lg locallg = new lg();
    a = new WeakReference(paramContext);
    b = paramlf;
    c = lg.a.b;
    locallg.b();
  }
  
  public void a() {}
  
  public void a(Context paramContext)
  {
    long l1 = lh.a().c();
    if (l1 > 0L)
    {
      long l2 = g;
      g = (System.currentTimeMillis() - l1 + l2);
    }
  }
  
  public void a(lf paramlf, Context paramContext)
  {
    c = new WeakReference(paramlf);
    d = System.currentTimeMillis();
    e = SystemClock.elapsedRealtime();
    b(paramlf, paramContext);
    js.a().b(new jr.3(this));
  }
  
  public void a(String paramString)
  {
    try
    {
      i = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    try
    {
      k.put(paramString1, paramString2);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public String b()
  {
    return Long.toString(d);
  }
  
  public void b(Context paramContext)
  {
    f = (SystemClock.elapsedRealtime() - e);
  }
  
  public void b(String paramString)
  {
    try
    {
      j = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public long c()
  {
    return d;
  }
  
  public long d()
  {
    return e;
  }
  
  public long e()
  {
    return f;
  }
  
  public long f()
  {
    return g;
  }
  
  /* Error */
  public long g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 139	android/os/SystemClock:elapsedRealtime	()J
    //   5: aload_0
    //   6: getfield 48	com/flurry/sdk/jr:e	J
    //   9: lsub
    //   10: lstore_1
    //   11: lload_1
    //   12: aload_0
    //   13: getfield 56	com/flurry/sdk/jr:h	J
    //   16: lcmp
    //   17: ifle +17 -> 34
    //   20: aload_0
    //   21: lload_1
    //   22: putfield 56	com/flurry/sdk/jr:h	J
    //   25: aload_0
    //   26: getfield 56	com/flurry/sdk/jr:h	J
    //   29: lstore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: lload_1
    //   33: lreturn
    //   34: aload_0
    //   35: getfield 56	com/flurry/sdk/jr:h	J
    //   38: lconst_1
    //   39: ladd
    //   40: lstore_1
    //   41: aload_0
    //   42: lload_1
    //   43: putfield 56	com/flurry/sdk/jr:h	J
    //   46: goto -26 -> 20
    //   49: astore_3
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_3
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	jr
    //   10	33	1	l	long
    //   49	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	49	finally
    //   20	30	49	finally
    //   34	46	49	finally
  }
  
  public String h()
  {
    try
    {
      String str = i;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String i()
  {
    try
    {
      String str = j;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public Map<String, String> j()
  {
    try
    {
      Map localMap = k;
      return localMap;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */