package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class aa
{
  private static final String b = aa.class.getSimpleName();
  final Map<String, af> a = new HashMap();
  private final Map<String, af> c = new LinkedHashMap();
  private final Map<String, am> d = new LinkedHashMap();
  private aa.a e = aa.a.a;
  private final ap<byte[]> f;
  private final long g;
  private final int h;
  
  aa(String paramString, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    f = new ap(new kx(), paramString, paramLong1, paramBoolean);
    g = paramLong2;
    if (Runtime.getRuntime().availableProcessors() > 1) {
      i = 2;
    }
    h = i;
  }
  
  private void a(af paramaf, al paramal)
  {
    if ((paramaf == null) || (paramal == null)) {}
    while (paramal.equals(paramaf.b())) {
      return;
    }
    kg.a(3, b, "Asset status changed for asset:" + paramaf.a() + " from:" + paramaf.b() + " to:" + paramal);
    paramaf.a(paramal);
    ae localae = new ae();
    a = paramaf.a();
    b = paramal;
    localae.b();
  }
  
  private void b(af paramaf)
  {
    if (paramaf == null) {}
    while ((TextUtils.isEmpty(paramaf.a())) || (a.containsKey(paramaf.a()))) {
      return;
    }
    kg.a(3, b, "Precaching: adding cached asset info from persisted storage: " + paramaf.a() + " asset exp: " + paramaf.c() + " saved time: " + paramaf.f());
    synchronized (a)
    {
      a.put(paramaf.a(), paramaf);
      return;
    }
  }
  
  private void c(af paramaf)
  {
    if (paramaf == null) {}
    do
    {
      return;
      ??? = d(paramaf);
    } while (al.d.equals(???));
    if ((al.c.equals(???)) || (al.b.equals(???))) {}
    for (;;)
    {
      synchronized (c)
      {
        if (!c.containsKey(paramaf.a())) {
          c.put(paramaf.a(), paramaf);
        }
        js.a().b(new aa.3(this));
        return;
      }
      kg.a(3, b, "Precaching: Queueing asset:" + paramaf.a());
      f.a().a("precachingDownloadRequested", 1);
      a(paramaf, al.b);
      synchronized (c)
      {
        c.put(paramaf.a(), paramaf);
      }
    }
  }
  
  private af d(String paramString)
  {
    if (!a()) {}
    while (TextUtils.isEmpty(paramString)) {
      return null;
    }
    for (;;)
    {
      af localaf;
      synchronized (a)
      {
        localaf = (af)a.get(paramString);
        paramString = localaf;
        if (localaf != null)
        {
          if (localaf.d())
          {
            kg.a(3, b, "Precaching: expiring cached asset: " + localaf.a() + " asset exp: " + localaf.c() + " device epoch" + System.currentTimeMillis());
            a(localaf.a());
            paramString = null;
          }
        }
        else {
          return paramString;
        }
      }
      d(localaf);
      localaf.e();
      paramString = localaf;
    }
  }
  
  private al d(af paramaf)
  {
    if (paramaf == null) {
      return al.a;
    }
    if (paramaf.d()) {
      return al.a;
    }
    if ((al.d.equals(paramaf.b())) && (!f.d(paramaf.a()))) {
      a(paramaf, al.f);
    }
    return paramaf.b();
  }
  
  private void e(af paramaf)
  {
    f.a().a("precachingDownloadStarted", 1);
    kg.a(3, b, "Precaching: Submitting for download: " + paramaf.a());
    ar localar = new ar(f, paramaf.a());
    localar.a(paramaf.a());
    localar.a(40000);
    localar.a(f);
    localar.a(new aa.4(this, paramaf));
    localar.d();
    synchronized (d)
    {
      d.put(paramaf.a(), localar);
      a(paramaf, al.c);
      return;
    }
  }
  
  private void f(af paramaf)
  {
    if (paramaf == null) {
      return;
    }
    synchronized (c)
    {
      c.remove(paramaf.a());
      return;
    }
  }
  
  private void m()
  {
    if (!b()) {
      return;
    }
    kg.a(3, b, "Precaching: Download files");
    for (;;)
    {
      af localaf;
      synchronized (c)
      {
        Iterator localIterator = c.values().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localaf = (af)localIterator.next();
        if (f.d(localaf.a()))
        {
          kg.a(3, b, "Precaching: Asset already cached.  Skipping download:" + localaf.a());
          localIterator.remove();
          a(localaf, al.d);
        }
      }
      if (!al.c.equals(d(localaf)))
      {
        if (jq.a().b(this) >= h)
        {
          kg.a(3, b, "Precaching: Download limit reached");
          return;
        }
        e(localaf);
      }
    }
    kg.a(3, b, "Precaching: No more files to download");
  }
  
  private void n()
  {
    kg.a(3, b, "Precaching: Cancelling in-progress downloads");
    synchronized (d)
    {
      Iterator localIterator1 = d.entrySet().iterator();
      if (localIterator1.hasNext()) {
        ((am)((Map.Entry)localIterator1.next()).getValue()).e();
      }
    }
    d.clear();
    synchronized (c)
    {
      Iterator localIterator2 = c.entrySet().iterator();
      while (localIterator2.hasNext())
      {
        af localaf = (af)((Map.Entry)localIterator2.next()).getValue();
        if (!al.d.equals(d(localaf)))
        {
          kg.a(3, b, "Precaching: Download cancelled: " + localaf.f());
          a(localaf, al.e);
        }
      }
    }
  }
  
  private void o()
  {
    Iterator localIterator = j().iterator();
    while (localIterator.hasNext())
    {
      af localaf = (af)localIterator.next();
      if (!al.d.equals(d(localaf)))
      {
        kg.a(3, b, "Precaching: expiring cached asset: " + localaf.a() + " asset exp: " + localaf.c() + " device epoch: " + System.currentTimeMillis());
        a(localaf.a());
      }
    }
  }
  
  public void a(af paramaf)
  {
    try
    {
      b(paramaf);
      return;
    }
    finally
    {
      paramaf = finally;
      throw paramaf;
    }
  }
  
  public void a(String paramString)
  {
    if (!a()) {}
    while (TextUtils.isEmpty(paramString)) {
      return;
    }
    synchronized (a)
    {
      a.remove(paramString);
      f.c(paramString);
      return;
    }
  }
  
  /* Error */
  public boolean a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 347	com/flurry/sdk/aa$a:b	Lcom/flurry/sdk/aa$a;
    //   5: aload_0
    //   6: getfield 54	com/flurry/sdk/aa:e	Lcom/flurry/sdk/aa$a;
    //   9: invokevirtual 348	com/flurry/sdk/aa$a:equals	(Ljava/lang/Object;)Z
    //   12: ifne +18 -> 30
    //   15: getstatic 350	com/flurry/sdk/aa$a:c	Lcom/flurry/sdk/aa$a;
    //   18: aload_0
    //   19: getfield 54	com/flurry/sdk/aa:e	Lcom/flurry/sdk/aa$a;
    //   22: invokevirtual 348	com/flurry/sdk/aa$a:equals	(Ljava/lang/Object;)Z
    //   25: istore_1
    //   26: iload_1
    //   27: ifeq +9 -> 36
    //   30: iconst_1
    //   31: istore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: iload_1
    //   35: ireturn
    //   36: iconst_0
    //   37: istore_1
    //   38: goto -6 -> 32
    //   41: astore_2
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_2
    //   45: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	this	aa
    //   25	13	1	bool	boolean
    //   41	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	41	finally
  }
  
  public boolean a(String arg1, as paramas, long paramLong)
  {
    if (!a()) {}
    while ((TextUtils.isEmpty(???)) || (paramas == null) || ((!as.c.equals(paramas)) && (!as.b.equals(paramas)))) {
      return false;
    }
    af localaf = d(???);
    if (localaf == null) {
      paramas = new af(???, paramas, paramLong);
    }
    for (;;)
    {
      synchronized (a)
      {
        a.put(paramas.a(), paramas);
        c(paramas);
        return true;
      }
      if (!al.d.equals(d(localaf))) {
        c(localaf);
      }
    }
  }
  
  public al b(String paramString)
  {
    if (!a()) {
      return al.a;
    }
    return d(d(paramString));
  }
  
  public boolean b()
  {
    try
    {
      boolean bool = aa.a.b.equals(e);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public aq.b c(String paramString)
  {
    if (!a()) {}
    while (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return f.a(paramString);
  }
  
  public boolean c()
  {
    try
    {
      boolean bool = aa.a.c.equals(e);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public List<af> d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 372	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 373	java/util/ArrayList:<init>	()V
    //   9: astore_2
    //   10: aload_0
    //   11: getfield 41	com/flurry/sdk/aa:a	Ljava/util/Map;
    //   14: astore_1
    //   15: aload_1
    //   16: monitorenter
    //   17: aload_2
    //   18: aload_0
    //   19: getfield 41	com/flurry/sdk/aa:a	Ljava/util/Map;
    //   22: invokeinterface 276 1 0
    //   27: invokeinterface 377 2 0
    //   32: pop
    //   33: aload_1
    //   34: monitorexit
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_2
    //   38: areturn
    //   39: astore_2
    //   40: aload_1
    //   41: monitorexit
    //   42: aload_2
    //   43: athrow
    //   44: astore_1
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_1
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	aa
    //   44	4	1	localObject1	Object
    //   9	29	2	localArrayList	ArrayList
    //   39	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   17	35	39	finally
    //   40	42	39	finally
    //   2	17	44	finally
    //   42	44	44	finally
  }
  
  /* Error */
  public void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 270	com/flurry/sdk/aa:b	()Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: iconst_3
    //   15: getstatic 31	com/flurry/sdk/aa:b	Ljava/lang/String;
    //   18: ldc_w 381
    //   21: invokestatic 127	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   24: aload_0
    //   25: getfield 64	com/flurry/sdk/aa:f	Lcom/flurry/sdk/ap;
    //   28: invokevirtual 383	com/flurry/sdk/ap:a	()V
    //   31: invokestatic 186	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   34: new 385	com/flurry/sdk/aa$1
    //   37: dup
    //   38: aload_0
    //   39: invokespecial 386	com/flurry/sdk/aa$1:<init>	(Lcom/flurry/sdk/aa;)V
    //   42: invokevirtual 193	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   45: aload_0
    //   46: getstatic 347	com/flurry/sdk/aa$a:b	Lcom/flurry/sdk/aa$a;
    //   49: putfield 54	com/flurry/sdk/aa:e	Lcom/flurry/sdk/aa$a;
    //   52: goto -41 -> 11
    //   55: astore_2
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_2
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	aa
    //   6	2	1	bool	boolean
    //   55	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	55	finally
    //   14	52	55	finally
  }
  
  /* Error */
  public void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 209	com/flurry/sdk/aa:a	()Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: iconst_3
    //   15: getstatic 31	com/flurry/sdk/aa:b	Ljava/lang/String;
    //   18: ldc_w 388
    //   21: invokestatic 127	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   24: aload_0
    //   25: invokespecial 390	com/flurry/sdk/aa:n	()V
    //   28: aload_0
    //   29: getfield 64	com/flurry/sdk/aa:f	Lcom/flurry/sdk/ap;
    //   32: invokevirtual 391	com/flurry/sdk/ap:b	()V
    //   35: aload_0
    //   36: getstatic 52	com/flurry/sdk/aa$a:a	Lcom/flurry/sdk/aa$a;
    //   39: putfield 54	com/flurry/sdk/aa:e	Lcom/flurry/sdk/aa$a;
    //   42: goto -31 -> 11
    //   45: astore_2
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_2
    //   49: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	this	aa
    //   6	2	1	bool	boolean
    //   45	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	45	finally
    //   14	42	45	finally
  }
  
  /* Error */
  public void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 209	com/flurry/sdk/aa:a	()Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokevirtual 393	com/flurry/sdk/aa:c	()Z
    //   18: ifeq -7 -> 11
    //   21: iconst_3
    //   22: getstatic 31	com/flurry/sdk/aa:b	Ljava/lang/String;
    //   25: ldc_w 395
    //   28: invokestatic 127	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   31: invokestatic 186	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   34: new 397	com/flurry/sdk/aa$2
    //   37: dup
    //   38: aload_0
    //   39: invokespecial 398	com/flurry/sdk/aa$2:<init>	(Lcom/flurry/sdk/aa;)V
    //   42: invokevirtual 193	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   45: aload_0
    //   46: getstatic 347	com/flurry/sdk/aa$a:b	Lcom/flurry/sdk/aa$a;
    //   49: putfield 54	com/flurry/sdk/aa:e	Lcom/flurry/sdk/aa$a;
    //   52: goto -41 -> 11
    //   55: astore_2
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_2
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	aa
    //   6	2	1	bool	boolean
    //   55	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	55	finally
    //   14	52	55	finally
  }
  
  public void h()
  {
    if (!a()) {
      return;
    }
    Iterator localIterator = j().iterator();
    while (localIterator.hasNext()) {
      a(((af)localIterator.next()).a());
    }
    f.c();
  }
  
  public void i()
  {
    if (!a()) {}
    for (;;)
    {
      return;
      Iterator localIterator = j().iterator();
      while (localIterator.hasNext()) {
        d((af)localIterator.next());
      }
    }
  }
  
  public List<af> j()
  {
    synchronized (a)
    {
      ArrayList localArrayList = new ArrayList(a.values());
      return localArrayList;
    }
  }
  
  public List<af> k()
  {
    i();
    return j();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */