package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class i
  implements kj
{
  private static final String a = i.class.getSimpleName();
  private final kb<jv> b = new i.1(this);
  private final kb<dp> c = new i.2(this);
  private o d;
  private z e;
  private q f;
  private w g;
  private k h;
  private dl i;
  private dk j;
  private m k;
  private bf l;
  private ab m;
  private File n;
  private File o;
  private jz<List<be>> p;
  private jz<List<af>> q;
  private cs r;
  
  private void A()
  {
    be localbe;
    try
    {
      kg.a(4, a, "Loading FreqCap data.");
      Object localObject1 = (List)p.a();
      if (localObject1 != null)
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localbe = (be)((Iterator)localObject1).next();
          l.a(localbe);
        }
      }
      if (!n.exists()) {
        break label158;
      }
    }
    finally {}
    kg.a(4, a, "Legacy FreqCap data found, converting.");
    Object localObject3 = l.a(n);
    if (localObject3 != null)
    {
      localObject3 = ((List)localObject3).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localbe = (be)((Iterator)localObject3).next();
        l.a(localbe);
      }
    }
    l.b();
    n.delete();
    t();
    for (;;)
    {
      return;
      label158:
      l.b();
    }
  }
  
  private void B()
  {
    for (;;)
    {
      try
      {
        boolean bool = m.a();
        if (!bool) {
          return;
        }
        kg.a(4, a, "Loading CachedAsset data.");
        Object localObject1 = (List)q.a();
        if (localObject1 != null)
        {
          localObject1 = ((List)localObject1).iterator();
          if (((Iterator)localObject1).hasNext())
          {
            af localaf = (af)((Iterator)localObject1).next();
            m.a(localaf);
            continue;
          }
          continue;
        }
        if (!o.exists()) {
          continue;
        }
      }
      finally {}
      kg.a(4, a, "Legacy CachedAsset data found, deleting.");
      o.delete();
    }
  }
  
  private dx a(lf paramlf)
  {
    if (paramlf == null) {
      return null;
    }
    return (dx)paramlf.c(dx.class);
  }
  
  public static i a()
  {
    try
    {
      i locali = (i)js.a().a(i.class);
      return locali;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  private void a(long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 133	com/flurry/sdk/i:m	Lcom/flurry/sdk/ab;
    //   6: invokevirtual 137	com/flurry/sdk/ab:a	()Z
    //   9: istore 5
    //   11: iload 5
    //   13: ifeq +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: iconst_3
    //   20: getstatic 53	com/flurry/sdk/i:a	Ljava/lang/String;
    //   23: ldc -80
    //   25: invokestatic 77	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   28: aload_0
    //   29: getfield 133	com/flurry/sdk/i:m	Lcom/flurry/sdk/ab;
    //   32: lload_1
    //   33: lload_3
    //   34: invokevirtual 178	com/flurry/sdk/ab:a	(JJ)V
    //   37: aload_0
    //   38: getfield 133	com/flurry/sdk/i:m	Lcom/flurry/sdk/ab;
    //   41: invokevirtual 180	com/flurry/sdk/ab:e	()V
    //   44: invokestatic 167	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   47: new 182	com/flurry/sdk/i$6
    //   50: dup
    //   51: aload_0
    //   52: invokespecial 183	com/flurry/sdk/i$6:<init>	(Lcom/flurry/sdk/i;)V
    //   55: invokevirtual 186	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   58: goto -42 -> 16
    //   61: astore 6
    //   63: aload_0
    //   64: monitorexit
    //   65: aload 6
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	i
    //   0	68	1	paramLong1	long
    //   0	68	3	paramLong2	long
    //   9	3	5	bool	boolean
    //   61	5	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	11	61	finally
    //   19	58	61	finally
  }
  
  private void b(Context paramContext)
  {
    if (paramContext.getPackageManager().resolveActivity(new Intent(paramContext, FlurryFullscreenTakeoverActivity.class), 0) == null) {
      kg.b(a, "com.flurry.android.FlurryFullscreenTakeoverActivity must be declared in manifest.");
    }
  }
  
  private dx v()
  {
    return a(lh.a().e());
  }
  
  private String w()
  {
    return ".flurryfreqcap." + Integer.toString(js.a().d().hashCode(), 16);
  }
  
  private String x()
  {
    return ".flurrycachedasset." + Integer.toString(js.a().d().hashCode(), 16);
  }
  
  private String y()
  {
    return ".yflurryfreqcap." + Long.toString(lt.i(js.a().d()), 16);
  }
  
  private String z()
  {
    return ".yflurrycachedasset" + Long.toString(lt.i(js.a().d()), 16);
  }
  
  public ay a(String paramString)
  {
    dx localdx = v();
    if (localdx != null) {
      return localdx.a(paramString);
    }
    return null;
  }
  
  public void a(Context paramContext)
  {
    lf.a(dx.class);
    d = new o();
    e = new z();
    f = new q();
    g = new w();
    h = new k();
    i = new dl();
    j = new dk();
    k = new m();
    l = new bf();
    m = new ab();
    r = null;
    kc.a().a("com.flurry.android.sdk.ActivityLifecycleEvent", b);
    kc.a().a("com.flurry.android.sdk.AdConfigurationEvent", c);
    n = paramContext.getFileStreamPath(w());
    o = paramContext.getFileStreamPath(x());
    p = new jz(paramContext.getFileStreamPath(y()), ".yflurryfreqcap.", 2, new i.3(this));
    q = new jz(paramContext.getFileStreamPath(z()), ".yflurrycachedasset", 1, new i.4(this));
    js.a().b(new i.5(this));
    b(paramContext);
  }
  
  public void a(String paramString, bb parambb, boolean paramBoolean, Map<String, String> paramMap)
  {
    dx localdx = v();
    if (localdx != null) {
      localdx.a(paramString, parambb, paramBoolean, paramMap);
    }
  }
  
  public void b()
  {
    kc.a().a(b);
    kc.a().a(c);
    if (e != null)
    {
      e.a();
      e = null;
    }
    f = null;
    g = null;
    h = null;
    i = null;
    if (d != null)
    {
      d.a();
      d = null;
    }
    if (j != null)
    {
      j.c();
      j = null;
    }
    k = null;
    r = null;
    lf.b(dx.class);
  }
  
  public z c()
  {
    return e;
  }
  
  public q d()
  {
    return f;
  }
  
  public w e()
  {
    return g;
  }
  
  public k f()
  {
    return h;
  }
  
  public dl g()
  {
    return i;
  }
  
  public o h()
  {
    return d;
  }
  
  public dk i()
  {
    return j;
  }
  
  public m j()
  {
    return k;
  }
  
  public bf k()
  {
    return l;
  }
  
  public ab l()
  {
    return m;
  }
  
  public cs m()
  {
    return r;
  }
  
  public bh n()
  {
    dx localdx = v();
    if (localdx != null) {
      return localdx.b();
    }
    return null;
  }
  
  public g o()
  {
    dx localdx = v();
    if (localdx != null) {
      return localdx.c();
    }
    return null;
  }
  
  public gw p()
  {
    dx localdx = v();
    if (localdx != null) {
      return localdx.d();
    }
    return null;
  }
  
  public hg q()
  {
    dx localdx = v();
    if (localdx != null) {
      return localdx.e();
    }
    return null;
  }
  
  public void r()
  {
    dx localdx = v();
    if (localdx != null) {
      localdx.h();
    }
  }
  
  public String s()
  {
    dx localdx = v();
    if (localdx != null) {
      return localdx.i();
    }
    return null;
  }
  
  public void t()
  {
    try
    {
      kg.a(4, a, "Saving FreqCap data.");
      l.b();
      p.a(l.a());
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void u()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 133	com/flurry/sdk/i:m	Lcom/flurry/sdk/ab;
    //   6: invokevirtual 137	com/flurry/sdk/ab:a	()Z
    //   9: istore_1
    //   10: iload_1
    //   11: ifne +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: iconst_4
    //   18: getstatic 53	com/flurry/sdk/i:a	Ljava/lang/String;
    //   21: ldc_w 417
    //   24: invokestatic 77	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   27: aload_0
    //   28: getfield 141	com/flurry/sdk/i:q	Lcom/flurry/sdk/jz;
    //   31: aload_0
    //   32: getfield 133	com/flurry/sdk/i:m	Lcom/flurry/sdk/ab;
    //   35: invokevirtual 419	com/flurry/sdk/ab:d	()Ljava/util/List;
    //   38: invokevirtual 414	com/flurry/sdk/jz:a	(Ljava/lang/Object;)V
    //   41: goto -27 -> 14
    //   44: astore_2
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_2
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	i
    //   9	2	1	bool	boolean
    //   44	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	10	44	finally
    //   17	41	44	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */