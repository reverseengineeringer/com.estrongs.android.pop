package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class dx
{
  private static final String a = dx.class.getSimpleName();
  private final Map<String, ay> b = Collections.synchronizedMap(new HashMap());
  private final kb<lg> c = new dx.1(this);
  private WeakReference<lf> d;
  private bh e;
  private h f;
  private g g;
  private gw h;
  private hg i;
  private File j;
  private jz<List<ay>> k;
  private String l;
  
  public dx()
  {
    kc.a().a("com.flurry.android.sdk.FlurrySessionEvent", c);
  }
  
  private df a(List<ay> paramList)
  {
    paramList = fd.a(paramList);
    if (paramList.isEmpty())
    {
      kg.a(3, a, "List of adLogs is empty");
      return null;
    }
    String str = js.a().d();
    List localList = fd.e();
    df localdf = new df();
    a = str;
    b = localList;
    c = paramList;
    f = false;
    d = System.currentTimeMillis();
    e = Integer.toString(jt.a());
    kg.a(3, a, "Got ad log request:" + localdf.toString());
    return localdf;
  }
  
  private void b(List<ay> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ay localay = (ay)paramList.next();
      b.put(localay.b(), localay);
    }
  }
  
  private void j()
  {
    try
    {
      df localdf = a(new ArrayList(b.values()));
      if (localdf != null) {
        i.a().g().a(localdf, j.a().i(), js.a().d(), "" + jt.a());
      }
      m();
      return;
    }
    finally {}
  }
  
  private void k()
  {
    try
    {
      kg.a(4, a, "Saving AdLog data.");
      k.a(new ArrayList(b.values()));
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  private void l()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_4
    //   3: getstatic 41	com/flurry/sdk/dx:a	Ljava/lang/String;
    //   6: ldc -21
    //   8: invokestatic 92	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   11: aload_0
    //   12: getfield 228	com/flurry/sdk/dx:k	Lcom/flurry/sdk/jz;
    //   15: invokevirtual 237	com/flurry/sdk/jz:a	()Ljava/lang/Object;
    //   18: checkcast 81	java/util/List
    //   21: astore_1
    //   22: aload_1
    //   23: ifnull +11 -> 34
    //   26: aload_0
    //   27: aload_1
    //   28: invokespecial 239	com/flurry/sdk/dx:b	(Ljava/util/List;)V
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: aload_0
    //   35: getfield 241	com/flurry/sdk/dx:j	Ljava/io/File;
    //   38: invokevirtual 246	java/io/File:exists	()Z
    //   41: ifeq -10 -> 31
    //   44: iconst_4
    //   45: getstatic 41	com/flurry/sdk/dx:a	Ljava/lang/String;
    //   48: ldc -8
    //   50: invokestatic 92	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   53: aload_0
    //   54: getfield 241	com/flurry/sdk/dx:j	Ljava/io/File;
    //   57: invokestatic 253	com/flurry/sdk/l:b	(Ljava/io/File;)Ljava/util/List;
    //   60: astore_1
    //   61: aload_1
    //   62: ifnull +8 -> 70
    //   65: aload_0
    //   66: aload_1
    //   67: invokespecial 239	com/flurry/sdk/dx:b	(Ljava/util/List;)V
    //   70: aload_0
    //   71: getfield 241	com/flurry/sdk/dx:j	Ljava/io/File;
    //   74: invokevirtual 256	java/io/File:delete	()Z
    //   77: pop
    //   78: aload_0
    //   79: invokespecial 183	com/flurry/sdk/dx:k	()V
    //   82: goto -51 -> 31
    //   85: astore_1
    //   86: aload_0
    //   87: monitorexit
    //   88: aload_1
    //   89: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	this	dx
    //   21	46	1	localList	List
    //   85	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	22	85	finally
    //   26	31	85	finally
    //   34	61	85	finally
    //   65	70	85	finally
    //   70	82	85	finally
  }
  
  private void m()
  {
    b.clear();
    k.b();
  }
  
  private void n()
  {
    f.a().a("native");
    f.a().b();
  }
  
  public ay a(String paramString)
  {
    ay localay = (ay)b.get(paramString);
    Object localObject = localay;
    if (localay == null)
    {
      paramString = new ay(paramString);
      localObject = paramString;
      if (b.size() < 32767)
      {
        b.put(paramString.b(), paramString);
        localObject = paramString;
      }
    }
    return (ay)localObject;
  }
  
  public void a()
  {
    f.a();
    i.a().d().a();
    i.a().e().a();
    js.a().b(new dx.13(this));
    js.a().b(new dx.2(this));
    js.a().b(new dx.3(this));
    n();
  }
  
  public void a(Context paramContext)
  {
    f.b();
    i.a().k().b();
    js.a().b(new dx.8(this));
    js.a().b(new dx.9(this));
    if (!jw.a().c())
    {
      i.a().d().c(paramContext);
      i.a().e().b(paramContext);
    }
  }
  
  public void a(lf paramlf, Context paramContext)
  {
    d = new WeakReference(paramlf);
    e = new bh();
    f = new h();
    g = new g();
    g.a();
    h = new gz();
    i = new ha();
    j = paramContext.getFileStreamPath(f());
    i.a().d().b();
    k = new jz(paramContext.getFileStreamPath(g()), ".yflurryadlog.", 1, new dx.6(this));
    l = fk.a(paramContext);
    js.a().b(new dx.7(this));
  }
  
  public void a(String paramString, bb parambb, boolean paramBoolean, Map<String, String> paramMap)
  {
    if (parambb == null) {}
    for (;;)
    {
      return;
      try
      {
        kg.a(3, a, "logAdEvent(" + paramString + ", " + parambb + ", " + paramBoolean + ", " + paramMap + ")");
        a(paramString).a(new ax(parambb.a(), paramBoolean, je.a().g(), paramMap));
      }
      finally {}
    }
  }
  
  public bh b()
  {
    return e;
  }
  
  public void b(Context paramContext)
  {
    if (!jw.a().c())
    {
      i.a().d().b(paramContext);
      i.a().e().a(paramContext);
    }
    js.a().b(new dx.10(this));
    js.a().b(new dx.11(this));
    js.a().b(new dx.12(this));
  }
  
  public g c()
  {
    return g;
  }
  
  public gw d()
  {
    return h;
  }
  
  public hg e()
  {
    return i;
  }
  
  String f()
  {
    return ".flurryadlog." + Integer.toString(js.a().d().hashCode(), 16);
  }
  
  String g()
  {
    return ".yflurryadlog." + Long.toString(lt.i(js.a().d()), 16);
  }
  
  public void h()
  {
    try
    {
      js.a().b(new dx.4(this));
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String i()
  {
    return l;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */